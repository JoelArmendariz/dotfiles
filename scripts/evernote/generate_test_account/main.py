import subprocess
import os
import sys


def generate_email_with_account_number(account_number):
    return "jarmendariz+ion" + account_number + "@evernote.com"


account_number_override = sys.argv[-1] if len(sys.argv) > 1 else None

dir_path = os.path.dirname(os.path.realpath(__file__))

with open(dir_path + "/current_account_number.txt", "r") as f:
    current_account_number = f.read()

new_account_number = account_number_override or str(int(current_account_number) + 1)
generated_email = generate_email_with_account_number(new_account_number)
subprocess.check_call("echo " + generated_email + " | pbcopy", shell=True)

with open(dir_path + "/current_account_number.txt", "w") as f:
    f.write(new_account_number)

print("Copied " + generated_email + " to clipboard")
