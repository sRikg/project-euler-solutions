start_date <- as.Date("01-01-1901", format = "%m-%d-%Y")

end_date <- as.Date("12-31-2000", format = "%m-%d-%Y")

counter <- 0
date <- start_date
while(date <= end_date) {
  if((format(date, "%d") == "01") && (weekdays(date) == "Sunday")) {
    counter <- counter + 1
  }
  date <- date + 1
}
print(counter)
