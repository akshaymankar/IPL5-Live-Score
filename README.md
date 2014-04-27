#IPL Live Score
IPL Live Score is a little app written in ruby to show score of current or last IPL Match.
It is made very simple and can be added to conky to show score continuosly

##Sample Usage
###Get Only Score
    $ ./getScore.rb
    CSK : 140/6 (20)
    RR : 133/10 (19.5)

###Get Score and Batting Stats
    $ ./getScore.rb bat
    CSK : 140/6 (20)
    RR : 133/10 (19.5)

    Chennai Super Kings
    DR Smith             50 (28) x4 x6	c Shane Watson b Stuart Binny
    B McCullum           6 (10) x4 x6	c Steve Smith b James Faulkner
    S Raina              4 (9) x4 x6	c Dhawal Kulkarni b Rajat Bhatia
    F du Plessis         7 (9) x4 x6	run out (Rajat Bhatia)
    MS Dhoni             5 (8) x4 x6	c James Faulkner b Pravin Tambe
    R Jadeja             36 (33) x4 x6	Not Out
    M Manhas             10 (10) x4 x6	c Abhishek Nayar b Rajat Bhatia
    R Ashwin             9 (13) x4 x6	Not Out

    Rajasthan Royals
    A Nayar              5 (7) x4 x6	run out (Brendon McCullum)
    A Rahane             15 (12) x4 x6	c Mithun Manhas b Ravichandran Ashwin
    S Samson             16 (16) x4 x6	c & b Ravindra Jadeja
    S Watson             7 (6) x4 x6	c Ben Hilfenhaus b Ravindra Jadeja
    S Binny              8 (11) x4 x6	c Francois du Plessis b Mohit Sharma
    S Smith              19 (20) x4 x6	c Francois du Plessis b Ravindra Jadeja
    R Bhatia             23 (20) x4 x6	c Ravichandran Ashwin b Ben Hilfenhaus
    J Faulkner           4 (2) x4 x6	c MS Dhoni b Ishwar Pandey
    T Southee            4 (4) x4 x6	b Ravindra Jadeja
    D Kulkarni           28 (19) x4 x6	Not Out
    P Tambe              2 (2) x4 x6	run out (Francois du Plessis)

###Get Score and Bowling Stats
    $ ./getScore.rb bowl
    CSK : 140/6 (20)
    RR : 133/10 (19.5)

    Rajasthan Royals
    D Kulkarni           18/0 (3)
    T Southee            27/0 (4)
    J Faulkner           38/1 (3)
    P Tambe              27/1 (4)
    S Binny              10/1 (1)
    R Bhatia             13/2 (4)
    S Watson             5/0 (1)

    Chennai Super Kings
    B Hilfenhaus         32/1 (4)
    I Pandey             22/1 (4)
    R Ashwin             27/1 (3.5)
    R Jadeja             33/4 (4)
    S Raina              6/0 (2)
    M Shaarma             13/1 (2)

##Copyrights and Author
Copyright (C) 2014 Akshay Mankar <itsakshaymankar@gmail.com>
Licence: GPLv2: [GNU GPL version 2](http://gnu.org/licenses/gpl2.html)
