#!revolution -ui

global gDataA

on startup
	start using "RocketsCGI.rev"
	start using "RocketsDebug.rev"
	
	try
	
	get the name of stack "I don't exist"
	
	cgiOutput "Hello Web from Runtime Revolution", "text/plain"
	
	catch n
	cgiError n
	end try
end startup