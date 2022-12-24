import subprocess
import os
import sys

dir = os.path.dirname(os.path.realpath(__file__))
account_number_override = sys.argv[-1] if len(sys.argv) > 1 else None


def generate_email_with_account_number(account_number):
    return f"jarmendariz+ion{account_number}@evernote.com"


with open(f"{dir}/current_account_number.txt", "r") as f:
    current_account_number = f.read()

new_account_number = account_number_override or str(int(current_account_number) + 1)
generated_email = generate_email_with_account_number(new_account_number)
subprocess.check_call(f"echo {generated_email} | pbcopy", shell=True)

with open(f"{dir}/current_account_number.txt", "w") as f:
    f.write(new_account_number)

print(f"Copied {generated_email} to clipboard")
