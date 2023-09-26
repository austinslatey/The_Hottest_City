#!/bin/bash


# Define an array of cities
cities=("Paris" "Tokyo" "London")

# Create an empty file to store temperatures
> temperatures.txt

# Loop through the cities
for city in "${cities[@]}"
do
  # Pause for 1 second
  sleep 1
  
  # Fetch weather information and simplify the output
  weather_output=$(./weather.sh -s "$city")
  
  # Remove extra symbols like + and °F
  simplified_output=$(echo "$weather_output" | sed 's/+//' | sed 's/°F//')
  
  # Append the simplified weather output to temperatures.txt
  echo "$simplified_output" >> temperatures.txt
done

# Sort temperatures in descending order and save the sorted output
sort -k2 -r temperatures.txt > sorted_temperatures.txt
