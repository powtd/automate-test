*** Settings ***
Library	SeleniumLibrary	

*** Variables ***
${message}	My Message

*** Keywords ***
Say Hello
	Log To Console	Hello

*** Test cases ***
Test Case01
	Open Browser	file:///C:/Users/PHRUKSACHATYAOGUL/Documents/robot_test/ep01_material/ep01/ep01_small_excercise.html	browser=chrome
	Sleep	2
	Input Text	id=username-box	haircut
	Input Text	xpath=//div[@v='password']/input	pass
	Input Text	xpath=//input[@doppio="nickname"]	tua
	Select From List By Label	xpath=//select	Doppio	
	Click Element	id=op1
	Click Element	id=use-me
	Sleep	3


