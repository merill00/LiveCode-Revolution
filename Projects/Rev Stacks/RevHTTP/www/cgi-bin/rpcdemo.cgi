#!/opt/web/bin/revolution -ui

global gBuffer, gDataA

on startup
	start using "RocketsCGI.rev"
	start using "RocketsDebug.rev"
	start using "RocketsRPC.rev"	
	try
		addFunction "sayHi", "sayHi"
	    addFunction "sayDate", "sayDate"
	    addFunction "addTwo", "addTwo"
	 
		rpcServeFunctions
		
		catch n
		cgiError n
	end try
	
end startup

on sayHi pName
return the keys of gDataA
end sayHi

on sayDate
    return the internet date
end sayDate

on addTwo p1, p2
    return p1 + p2
end addTwo