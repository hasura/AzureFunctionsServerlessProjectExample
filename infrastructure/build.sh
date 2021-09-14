terraform init
terraform apply \
   -var 'server=graphinserver' \
   -var 'username='$PUSERNAME'' \
   -var 'password='$PPASSWORD'' \
   -var 'pgdatabase=graphindb' \
   -var 'apiport=8080' \
   -auto-approve
   
hasura migrate apply --database-name default
hasura seeds apply --database-name default
hasura metadata apply
hasura console
