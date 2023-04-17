#/bin/bash
RESULT="'wget -qO- http://localhost:8090'"
wget -q localhost:8090
if [ $? -eq 0 ] 
then 
    echo 'OK - SERVICO NO AR!'
elif [[ $RESULT == *"Number"* ]]
then 
    echo 'OK - NUMBER OF VISITS'
    echo $RESULT
else
    echo 'NOT OK - NUMBER OF VISITS'
    exit 1
fi