echo "enter new file name: ";
read file_name;
touch $file_name;
echo "$file_name is created";
vim $file_name;
echo "date of creation = $(date +"%H:%M:%S")";
