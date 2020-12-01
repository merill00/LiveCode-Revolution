#!./revolution

on startup
	-- This CGI uses RocketsCGI routines.
	--
	--
	
	
	global gDataA
	start using "RocketsCGI.rev"
	start using "RocketsSession.rev"
	put sessionGet(gDataA["uniqueID"]) into gDataA
	if the keys of gDataA is empty then
		cgiOutput "Sessions can't be reused."
	else
	put format("<html><head><link rel=\"stylesheet\" href=\"/css/default.css\" type=\"text/css\" />" & \
		"<title></title></head><body><div id=\"header\">" & \
		"<img id=\"logo\" src=\"/images/revonrocketshappy.png\" />" & \
		"</div>" & \
			"<div id=\"mainContent\">" & \
				"<h1>Your Session</h1>" & \
				"<p>Hello %s %s <br /></p>" & \
				"<p>We got this data from your session.</p></div></body></html>", gDataA["firstName"], gDataA["lastName"]) into tBuffer

	cgiOutput tBuffer, "text/html"
end if
end startup

