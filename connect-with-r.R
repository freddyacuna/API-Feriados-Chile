library(httr)

url <- "https://apis.digital.gob.cl/fl/feriados"
response <- GET(url)

if (status_code(response) == 200) {
    data <- content(response, "text", encoding = "utf8")
    print(data)
} else {
    print(paste("Error:", status_code(response)))
}

