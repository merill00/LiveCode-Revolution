#!./revolution

on startup
	start using "RocketsCGI.rev"
	start using "RocketsDebug.rev"
	try
		get the title of stack "imaginary stack"
	catch n
		cgiError n
	end try
end startup
