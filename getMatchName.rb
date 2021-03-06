require 'json'
require 'net/http'

MAX_MATCHES=60

def getMatchName()
    source = Net::HTTP.get(URI.parse('http://dynamic.pulselive.com/dynamic/data/core/cricket/2012/ipl2014/matchSchedule2.js'))
    sch_json=source.sub(/onMatchSchedule\(/,'').sub!(/\);/,'')
    sch=JSON.parse(sch_json)
    i=0
    while sch["schedule"][i]["matchState"].eql? "C" do
        i+=1
        #print i.to_s + sch["schedule"][i]["matchState"]+"\n"
        break if i >= MAX_MATCHES
    end

    if sch["schedule"][i]["matchState"].eql? "U"
        return sch["schedule"][i-1]["matchId"]["name"]
    else
        return sch["schedule"][i]["matchId"]["name"]
    end
end
