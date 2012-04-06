require 'json'
require 'zlib' 
require 'net/http'

require_relative 'openUriHandleGzip'
require_relative 'getMatchName'

source=openUriHandleGzip('data.iplt20.com','/core/cricket/2012/ipl2012/' + getMatchName() + '/scoring.js')
score_json=source.sub(/onScoring\(/,'').sub(/\);/,'')
score=JSON.parse(score_json)
if score["innings"].nil?
    print score["matchInfo"][0]["team"]["abbreviation"] + "\n" + score["matchInfo"][1]["team"]["abbreviation"]+"\n"
end
playing1st=score["matchInfo"]["battingOrder"][0]
playing2nd=score["matchInfo"]["battingOrder"][1]
print score["matchInfo"]["teams"][playing1st]["team"]["abbreviation"] + " :" + score["innings"][0]["scorecard"]["runs"].to_s + '/' + score["innings"][0]["scorecard"]["wkts"].to_s + " (" + score["innings"][0]["overProgress"] + ")\n"
print score["matchInfo"]["teams"][playing2nd]["team"]["abbreviation"] + " :" 
if !score["innings"][1].nil?
    print score["innings"][1]["scorecard"]["runs"].to_s + '/' + score["innings"][1]["scorecard"]["wkts"].to_s + " (" + score["innings"][1]["overProgress"] + ")"
end
print "\n"
#print score["matchInfo"]["matchSummary"]
