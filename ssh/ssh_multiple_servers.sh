choice=1
keys_dir=D:/devops-automation/keys 
while [ $choice!=0 ]; do
  echo ""
  echo 1. uber dev services 
  echo 2. uber qa services 
  echo 3. pickme staging frontend 
  echo 4. pickme staging backend 
  echo ""
  echo 0. exit
  echo ""
  echo -n "Select: "
  read choice 
  case $choice in
    1) echo "uber dev services"; ssh root@12.23.34.45 -i $keys_dir/uber/Dev_Key;;
    2) echo "uber dev services"; ssh ec2-user@12.11.34.11 -i $keys_dir/uber/QA_Key;;
    3) echo "pickme staging frontend"; ssh admin@51.23.34.45 -i $keys_dir/pickme/Pickme.pem;;
    4) echo "pickme staging backend"; ssh azure-user@32.11.34.11 -i $keys_dir/pickme/Pickme.pem;;
    *) echo "Cyaa"; exit 0 ;;
  esac
done




