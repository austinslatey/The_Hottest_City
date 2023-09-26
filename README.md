# The_Hottest_City

## Table of Contents
- [Description](#description)
- [Project Objectives](#project-objectives)
- [Project Setup](#project-setup)
  - [Install Modified weather Script](#install-modified-weather-script)
  - [Create Script File](#create-script-file)
  - [Collect and Sort Temperatures](#collect-and-sort-temperatures)
- [Usage](#usage)

## Description:
This project involves creating a Bash script that fetches forecast temperatures for multiple cities, saves those temperatures to a file, and sorts the cities based on their temperatures. To accomplish this, you will use a modified version of the weather bash script from Bash-Snippets to gather the required forecast information.

## Project Objectives:
In this project, completed in a Linux environment, you will:

1. Fetch forecast temperatures for multiple cities.
2. Save those temperatures to a file.
3. Sort the cities based on their temperatures.

## Project Setup:

### Install Modified weather Script

- Download the modified weather script using the command:
```wget https://static-assets.codecademy.com/Courses/learn-linux/weather-offplatform-project/weather.sh```
- Give it executable permissions using the command:
```chmod +x weather.sh```
- View the usage of the script with:
```./weather.sh -h```


### Create Script File

- Create the shell script file you will be working with, `sortCityTemps.sh`, and give it permission to execute:
```
touch sortCityTemps.sh
chmod +x sortCityTemps.sh
```

- Open and edit the file, adding the line `#!/bin/bash` to the top of the script.

### Collect and Sort Temperatures

- Inside `sortCityTemps.sh`, create an array of cities you want to fetch temperatures for.
- Create an empty file called `temperatures.txt` to store the temperatures.
- Set up a loop to iterate through the cities, fetching temperatures, and appending them to `temperatures.txt`.
- Ensure you sleep for 1 second between iterations to avoid overwhelming the API.
- Remove extra symbols from the weather output.
- Sort the temperatures in descending order and save the sorted output to `sorted_temperatures.txt`.

## Usage:
```$ ./sortCityTemps.sh```

This project enhances your bash scripting skills by automating the process of fetching and sorting temperatures for multiple cities.
