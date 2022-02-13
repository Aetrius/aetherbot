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

 robot.respond /execute order 66/i, (res) ->
      res.send "It shall be done..."
      res.send("https://lex-images-bot125123513132515322352562.s3.amazonaws.com/bad-batch-order66.jpg")