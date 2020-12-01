#!/opt/web/bin/revolution -ui

on startup
	start using "RocketsCGI.rev"
	start using "RocketsDebug.rev"
	
	try
		start using "galleryDemo.rev"
		catch n
		cgiError n
	end try
	
end startup

