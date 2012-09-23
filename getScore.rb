#!/usr/bin/env ruby
require 'json'
require 'zlib' 
require 'net/http'

require_relative 'openUriHandleGzip'
require_relative 'getMatchName'
require_relative 'constants'

def getPlayerName(players,id)
	for player in players
		if player["id"] == id
			break
		end
	end
	name = player["names"][1]
	if(name.length < 20)
		name.concat(" "*(20 - name.length))
	end
	name
end
source=openUriHandleGzip(HOST, BASE_PATH_FOR_TOURNAMENT + getMatchName() + SCORING_FILE)
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
		if i==0
			curTeam = playing1st
		else
			curTeam = playing2nd
		end
		print "\n"+score["matchInfo"]["teams"][curTeam]["team"]["fullName"]+"\n"
		for player in batStat
			print "#{getPlayerName(score["matchInfo"]["teams"][curTeam]["players"],player["playerId"])} #{player["r"]} (#{player["b"]}) #{player["4"]}x4 #{player["6"]}x6"
			if player["mod"].nil?
				print "\tNot Out\n"
			else
				print "\t#{player["mod"]["text"]}\n"
			end
		end
	end
end
if ARGV[0] == "bowl"
	for i in 0..1
		if score["innings"][i].nil?
			break
		end
		bowlStat=score["innings"][i]["scorecard"]["bowlingStats"]
		if i==0
			curTeam = playing2nd
		else
			curTeam = playing1st
		end
		print "\n"+score["matchInfo"]["teams"][curTeam]["team"]["fullName"]+"\n"
		for player in bowlStat
			print "#{getPlayerName(score["matchInfo"]["teams"][curTeam]["players"],player["playerId"])} #{player["r"]}/#{player["w"]} (#{player["ov"]}) \n"
		end
	end
end
