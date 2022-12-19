#! /bin/bash

# Old content is deleted
echo "" > tesla.log

vid=29583758204
token=30ab56c57d37f244db35a23c4b
url=https://owner-api.teslamotors.com/api/1/vehicles/$vid/data_request/drive_state

# This is a loop that will run forever. It will get the speed of the car and the date and time and
# write it to a file called tesla.log.
while [ TRUE ]
do
    speed=$(curl -s -X GET $url -H "Authorization: Bearer $token"  | jq '.response | .speed')
    date=$(date)
    
    echo "$speed $date" >> tesla.log
done