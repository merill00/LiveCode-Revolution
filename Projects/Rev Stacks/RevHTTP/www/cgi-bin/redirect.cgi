#!./revolution

on startup
	-- This CGI uses RocketsCGI routines.
	--
	global gDataA
	start using "RocketsCGI.rev"

	cgiForward "http://www.yahoo.com/"
end startup

