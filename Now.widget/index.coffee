command: """python Now.widget/utc.py"""


refreshFrequency: 5*60*1000
# Image source is xkcd.com
render: (output)-> """
<img src="./Now.widget/images/#{output}.png" title="This image stays roughly in sync with the day (assuming the Earth continues spinning). Shortcut: xkcd.com/now" alt="Now">
"""

style: """
	position: absolute
	left: 200px
	bottom: -150px
	margin-right: -50%
	transform: translate(-50%,-50%)
	
	img
		height: 353px
		width: 353px
"""