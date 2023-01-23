using HTTP

url = "https://apis.digital.gob.cl/fl/feriados"
response = HTTP.get(url)

if response.status == 200
    data = JSON.parse(String(response.body))
    println(data)
else
    println("Error: $(response.status)")
end

