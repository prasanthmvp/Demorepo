#! /usr/bin/bash

echo " welcome - The ABC Shopping  Billing portal "

read -p "ENTER THE NAME OF THE CUSTOMER: " a
read -p "ENTER THE MOBILE NUMBER OF CUSTOMER: " b
read -p "Enter Total Number Of Item Purchased: " c

touch bill.txt

while (( "$c" == 1 ))

do

 echo " TAX WILL BE 10 PERCENTAGE "
 read -p "ENTER THE ITEM NAME: " itn1
 read -p "ENTER THE ITEM PRICE: " pri1

echo "Total Without Tax = $pri1"
k=$(( pri1 + pri1 * 10 / 100 ))
echo "THE AMOUNT TO BE PAID $k"

echo "BILL FOR SINGLE ITEM" >> bill.txt
echo "CUSTOMER NAME : $a " >> bill.txt 
echo "CUSTOMER MOB. NUMBER : $b" >> bill.txt 
echo "######################################"

echo " ITEM NAME AND PRICE : $itn1 $pri1 " >> bill.txt 
echo "AMOUNT WITH TAX : $k" >> bill.txt && break
done



while (( "$c" ==  2 ))

do
 echo " TAX WILL BE 20 PERCENTAGE "
 read -p "ENTER THE ITEM NAME: " itn1
 read -p "ENTER THE ITEM PRICE: " pri1
 read -p "ENTER THE ITEM NAME: " itn2
 read -p "ENTER THE ITEM PRICE: " pri2
echo "Total Without tax = `expr $pri1 + $pri2`"
r=$(( (pri1 + pri2) + (pri1 + pri2) * 20 / 100 )) 

echo "The AMOUNT TO BE PAID WITH TAX $r"

echo "BILL FOR TWO ITEMS" >> bill.txt
echo "CUSTOMER NAME : $a " >> bill.txt 
echo "CUSTOMER MOB. NUMBER : $b" >> bill.txt 
echo "######################################"

echo " ITEM NAME AND PRICE : $itn1 $pri1 " >> bill.txt 
echo " ITEM NAME AND PRICE : $itn2 $pri2 " >> bill.txt 
echo "AMOUNT WITH TAX : $r" >> bill.txt && break
done

while (( "$c" ==  3 ))

do
 echo " TAX WILL BE 20 PERCENTAGE "
 read -p "ENTER THE ITEM NAME: " itn1
 read -p "ENTER THE ITEM PRICE: " pri1
 read -p "ENTER THE ITEM NAME: " itn2
 read -p "ENTER THE ITEM PRICE: " pri2
 read -p "ENTER THE ITEM NAME: " itn3
 read -p "ENTER THE ITEM PRICE: " pri3

echo "Total Without tax = `expr $pri1 + $pri2 + $pri3`"
w=$(( (pri1 + pri2 + pri3) + (pri1 + pri2 + pri3) * 20 / 100 )) 

echo "The AMOUNT TO BE PAID WITH TAX $w"

echo "BILL FOR THREE ITEMS" >> bill.txt
echo "CUSTOMER NAME : $a " >> bill.txt 
echo "CUSTOMER MOB. NUMBER : $b" >> bill.txt 
echo "######################################"

echo " ITEM NAME AND PRICE : $itn1 $pri1 " >> bill.txt 
echo " ITEM NAME AND PRICE : $itn2 $pri2 " >> bill.txt 
echo " ITEM NAME AND PRICE : $itn3 $pri3 " >> bill.txt 
echo "AMOUNT WITH TAX : $w" >> bill.txt && break
done

