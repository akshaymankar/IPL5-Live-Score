#World T20 2012 Live Score
World T20 2012 Live Score is a little app written in ruby to show score of current or last World T20 Match.
It is made very simple and can be added to conky to show score continuosly

##Sample Usage
###Get Only Score
    $ ./getScore.rb  
    IND : 170/4 (20)
    ENG : 80/10 (14.4)
    
###Get Score and Batting Stats
    $ ./getScore.rb bat
    IND : 170/4 (20)
    ENG : 80/10 (14.4)


    India
    G Gambhir            45 (38) x4 x6	c Craig Kieswetter b Steven Finn
    I Pathan             8 (8) x4 x6	b Steven Finn
    V Kohli              40 (32) x4 x6	c Jonny Bairstow b Graeme Swann
    RG Sharma            55 (33) x4 x6	Not Out
    MS Dhoni             9 (8) x4 x6	c Alex Hales b Jade Dernbach
    S Raina              1 (1) x4 x6	Not Out

    England
    C Kieswetter         35 (25) x4 x6	c Virat Kohli b Piyush Chawla
    A Hales              0 (2) x4 x6	b Irfan Pathan
    L Wright             6 (4) x4 x6	lbw Irfan Pathan
    E Morgan             2 (6) x4 x6	b Harbhajan Singh
    J Bairstow           1 (8) x4 x6	b Piyush Chawla
    J Buttler            11 (12) x4 x6	b Harbhajan Singh
    T Bresnan            1 (8) x4 x6	c Gautam Gambhir b Harbhajan Singh
    S Broad              3 (3) x4 x6	c Gautam Gambhir b Ashok Dinda
    G Swann              0 (3) x4 x6	st MS Dhoni b Harbhajan Singh
    S Finn               8 (10) x4 x6	Not Out
    J Dernbach           12 (7) x4 x6	run out (Lakshmipathy Balaji)
    
###Get Score and Bowling Stats    
    $ ./getScore.rb bowl
    IND : 170/4 (20)
    ENG : 80/10 (14.4)


    England
    S Finn               33/2 (4)
    J Dernbach           45/1 (4)
    S Broad              36/0 (4)
    T Bresnan            35/0 (4)
    G Swann              17/1 (4)

    India
    I Pathan             17/2 (3)
    L Balaji             10/0 (1)
    A Dinda              26/1 (2)
    H Singh              12/4 (4)
    P Chawla             13/2 (4)
    Y Singh              2/0 (0.4)

##Copyrights and Author
Copyright (C) 2012 Akshay Mankar <itsakshaymankar@gmail.com>  
Licence: GPLv2: [GNU GPL version 2](http://gnu.org/licenses/gpl2.html)

