require_relative 'openUriHandleGzip'
require 'json'
require_relative 'constants'

def getMatchName()
    source=openUriHandleGzip(HOST,BASE_PATH_FOR_TOURNAMENT+MATCH_SCHEDULE_FILE)
    sch_json=source.sub(/onMatchSchedule\(/,'').sub!(/\);/,'')
    sch=JSON.parse(sch_json)
    i=0
    while sch["schedule"][i]["matchState"].eql? "C" do
        i+=1
        break if i >= MAX_MATCHES
    end
    
    if sch["schedule"][i]["matchState"].eql? "U"
        return sch["schedule"][i-1]["matchId"]["name"]
    else
        return sch["schedule"][i]["matchId"]["name"]
    end
end

