# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

 robot.respond /flip/i, (res) ->
  robot.http("http://www.tableflipper.com/json")
    .header('Accept', 'application/json')
    .get() (err, response, body) ->
      # error checking code here

      data = JSON.parse body
      res.send "#{data.gif}"