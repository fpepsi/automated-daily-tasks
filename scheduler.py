import os
from dotenv import load_dotenv
import schedule
import time
import pytz
import subprocess
from datetime import datetime

# Define Eastern Timezone
eastern = pytz.timezone('US/Eastern')

load_dotenv()
# Define the script paths
auto_ical_script = os.environ.get("AUTO_ICAL")
main_script = os.environ.get("AUTO_MAIN")

# Function to run the first script (auto_ical.py)
def run_auto_ical():
    print(f"Running auto_ical.py at {datetime.now(eastern).strftime('%Y-%m-%d %I:%M %p %Z')}")
    subprocess.run(["python3", auto_ical_script])

# Function to run the second script (main.py)
def run_main():
    print(f"Running main.py at {datetime.now(eastern).strftime('%Y-%m-%d %I:%M %p %Z')}")
    subprocess.run(["python3", main_script])

# Schedule tasks
schedule.every().day.at("00:05", eastern).do(run_auto_ical)  # Run auto_ical.py at 12:05 AM ET
schedule.every().day.at("00:30", eastern).do(run_main)  # Run main.py at 1:00 AM ET

# Keep the script running to check for scheduled tasks
while True:
    schedule.run_pending()
    time.sleep(300)  # Wait for a minute before checking again
