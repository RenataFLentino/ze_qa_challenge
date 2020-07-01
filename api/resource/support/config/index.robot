*** Settings ***
Library     Collections
Library     DebugLibrary
Library     RequestsLibrary
Library     OperatingSystem
Library     String
Library     JSONLibrary

#KEYWORDS
Resource    ./../../keywords/kw_weather.robot

#SERVICE OBJECTS
Resource    ./../../serviceObjects/weather_service.robot

#COMMONS
Resource    ./../../keywords/kw_commons.robot


Variables   ./${ENV}.py

*** Variable ***
&{HEADER}   Content-Type=application/json  
${API_KEY}  7f16c2824ce75a49072fba63c330755b
${API_KEY_INCORRETA}  7f16c2824ce75a49072fba63c33075676

