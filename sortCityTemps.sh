#!/bin/bash

# List of cities (including those with multiple words)
cities=("New York" "Los Angeles" "Hong Kong" "San Fernando del Valle de Catamarca")

# Create an empty file to store the weather data
> weather_data.txt

# Iterate through the cities
for city in "${cities[@]}"
do
    # Pause for 2 seconds between requests (to avoid overwhelming the API)
    sleep 2

    # Fetch weather data using the modified weather script
    weather_output=$(./weather.sh -s "$city")

    # Extract temperature and wind speed from the weather output
    temperature=$(echo "$weather_output" | grep -oE '[+-]?[0-9]+[°][CF]' | head -n1)
    wind_speed=$(echo "$weather_output" | grep -oE '[0-9]+[kKmM/.]+[hH]' | head -n1)

    # Append the data to the weather_data.txt file
    echo "$city: Temperature $temperature, Wind Speed $wind_speed" >> weather_data.txt
done

# Sort the data based on wind speed in descending order
sort -t':' -k5nr -o sorted_weather_data.txt weather_data.txt

# Display the sorted data
cat sorted_weather_data.txt
