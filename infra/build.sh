terraform init
terraform apply \
   -var 'server=graphinserver' \
   -var 'username='$PUSERNAME'' \
   -var 'password='$PPASSWORD'' \
   -var 'pgdatabase=graphindb' \
   -var 'apiport=8080'

