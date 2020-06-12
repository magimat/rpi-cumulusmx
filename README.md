# rpi-cumulusmx

docker run --name cumulus -d -p 8998:8998 -v $PWD/Cumulus.ini:/CumulusMX/Cumulus.ini -v $PWD/data:/CumulusMX/data -v $PWD/datafile.csv:/CumulusMX/datafile.csv  magimat/rpi-cumulusmx
