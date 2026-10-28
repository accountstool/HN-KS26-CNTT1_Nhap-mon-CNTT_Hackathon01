#Script: auto_report.sh
#Tac Gia : Trần Mạnh Hoa
# Ngay tao : 28/10/2026

dir_input=./logs/course.log
dir_output=./logs/daily_report.txt
echo "Dang loc log..."

echo "===BAO CAO LOI===" > $dir_output
cat $dir_output | grep -E "ERROR" >> $dir_input
echo "Hoan thanh"