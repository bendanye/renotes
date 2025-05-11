import os
import sys
import datetime
import webbrowser

from random_note import random_note

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))


# Logging function
def log(message):
    now = datetime.datetime.now()
    formatted_time = now.strftime("%Y-%m-%d %H:%M:%S")
    with open(os.path.join(SCRIPT_DIR, "random.log"), "a") as log_file:
        log_file.write(f"{formatted_time},{message}\n")


# Call random function from random.py
arg = sys.argv[1] if len(sys.argv) > 1 else ""
result = random_note(arg)

# Log the result
log(result)

# Open in browser
webbrowser.open(result)
