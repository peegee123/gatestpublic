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
echo "cd terraform/config && terraform init && cd -"
cd terraform/config && terraform init && cd -
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
echo "ccd terraform/config && terraform plan -out=tfplan -no-color &> tpf1.txt && cd -"
cd terraform/config && terraform plan -out=tfplan -no-color &> tpf1.txt && cd -
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
echo "cd terraform/config && terraform apply -auto-approve && cd -"
cd terraform/config && terraform apply -auto-approve && cd -
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

