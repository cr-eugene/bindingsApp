# bindingsApp
SwiftUI Test App

## Description
Application of people who each have a list of activities and categories. The categories are characteristics of the activities. Each person has their own list of each of these.

## Current problem
While the application creates people as expected, when the functionality to add a category to a person executes, the array of categories in the person is not changed.

Steps to reproduce:
1. Run in simulator
2. Click the '+' in the People list and add a person (e.g. "Eugene")
3. Click the "Add" button
4. See the new person
5. Click the new person in the list to see the PersonView page
6. Click the '+' in the Categories list to add a Cetegory (e.g. "Wannabe dev")
7. Click the "Add" button
8. See no new Category


