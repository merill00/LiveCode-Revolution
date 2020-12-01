/*
	Outliner functions
	version: 1.3.2
	last modified 14-Nov-2002
	created by Marc Barrot, with help from Aaron Straup Cope, DJ Adams, Sjoerd Visscher and Danny Goodman
	copyright 2002 by Precision IT Management,Inc.
 	You may use and distribute this code freely,
	just keep this header information intact.
*/

var img_collapsed  = './images/Expanded.png';
var img_expanded = './images/Collapsed.png';

new Image(9,9),src = img_expanded; // caching
new Image(9,9),src = img_collapsed; // caching

function expand(ioNode) {
	ioWedge = "i" + ioNode.substr(1);

	if (document.getElementById && document.getElementById(ioNode) != null) {
		document.getElementById(ioWedge).src=img_collapsed;
		document.getElementById(ioWedge).title='collapse';
		document.getElementById(ioNode).className='expanded';
	}
}

function collapse(ioNode) {
	ioWedge = "i" + ioNode.substr(1);

	if (document.getElementById && document.getElementById(ioNode) !=  null) {
		document.getElementById(ioWedge).src=img_expanded;
		document.getElementById(ioWedge).title='expand';
		document.getElementById(ioNode).className='collapsed';
	}
}

function ioSwitch(ioNode) {

	if (document.getElementById && document.getElementById(ioNode) !=  null) {
		nodeState = document.getElementById(ioNode).className;
	}

    if (nodeState == 'collapsed') {
		expand(ioNode);
	}

	else {
		collapse(ioNode);
	}
}

function expandAll(divName) {

	if (document.getElementsByTagName) {
		nodeList = document.getElementsByTagName('div');

		for (var i = 0; i < nodeList.length; i++) {
	
			if (nodeList.item(i).getAttribute('name') == divName) {
				expand(nodeList.item(i).id);	
			}
		}
	}

	else {
		alert ("Sorry, don't know how to make this run in your browser.");
	}
}

function collapseAll(divName) {

	if (document.getElementsByTagName) {
		nodeList = document.getElementsByTagName('div');

		for (var i = 0; i < nodeList.length; i++) {
	
			if (nodeList.item(i).getAttribute('name') == divName) {
				collapse(nodeList.item(i).id);
			}
		}
	}

	else {
		alert ("Sorry, don't know how to make this run in your browser.");
	}
}

function normalizeAll(spanName) {

	if (document.getElementsByTagName) {
		nodeList = document.getElementsByTagName('span');

		for (var i = 0; i < nodeList.length; i++) {
	
			if (nodeList.item(i).getAttribute('name') == spanName) {
				nodeList.item(i).style.fontWeight = 'normal';
			}
		}
	}

	else {
		alert ("Sorry, don't know how to make this run in your browser.");
	}
}

function expandBold(ioNode) {
	ioWedge = "i" + ioNode.substr(1);
	ioTitle = "t" + ioNode.substr(1);

	if (document.getElementById && document.getElementById(ioNode) != null) {
		document.getElementById(ioWedge).src=img_collapsed;
		document.getElementById(ioWedge).title='collapse';
		document.getElementById(ioNode).className='expanded';
		document.getElementById(ioTitle).style.fontWeight = 'bold';
	}
}

function expandByDate(n) {

	if (n.nodeType == 1) {

		if (n.tagName.toLowerCase() == 'div') {

			if (n.getAttribute('name') == 'item') {
				expandBold(n.id);
			}
		}
	}

	var children = n.childNodes;

	for (var i=0; i < children.length; i++ ) {
		expandByDate(children[i]);
	}
}

function daySwitch(postDate) {

	var hasItems = 0;

	if (document.getElementsByTagName) {
		nodeList = document.getElementsByTagName('span');

		for (var i = 0; i < nodeList.length; i++) {
	
			if (nodeList.item(i).getAttribute('name') == 'itemTitle') {
				hasItems = 1;
				break;
			}
		}
	}
	
	if (hasItems) {
		collapseAll('item');
		normalizeAll('itemTitle');

		if (document.getElementById) {
			expandByDate(document.getElementById(postDate));
		}
	}

	else {
		collapseAll('day');
		ioSwitch(postDate);
	}
}

var targetNode;
var targetRoot;

function transclude(ioNode, url) {

	var serverUrl = 'http://www.w3.org/2000/06/webdata/xslt';
	var xsltUrl = 'http://radio.weblogs.com/0104487/gems/activeRenderer/outliner_js_xsl.txt';
	var xsltUrl2 = 'http://radio.weblogs.com/0104487/gems/activeRenderer/outliner_xsl.txt';

	var renderRequest = serverUrl + '?xslfile=' + xsltUrl + '&xmlfile=' + url + '&transform=Submit';
	var renderRequest2 = serverUrl + '?xslfile=' + xsltUrl2 + '&xmlfile=' + url + '&transform=Submit';
	var ioWedge = "i" + ioNode.substr(1);
	var ioRoot = "r" + ioNode.substr(1);
	var ioTitle = "t" + ioNode.substr(1);

	if (document.getElementById) {

		// create buffer if needed

		if (! document.getElementById ('buffer')) { // if buffer does not already exist
			var buffer = document.createElement('div');
			buffer.setAttribute ('id', 'buffer');
			document.body.appendChild (buffer); // add buffer as last element of body
		}

		// test for Mac MSIE

		var macMSIE = navigator.userAgent.search (/MSIE.*Mac/i) + 1;

		if (macMSIE) {

			// open new window for transcluded content

			var xAnchor = screen.width - (640 + 20);
			var yAnchor = 5;
			var xWidth = 640;
			var yHeight = 400;			
			window.open (renderRequest2, 'Related', 'width=' + xWidth + ', left=' + xAnchor + ', height=' + yHeight + ', top=' + yAnchor);

		} else {

			// expand node

			var imgNode = document.getElementById (ioWedge);		// wedge image node
			var rootNode = document.getElementById (ioRoot);		// embedding div node
			var spanNode = document.getElementById (ioTitle);		// title span node
			var title = spanNode.firstChild.data;
			var newTitle = document.createTextNode (title);			// create new heading container
			var expandedNode = document.createElement ('div');		// create embedding element
			expandedNode.setAttribute ('name', 'active');
			expandedNode.setAttribute ('class', 'expanded');
			expandedNode.setAttribute ('id', ioNode);
			expandedNode.style.marginLeft = '15px';
			imgNode.src = img_rotating;								// update wedge's image
			imgNode.title = 'loading';
			imgNode.parentNode.setAttribute ('href', 'javascript:ioSwitch(\'' + ioNode + '\')');
			spanNode.removeChild (spanNode.firstChild);				// replace heading
			spanNode.appendChild (newTitle);
			rootNode.appendChild (expandedNode);					// insert embedding element
			targetNode = expandedNode;
			targetRoot = imgNode;
		
			// load buffer with rendered outline script

			var theEl=document.createElement('script');
			theEl.src = renderRequest;
			document.getElementById('buffer').appendChild(theEl);
		}
	}
}

function retrieveHtml(s) {

	// clean-up entity encoded HTML

	s = s.replace (/&lt;/g, '<');
	s = s.replace (/&gt;/g, '>');
	s = s.replace (/&amp;/g, '&');

	// generate random key

	var rnd = Math.random();
	var rnd_key = String (rnd).substr(1,6);
	s = s.replace (/(id="[rpti][^"][^"]*)/g, '$1' + rnd_key);		// update all div node ids
	s = s.replace (/(\('p[^'][^']*)/g, '$1' + rnd_key);				// update headings ids

	// insert transcluded HTML

	targetNode.innerHTML = s;
	targetRoot.src = img_collapsed;									// update wedge image
	targetRoot.title = 'collapse';
}


function imgLoad(ioNode, url) { 									// load image at url into browser cache

    // ioNode :    expanding node identifier (string), stored in a custom property
    // url    :    web address of the included image (string)

	var ioWedge = "i" + ioNode.substr(1);

	if (document.getElementById) {
		var imgNode = document.getElementById (ioWedge);			// wedge image node
		imgNode.src = img_rotating;									// update wedge's image
		imgNode.title = 'loading';
	}

    cachedImg.ioNode = ioNode;
    cachedImg.onload = imgTakeABreath;
    cachedImg.src = url;
}

function imgTakeABreath() { 										// allow for Mac MSIE and Mozilla to catch up
    setTimeout("imgSwitch()", 0);   								// ugh!
}

function imgSwitch() {												// actual image transclusion starts here
	var ioWedge = "i" + cachedImg.ioNode.substr(1);
	var ioRoot = "r" + cachedImg.ioNode.substr(1);
	var ioTitle = "t" + cachedImg.ioNode.substr(1);

	if (document.getElementById) {
		var imgNode = document.getElementById (ioWedge);			// wedge image node
		var rootNode = document.getElementById (ioRoot);			// embedding div node
		var spanNode = document.getElementById (ioTitle);			// title span node
		var expandedNode = document.createElement ('div');
		expandedNode.setAttribute ('name', 'active');
		expandedNode.setAttribute ('class', 'expanded');
		expandedNode.setAttribute ('id', cachedImg.ioNode);
		expandedNode.style.marginLeft = '15px';
		rootNode.appendChild (expandedNode);						// insert embedding element
		var expandedWidth;

		if (rootNode.currentStyle) {								// get embedding element's width
			expandedWidth = parseInt (rootNode.offsetWidth) - 4;
		} else {
			expandedWidth = parseInt (document.defaultView.getComputedStyle (expandedNode, '').getPropertyValue('width'));
		}

		var includedLink = document.createElement ('a');			// create a link for the included image
		includedLink.setAttribute ('href', cachedImg.src);
		includedLink.setAttribute ('target', '_new');
		includedLink.setAttribute ('title', 'view full size');

		var includedImg = document.createElement ('img');			// create the included image
		includedImg.setAttribute ('border', 0);
		includedImg.setAttribute ('hspace', 0);
		includedImg.setAttribute ('vspace', 8);
		includedImg.setAttribute ('alt', 'included image');
		includedImg.src = cachedImg.src;							// set the image's url

		if (expandedWidth < cachedImg.width) {						// adjust size if greater than embedding element
			includedImg.width = expandedWidth;
			includedImg.height = (cachedImg.height / cachedImg.width) * expandedWidth;
		}

		expandedNode.appendChild (includedLink);					// insert link
		includedLink.appendChild (includedImg);						// insert image
		imgNode.src = img_collapsed;								// update wedge
		imgNode.title = 'collapse';
		imgNode.parentNode.setAttribute ('href', 'javascript:ioSwitch(\'' + cachedImg.ioNode + '\')');
	}
}

function rssclude(ioNode, url) {
	alert ("RSS inclusion will be here shortly, keep faith :-)");
}
