#!/bin/bash

cat << "EOF"
 _                              ____   _____ 
| |                            / __ \ / ____|
| |     __ _ _ __ ___   __ _  | |  | | (___  
| |    / _\ | '_ ` _ \ / _` | | |  | |\___ \ 
| |___| (_| | | | | | | (_| | | |__| |____) |
|______\__,_|_| |_| |_|\__,_|  \____/|_____/

       _,.
     ,` -.)
    '( _/'-\\-.               
   /,|`--._,-^|            ,     
   \_| |`-._/||          ,'|       
     |  `-, / |         /  /      
     |     || |        /  /       
      `r-._||/   __   /  /  
  __,-<_     )`-/  `./  /
 '  \   `---'   \   /  / 
     |           |./  /  
     /           //  /     
 \_/' \         |/  /         
  |    |   _,^-'/  /              
  |    , ``  (\/  /_        
   \,.->._    \X-=/^         
   (  /   `-._//^`  
    `Y-.____(__}              
     |     {__)           
           ()`

EOF

echo "* What is the Default Gateway ip address for eth3? (Use ipconfig to get it)"
read x
echo "* What is the Subnet Mask for eth3? (Use ipconfig to get it)"
read y
z=0

echo "Enter q to quit"

while [ $z != 'q' ] 
do 
echo "* What is the ip address you with to route to?"
read z
route add $z MASK $y $x -p

done

netstat -rn
echo "Thank you for using eth-routing tool. Have a good day"
