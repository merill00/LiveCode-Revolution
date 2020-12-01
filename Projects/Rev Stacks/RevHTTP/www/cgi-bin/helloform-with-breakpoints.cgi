#!./revolution

on startup
	-- This CGI uses EasyCGI routines.
	--
	-- the global array gDataA contains all the form data from helloform.html
	-- the cgiOutput is used to return data to browser.
	-- we're returning plain text data because it is easier.
	--
	-- This code has breakpoints... have fun!!!
	global gDataA
	start using "RocketsCGI.rev"
	
	breakpoint
	
	put gDataA["firstName"] into tFirstName
	put gDataA["lastName"] into tLastName
	
	breakpoint
	cgiOutput format("Hello %s %s, nice to see you here. Hit back to return.", tFirstName, tFirstName), "text/plain"
end startup

