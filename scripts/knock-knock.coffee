# Description:
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#   hubot make me laugh - Hear a knock knock joke.
#
# Notes:
# This is a proof of concept of the conversation.coffee script. More coming soon.
#
# Author:
#   meshachjackson

module.exports = (robot) ->
  robot.respond /make me laugh/i, (msg) ->
  	msg.send "Knock knock"
  	msg.waitResponse (msg) ->
  		answer = "who\'s there?"
  		if msg.match[1] != answer
	  		msg.send "Awe... You are supposed to say \"#{answer}\""
	  	else
	  		msg.send "Canoe."
		  	msg.waitResponse (msg) ->
		  		answer = "Canoe who?"
		  		if msg.match[1] != answer
		  			msg.send "I am sorry. I need exactly the correct answer."
		  		else
		  			msg.send "Canoe help me with my homework?"