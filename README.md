#IPL Live Score
IPL Live Score is a little app written in ruby to show score of current or last IPL Match.  
It is made very simple and can be added to conky to show score continuosly

##Sample Usage
###Get Only Score
    $ ./getScore.rb  
    SH : 126/6 (20)
    PWI : 104/10 (18.5)
    
###Get Score and Batting Stats
    $ ./getScore.rb bat
    SH : 126/6 (20)
	PWI : 104/10 (18.5)

	Sunrisers Hyderabad
	AP Reddy             27 (30) x4 x6	b Yuvraj Singh
	P Patel              19 (18) x4 x6	b Ashok Dinda
	K Sangakkara         15 (16) x4 x6	b Rahul Sharma
	C White              10 (18) x4 x6	c Mitchell Marsh b Marlon Samuels
	T Perera             30 (18) x4 x6	c Manish Pandey b Ashok Dinda
	H Vihari             11 (12) x4 x6	c Ashok Dinda b Bhuvneshwar Kumar
	AA Reddy             7 (4) x4 x6	Not Out
	D Ravi Teja          4 (4) x4 x6	Not Out

	Pune Warriors India
	R Uthappa            24 (22) x4 x6	c Parthiv Patel b Thisara Perera
	M Pandey             15 (29) x4 x6	c Cameron White b Amit Mishra
	M Samuels            5 (9) x4 x6	c Cameron White b Thisara Perera
	Y Singh              2 (5) x4 x6	st Parthiv Patel b Amit Mishra
	R Taylor             19 (19) x4 x6	b Ashish Reddy
	A Nayar              19 (14) x4 x6	c Ishant Sharma b Amit Mishra
	A Mathews            8 (6) x4 x6	Not Out
	M Marsh              7 (3) x4 x6	run out (Thisara Perera)
	B Kumar              3 (3) x4 x6	b Dale Steyn
	R Sharma             0 (1) x4 x6	b Dale Steyn
	A Dinda              0 (2) x4 x6	c Cameron White b Dale Steyn

###Get Score and Bowling Stats    
    $ ./getScore.rb bowl
    SH : 126/6 (20)
	PWI : 104/10 (18.5)

	Pune Warriors India
	M Samuels            34/1 (4) 
	B Kumar              17/1 (4) 
	A Dinda              29/2 (4) 
	A Mathews            16/0 (2) 
	R Sharma             21/1 (4) 
	Y Singh              8/1 (2) 

	Sunrisers Hyderabad
	D Steyn              11/3 (3.5) 
	I Sharma             22/0 (4) 
	T Perera             29/2 (4) 
	A Mishra             19/3 (4) 
	C White              2/0 (1) 
	AA Reddy             21/1 (2) 

##Copyrights and Author
Copyright (C) 2013 Akshay Mankar <itsakshaymankar@gmail.com>  
Licence: GPLv2: [GNU GPL version 2](http://gnu.org/licenses/gpl2.html)

