#!./revolution

on startup
	-- This CGI uses RocketsCGI routines.
	--
	--
	
	
	global gDataA
	start using "RocketsCGI.rev"
	start using "RocketsSession.rev"
	put sessionStore(gDataA) into tUniqueID
	
	put format("<html><head><link rel=\"stylesheet\" href=\"/css/default.css\" type=\"text/css\" />" & \
		"<title></title></head><body><div id=\"header\">" & \
		"<img id=\"logo\" src=\"/images/revonrocketshappy.png\" />" & \
		"</div>" & \
			"<div id=\"mainContent\">" & \
				"<h1>Confirm</h1>" & \
				"<p><span id=\"laranja\">First Name:</span> %s <br /><span id=\"laranja\">Last Name:</span> %s <br /></p>" & \
				"<p>Click <a href=\"/cgi-bin/session-process.cgi?uniqueid=%s\">here</a> to confirm.</p></div></body></html>", gDataA["firstName"], gDataA["lastName"], tUniqueID) into tBuffer

	cgiOutput tBuffer, "text/html"
end startup

