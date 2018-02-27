refreshFrequency: 60000

command: "things.widget/helper.sh"

style: """
  border-radius: 6px
  padding: 0px 20px
  bottom: 0px
  left: 0px
  color: #fff
  font-family: Helvetica Neue
  font-weight: 300

  h
    display: block
    text-align: center
    font-size: 24px

  div
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 14px

  ol
    padding-left: 20px

  .things_icon
    float:left

  .thingslist
    float:left

  .completed
    color: #888
    font-weight: regular
    text-decoration:line-through
"""


render: -> """
  <h>Today's Tasks</h>
  <div class='things_container'>
    <div class='things_icon'><img src="things.widget/things-icon.png" height="61" width="61"></div>
    <div class='thingslist'></div>
  </div>
"""

update: (output, domEl) ->
  $(domEl).find('.thingslist').html(output)