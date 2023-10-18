import sys
from pathlib import Path

p = Path(__file__).with_name("account_number.json")
with p.open("r") as f:
    account_number = int(f.read())

try:
    user_defined_account_number = sys.argv[1]
    if user_defined_account_number:
        account_number = int(user_defined_account_number)
except Exception:
    pass

print(f"joel+{account_number}@kindhealth.co")

with p.open("w") as f:
    f.write(str(account_number + 1))
