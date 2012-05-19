#!/usr/bin/env ruby
require 'json'
require 'zlib' 
require 'net/http'

require_relative 'openUriHandleGzip'
require_relative 'getMatchName'

def getPlayerName(players,id)
	for player in players
		if player["id"] == id
			break
		end
	end
	player["names"][1]
end

source=openUriHandleGzip('data.iplt20.com','/core/cricket/2012/ipl2012/' + getMatchName() + '/scoring.js')
score_json=source.sub(/onScoring\(/,'').sub(/\);/,'')
score=JSON.parse(score_json)
if score["innings"].nil?
    print score["matchInfo"][0]["team"]["abbreviation"] + "\n" + score["matchInfo"][1]["team"]["abbreviation"]+"\n"
end
playing1st=score["matchInfo"]["battingOrder"][0]
playing2nd=score["matchInfo"]["battingOrder"][1]
print score["matchInfo"]["teams"][playing1st]["team"]["abbreviation"] + " : " + score["innings"][0]["scorecard"]["runs"].to_s + '/' + score["innings"][0]["scorecard"]["wkts"].to_s + " (" + score["innings"][0]["overProgress"] + ")\n"
print score["matchInfo"]["teams"][playing2nd]["team"]["abbreviation"] + " : " 
if !score["innings"][1].nil?
    print score["innings"][1]["scorecard"]["runs"].to_s + '/' + score["innings"][1]["scorecard"]["wkts"].to_s + " (" + score["innings"][1]["overProgress"] + ")"
end
print "\n"
print score["matchInfo"]["matchSummary"] + "\n"

if ARGV[0] == "bat"
	for i in 0..1
		if score["innings"][i].nil?
			break
		end
		batStat=score["innings"][i]["scorecard"]["battingStats"]
		print "\n"+score["matchInfo"]["teams"][playing1st]["team"]["fullname"]+"\n"
		for player in batStat
			print "#{getPlayerName(score["matchInfo"]["teams"][playing1st]["players"],player["playerId"])}\t #{player["r"]} (#{player["b"]}) #{player["4"]}x4 #{player["6"]}x6\n"
		end
	end
end


