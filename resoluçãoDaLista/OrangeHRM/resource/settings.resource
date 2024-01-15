*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#Dados gerais
${URL}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}  chrome

#Dados do teste
${Username}                     Admin
${Password}                     admin123
${firstNameEmployee}            Severino
${middleNameEmployee}           Severo
${lastNameEmployee}             De Severina Pereira Silva
${EmployeeImage}                severino.jpg
${EmployeeId}                   123
