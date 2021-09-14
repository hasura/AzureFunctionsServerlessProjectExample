terraform destroy \
  -var 'server=graphinserver' \
  -var 'username='$PUSERNAME'' \
  -var 'password='$PPASSWORD'' \
  -var 'pgdatabase=graphindb' \
  -var 'apiport=8080' \
  -auto-approve

terraform destroy \
  -var 'server=graphinserver' \
  -var 'username='$PUSERNAME'' \
  -var 'password='$PPASSWORD'' \
  -var 'pgdatabase=graphindb' \
  -var 'apiport=8080' \
  -auto-approve