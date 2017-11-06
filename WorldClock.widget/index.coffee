# Execute the shell command.
command: "WorldClock.widget/WorldClock.sh"

# Set the refresh frequency (milliseconds).
refreshFrequency: 1000

# Render the output.
render: -> """
"""

# Update the rendered output.
update: (output, domEl) ->
  console.log("WorldClock")
  console.log(output)

  # Get our main DIV.
  div = $(domEl)        

  # Get our timezones and times.
  zones=output.split("\n")

  # Initialize our HTML.
  timeHTML = '<table>'
    
  # Loop through each of the time zones.
  for zone, idx in zones
    
    # If the zone is not empty (e.g. the last newline), let's add it to the HTML.
    if zone != ''
    
      # Split the timezone from the time.
      values = zone.split(";")
      
      timeHTML = timeHTML + "<tr class='Wrapper'>"
      timeHTML = timeHTML + "<td class='Timezone'>" + values[0] + "</td>"
      timeHTML = timeHTML + "<td class='Time'>" + values[1] + "</td>"
      timeHTML = timeHTML + "</tr>"
        
  timeHTML = timeHTML + "</table>"
      
  # Set the HTML of our main DIV.
  div.html(timeHTML)  
  
# CSS Style
style: """
  width: 188px
  top: 224px
  right: 10px
  font-family: Helvetica Neue
  background:rgba(#000, 0.25)
  // border:2px solid rgba(0,0,0,0.15)
  border-radius:2px
  //text-align:center
  font-size:11pt
  
  .Wrapper, .LastWrapper
    width:100%
    //display:inline-block
    
  .Timezone
    text-align: right
    width: 132px
    color: rgba(255,255,255,0.75)
    padding:6px
    
  .Time
    width: 29px
    //width: 49%
    color: rgba(255,255,255,0.40)
    padding:6px
"""
