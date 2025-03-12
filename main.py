import os
import requests
import json
from dotenv import load_dotenv
from datetime import datetime
import pytz
import smtplib
import base64
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

# procedure obtain weather forecast
load_dotenv()
wappid = os.environ.get("WEATHER_APP_ID")
my_email = os.environ.get("MY_EMAIL")
my_pass = os.environ.get("MY_PASS")

# location parameters
city = "Dover, MA"
lat = 42
lon = -71

# Get the current time in EST
est_tz = pytz.timezone("US/Eastern")
now = datetime.now(est_tz)
date_today = now.strftime("%m-%d-%y")

def format_date(date):
    date_obj = datetime.strptime(date, "%Y-%m-%d %H:%M:%S") # convert to datetime obj
    date_obj = pytz.utc.localize(date_obj)  # Mark as UTC
    EST_date = date_obj.astimezone(est_tz).strftime("%m-%d-%y %I:%M %p") # find the EST equivalent time in am/pm
    return EST_date


def encode_image_to_base64(image_path):
    with open(image_path, "rb") as img_file:
        return base64.b64encode(img_file.read()).decode('utf-8')
    

# for weather app debug go to https://openweathermap.org/api
parameters = {
    "lat": lat,
    "lon": lon,
    "appid": wappid,
    "cnt": 8,
    "units": "imperial",
}

# procedure to generate weather file
try:
    with open(f"weather_{date_today}.json", "r") as file:
        weather_data = json.load(file)
except FileNotFoundError:
    response = requests.get("https://api.openweathermap.org/data/2.5/forecast", params=parameters)
    response.raise_for_status()
    weather_data = response.json()
    with open(f"weather_{date_today}.json", "w") as file:
        json.dump(weather_data, file, indent=4)

# calculates forecast EST time and confirms forecast date matches query date
query_date = format_date(weather_data['list'][0]['dt_txt'])

# procedure to add forecast to email message
if query_date[:8] != date_today:
    message = "Query date is different from today's date!"
    email_body = f'<html><body><p>{message}</p>'
else:
    email_body = f"This is the weather forecast:\n<html><body>\n"
    for forecast in weather_data['list']:
        icon_file = f"weather_icon_{forecast['weather'][0]['icon']}@2x.png"
        weather_icon_base64 = encode_image_to_base64(icon_file)
        weather_icon_html = f'<img src="data:image/png;base64,{weather_icon_base64}" width="20" height="20">'
        hour = format_date(forecast['dt_txt'])[9:]
        paragraph = f"{hour}: {weather_icon_html}{forecast['main']['temp']:.0f}F {forecast['weather'][0]['description']} with gusts up to {forecast['wind']['gust']:.0f}\n"
        email_body += f'<p>{paragraph}</p>'

email_body += "\n\n"

# procedure to add daily calendar to email message
with open('Calendar_Events.txt','r') as file:
    for line in file:  # Iterating directly over the file (better than readlines())
        clean_line = line.strip()  # Remove leading/trailing whitespace
        email_body += f'<p>{clean_line}</p>'  # Add HTML paragraph

email_body += "</body></html>"

# Create the email message
msg = MIMEMultipart()
msg['From'] = my_email
msg['To'] = ", ".join(["fbethlem@aol.com", "jem6698@gmail.com"])
msg['Subject'] = f"Today is {date_today} - Your morning briefing attached"
msg.attach(MIMEText(email_body, 'html'))

with smtplib.SMTP_SSL("smtp.gmail.com", 465) as connection:
    connection.login(my_email, my_pass)
    connection.sendmail(from_addr=my_email, to_addrs="fbethlem@aol.com", msg=msg.as_string())
