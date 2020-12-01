#!./revolution

on startup
	-- This CGI uses RocketsCGI routines.
	--
	-- the global array gDataA contains all the form data from helloform.html
	-- the cgiOutput is used to return data to browser.
	-- we're returning plain text data because it is easier.
	global gDataA
	
	start using "RocketsCGI.rev"
	
	cgiOutput format("Hello %s %s, nice to see you here. Hit back to return.", gDataA["firstName"], gDataA["lastName"]), "text/plain"
end startup

