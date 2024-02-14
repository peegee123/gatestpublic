#!/bin/zsh

# 
# ./tfclean.sh
# 
# echo "At start after running ./tfclean.sh"
# echo "-----------------------------------"
# 
# echo "Here is the top level dir:"
# ls -lart 
# 
# echo "Here is the terraform working dir:"
# ls -lart terraform/config
# 
# 
# terraform -chdir=terraform/config init
# 
# 
# echo "After terraform init"
# echo "---------------------"
# 
# echo "Here is the top level dir:"
# ls -lart 
# 
# echo "Here is the terraform working dir:"
# ls -lart terraform/config
# 
# 
# terraform -chdir=terraform/config plan -out=tfplan -no-color &> terraform/config/tpf1.txt
# 
# 
# echo "After terraform plan"
# echo "---------------------"
# 
# echo "Here is the top level dir:"
# ls -lart 
# 
# echo "Here is the terraform working dir:"
# ls -lart terraform/config
# 
# echo "Here is the output from terraform plan (Note - no color):"
# cat terraform/config/my_folder/my_file.txt
# 
# 
# 
# terraform -chdir=terraform/config apply -auto-approve
# 
# 
# echo "After terraform apply"
# echo "---------------------"
# 
# echo "Here is the top level dir:"
# ls -lart 
# 
# echo "Here is the terraform working dir:"
# ls -lart terraform/config
# 
# 
# echo "Here is the file created by terraform:"
# cat terraform/config/my_folder/my_file.txt
# 
# 
# 




#!/bin/zsh

# 
# ./tfclean.sh
# ls -lart 
# ls -lart terraform/config
# 
# cd terraform/config && terraform init && cd -
# ls -lart 
# ls -lart terraform/config
# 
# cd terraform/config && terraform plan -out=tfplan -no-color &> tpf1.txt && cd -
# cat terraform/config/tpf1.txt
# cd terraform/config && terraform apply -auto-approve && cd -
# 
# echo "All done"
# 
# echo "Here is the top level dir:"
# ls -lart 
# 
# 
# echo "Here is the terraform working dir:"
# ls -lart terraform/config
# 
# 
# echo "Here is the output from terraform plan (Note - no color):"
# cat terraform/config/my_folder/my_file.txt
# 
# 
# echo "Here is the file created by terraform:"
# cat terraform/config/my_folder/my_file.txt
# 
# 


./tfclean.sh

echo ""
echo "At start after running ./tfclean.sh"
echo "-----------------------------------"
echo ""

echo ""
echo "Here is the top level dir:"
echo ""
ls -lart 

echo ""
echo "Here is the terraform working dir:"
echo ""
ls -lart terraform/config


echo ""
echo ""
echo "About to do this:"
echo "terraform -chdir=terraform/config init"
terraform -chdir=terraform/config init
echo ""


echo ""
echo "After terraform init"
echo "---------------------"
echo ""

echo ""
echo "Here is the top level dir:"
echo ""
ls -lart 

echo ""
echo "Here is the terraform working dir:"
echo ""
ls -lart terraform/config


echo ""
echo ""
echo "About to do this:"
echo "terraform -chdir=terraform/config plan -out=tfplan -no-color &> terraform/config/tpf1.txt"
terraform -chdir=terraform/config plan -out=tfplan -no-color &> terraform/config/tpf1.txt
echo ""


echo ""
echo "After terraform plan"
echo "---------------------"
echo ""

echo ""
echo "Here is the top level dir:"
echo ""
ls -lart 

echo ""
echo "Here is the terraform working dir:"
echo ""
ls -lart terraform/config

echo ""
echo "Here is the output from terraform plan (Note - no color):"
echo ""
cat terraform/config/tpf1.txt

echo ""
echo "About to do this:"
echo "terraform -chdir=terraform/config apply -auto-approve"
terraform -chdir=terraform/config apply -auto-approve
echo ""


echo ""
echo "After terraform apply"
echo "---------------------"
echo ""

echo ""
echo "Here is the top level dir:"
echo ""
ls -lart 

echo ""
echo "Here is the terraform working dir:"
echo ""
ls -lart terraform/config


echo ""
echo "Here is the file created by terraform:"
echo ""
cat terraform/config/my_folder/my_file.txt

echo ""
echo ""




