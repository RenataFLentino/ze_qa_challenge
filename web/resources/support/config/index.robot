*** Settings ***
Library  Collections
Library  DebugLibrary
Library  PageObjectLibrary
Library  SeleniumLibrary
Library  OperatingSystem
Library  String

Resource    ./../../keywords/login_kw.robot
Resource    ./../../support/commons.robot

Variables  ./${ENV}.py

*** Variables ***
${USER}  renata.31@hotmail.com
${PASS}  Teste123ze
${INVALID_USER}  renata.41@hotmail.com
${INVALID_PASS}  12345678
