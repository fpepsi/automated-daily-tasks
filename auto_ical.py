import subprocess

applescript_path = "/Calendar Download.scpt"

try:
    result = subprocess.run(["osascript", applescript_path], capture_output=True, text=True, check=True)
    print("AppleScript Output:", result.stdout)
except subprocess.CalledProcessError as e:
    print("Error executing AppleScript:", e.stderr)
