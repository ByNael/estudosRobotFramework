*** Settings ***
Resource  ../main.robot

*** Variables ***
&{login}
...  Input_Username=//input[@name="username"]
...  Input_Password=//input[@name="password"]
...  Btn_Login=//button[text()=' Login ']
