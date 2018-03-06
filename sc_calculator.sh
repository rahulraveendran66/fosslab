clear
s=0
i="y"

echo " Enter one no."
read a
echo "Enter second no."
read b
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read opt
case $opt in
    1)s=`expr $a + $b`
     echo "Sum ="$s;;
        2)s=`expr $a - $b`
     echo "Difference = "$s;;
    3)s=`expr $a \* $b`
     echo "Product = "$s;;
    4)if [ b==0 ] 
	 then
		echo "divided by zero is not possible"
	else
     	 s=`expr $a / $b`
    	 echo "Quotient = "$s
	fi;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done    


