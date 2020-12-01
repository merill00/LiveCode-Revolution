#!./revolution

on startup
	start using "RocketsCGI.rev"
	
	cgiOutput "Hello World, nice to see you here. Hit back to return.", "text/plain"
end startup

