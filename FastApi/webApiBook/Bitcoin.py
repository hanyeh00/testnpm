import json

import requests
url="http://127.0.0.1:8000/movies"

#url="https://api.coindesk.com/v1/bpi/currentprice.json"
response=requests.get(url)
data=json.loads(response.content.decode("utf_8"))

print(data)
print(f'films of year2022 are:\n   {data[2]}')

