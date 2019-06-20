name=$1
curl "http://express.heartrails.com/api/json?method=getStations&line=${name}" | jq '.response.station[].name'
