#IPL5 Live Score
IPL5 Live Score is a little app written in ruby to show score of current or last IPL Match.  
It is made very simple and can be added to conky to show score continuosly

##Sample Usage
###Get Only Score
    $ ./getScore.rb  
    KKR : 136/4 (20)
    PWI : 86/5 (16.1)
    
###Get Score and Batting Stats
    $ ./getScore.rb bat
    KKR : 136/4 (20)
    PWI : 86/5 (16.1)
    
    Kolkata Knight Riders
    B McCullum           41 (43) 5x4 0x6	c Jesse Ryder b Wayne Parnell
    G Gambhir            10 (12) 1x4 0x6	c Ashish Nehra b Wayne Parnell
    J Kallis             13 (18) 1x4 0x6	b Michael Clarke
    S Al Hassan          42 (30) 3x4 2x6	b Bhuvneshwar Kumar
    M Tiwary             8 (9) 0x4 0x6	Not Out
    Y Pathan             15 (10) 2x4 0x6	Not Out
    
    Pune Warriors India
    R Uthappa            8 (8) 1x4 0x6	c Manoj Tiwary b Iqbal Abdulla
    J Ryder              22 (24) 0x4 2x6	b Yusuf Pathan
    M Clarke             14 (20) 0x4 0x6	st Brendon McCullum b Yusuf Pathan
    S Ganguly            4 (7) 0x4 0x6	lbw Shakib Al Hassan
    A Majumdar           17 (22) 0x4 0x6	st Brendon McCullum b Shakib Al Hassan
    C Ferguson           11 (15) 0x4 0x6	Not Out
    H Singh              1 (1) 0x4 0x6	Not Out
    
###Get Score and Bowling Stats    
    $ ./getScore.rb bowl
    KKR : 136/4 (20)
    PWI : 86/5 (16.1)
    
    Pune Warriors India
    A Nehra              35/0 (4) 
    A Murtaza            11/0 (2) 
    W Parnell            18/2 (4) 
    B Kumar              23/1 (4) 
    M Clarke             27/1 (4) 
    S Ganguly            17/0 (2) 
    
    Kolkata Knight Riders
    L Balaji             16/0 (3) 
    S Al Hassan          18/2 (4) 
    I Abdulla            20/1 (3) 
    S Narine             9/0 (2) 
    Y Pathan             11/3 (2.1) 
    R Bhatia             9/0 (2)

##Copyrights and Author
Copyright (C) 2012 Akshay Mankar <itsakshaymankar@gmail.com>  
Licence: GPLv2: [GNU GPL version 2](http://gnu.org/licenses/gpl2.html)

