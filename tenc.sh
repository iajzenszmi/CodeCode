
# set -e to exit if the time provided by argument 1 is not valid for date.
# The variable stop_date will store the seconds since 1970-01-01 00:00:00
# UTC, according to the date specified by -d "$1".
set -e
stop_date=$(date -d "$1" "+%s")
set +e

echo -e "Starting at $(date")"
echo -e "Finishing at $(date -d "$1")"
      date | espeak
       i="0"
# set j = 99999999999999
# Repeat the loop while the current date is less than stop_date
# while [ $(date "+%s") -lt $(date -d "$1") ]; do
  while [ $i -lt 9999 ]; do
     sleep 2m
#     wait  9999999 
      date | espeak
      
    # your commands that will run until stop_date

    done 
