import subprocess

applescript_path = "/Users/fabiobethlem/Documents/Work/Courses/Udemy_100_Days_Python/capstone_projects/automated-daily-tasks/Calendar Download.scpt"

try:
    result = subprocess.run(["osascript", applescript_path], capture_output=True, text=True, check=True)
    print("AppleScript Output:", result.stdout)
except subprocess.CalledProcessError as e:
    print("Error executing AppleScript:", e.stderr)
