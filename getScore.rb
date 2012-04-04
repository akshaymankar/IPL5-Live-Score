require 'json'
require 'open-uri'
require 'zlib' 
require 'net/http'

require_relative 'open_uri_handle_gzip'

source=open_uri_handle_gzip('data.iplt20.com','/core/cricket/2012/ipl2012/ipl2012-01/scoring.js')
score_json=source.sub(/onScoring\(/,'').sub(/\);/,'')
score=JSON.parse(score_json)
print score["matchInfo"]["teams"][0]["team"]["abbreviation"] + ":" + score["innings"][0]["scorecard"]["runs"].to_s + '/' + score["innings"][0]["scorecard"]["wkts"].to_s + "\n"
print score["matchInfo"]["teams"][1]["team"]["abbreviation"] + ":" + score["innings"][1]["scorecard"]["runs"].to_s + '/' + score["innings"][1]["scorecard"]["wkts"].to_s + "\n"

