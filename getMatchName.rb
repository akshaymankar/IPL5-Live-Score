require_relative 'openUriHandleGzip'
require 'json'

MAX_MATCHES=72

def getMatchName()
    source=openUriHandleGzip('data.iplt20.com','/core/cricket/2012/ipl2012/matchSchedule2.js')
    sch_json=source.sub(/onMatchSchedule\(/,'').sub!(/\);/,'')
    sch=JSON.parse(sch_json)
    i=0
    while sch["schedule"][i]["matchState"].eql? "C" do
        i+=1
        #print i.to_s + sch["schedule"][i]["matchState"]+"\n"
        break if i >= MAX_MATCHES
    end
    #print sch["schedule"][i]["matchState"]+"\n"
    if sch["schedule"][i]["matchState"].eql? "U"
        return sch["schedule"][i-1]["matchId"]["name"]
    else
        return sch["schedule"][i]["matchId"]["name"]
    end
end

