*** Settings ***
Resource        ../main.robot
Library  jsonschema
Library  OperatingSystem
Library  Collections
Library  FakerLibrary   locale=pt_BR
Library  RequestsLibrary
Library  String
Library  BuiltIn
Library  DebugLibrary
Library  Screenshot
Library  DateTime
Library  DatabaseLibrary
Library  JsonValidator
Library  SeleniumLibrary
Library  JSONLibrary
Library  config/libs/loadEnv.py
Library  RobotDebug
Library  Browser
