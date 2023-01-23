import requests

url = "https://apis.digital.gob.cl/fl/feriados"
response = requests.get(url)

if response.status_code == 200:
    data = response.json()
    print(data)
else:
    print("Error: ", response.status_code)
