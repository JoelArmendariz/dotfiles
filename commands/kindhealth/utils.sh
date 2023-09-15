function new_test_account() {
  python ~/.config/scripts/kindhealth/create_test_account/create_test_account.py $1 | pbcopy
  echo 'New account copied!'
}
