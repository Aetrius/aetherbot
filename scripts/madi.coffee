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

 robot.respond /I love you!/i, (res) ->
      res.send "I love you Madi!!!!"
      res.send("https://images.unsplash.com/photo-1515871204537-49a5fe66a31f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhcnRzfGVufDB8fDB8fA%3D%3D&w=1000&q=80")