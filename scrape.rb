require 'socket'
require 'colorize'

time1 = Time.new 
system("python3 banner.py")
puts "=========================================="
puts "| Port scanning websites                 | "
puts "|                      with ruby         | "
puts "|----------------------------------------|"
print " Press Enter to scan selected website ===> "
web = gets 
TIMEOUT = 10
def scan_port(port)
  socket      = Socket.new(:INET, :STREAM) # %'#{}' is to define inputs of the source or in this case .gets or web = gets which comes from user input base 
  remote_addr = Socket.sockaddr_in(port, 'www.hulu.com')  #www.rubyguides.com') # this is where you will change the website make sure it is a direct service 
  begin
    socket.connect_nonblock(remote_addr)
  rescue Errno::EINPROGRESS
  end
  _, sockets, _ = IO.select(nil, [socket], nil, TIMEOUT)
  if sockets
    puts "__________________________________________".blue 
    puts "[INFO]<>[TRUE]   ==> Port #{port} IS OPEN".blue
    puts "__________________________________________".blue 
    puts "[DATA]<>[PROBED] ==> TRUE|TRUE|TRUE|".blue
    puts "__________________________________________".blue
  else
    puts "--------------------------------------".red 
    puts  "[INFO] [FALSE] ==> Port#{port} IS CLOSED".red
    puts "--------------------------------------".red  
  end
end
PORT_LIST = [
21,
22,
23,
25,
53,
80,
443,
3306,
8080,
1,
3,
4,
6,
7,
9,
13,
17,
19,
20,
21,
22,
23,
24,
25,
26,
30,
32,
33,
37,
42,
43,
49,
53,
70,
79,
80,
81,
82,
83,
84,
85,
88,
89,
90,
99,
100,
106,
109,
110,
111,
113,
119,
125,
135,
139,
143,
144,
146,
161,
163,
179,
199,
211,
212,
222,
254,
255,
256,
259,
264,
280,
301,
306,
311,
340,
366,
389,
406,
407,
416,
417,
425,
427,
443,
444,
445,
458,
464,
465,
481,
497,
500,
512,
513,
514,
515,
524,
541,
543,
544,
545,
548,
554,
555,
563,
587,
593,
616,
617,
625,
631,
636,
646,
648,
666,
667,
668,
683,
687,
691,
700,
705,
711,
714,
720,
722,
726,
749,
765,
777,
783,
787,
800,
801,
808,
843,
873,
880,
888,
898,
900,
901,
902,
903,
911,
912,
981,
987,
990,
992,
993,
995,
999,
1000,
1001,
1002,
1007,
1009,
1010,
1011,
1021,
1022,
1023,
1024,
1025,
1026,
1027,
1028,
1029,
1030,
1031,
1032,
1033,
1034,
1035,
1036,
1037,
1038,
1039,
1040,
1041,
1042,
1043,
1044,
1045,
1046,
1047,
1048,
1049,
1050,
1051,
1052,
1053,
1054,
1055,
1056,
1057,
1058,
1059,
1060,
1061,
1062,
1063,
1064,
1065,
1066,
1067,
1068,
1069,
1070,
1071,
1072,
1073,
1074,
1075,
1076,
1077,
1078,
1079,
1080,
1081,
1082,
1083,
1084,
1085,
1086,
1087,
1088,
1089,
1090,
1091,
1092,
1093,
1094,
1095,
1096,
1097,
1098,
1099,
1100,
1102,
1104,
1105,
1106,
1107,
1719,
1720,
1721,
1723,
1755,
1761,
1782,
1783,
1801,
1805,
1812,
1839,
27000,
27352,
27353,
27355,
27356,
27715,
28201,
30000,
30718,
30951,
31038,
31337,
32768,
32769,
32770,
32771,
32772,
32773,
32774,
32775,
32776,
32777,
32778,
32779,
32780,
32781,
32782,
32783,
32784,
32785,
33354,
33899,
34571,
34572,
34573,
35500,
38292,
40193,
40911,
41511,
42510,
44176,
44442,
44443,
44501,
45100,
48080,
49152,
49153,
49154,
49155,
49156,
49157,
49158,
49159,
49160,
49161,
49163,
49165,
49167,
49175,
49176,
49400,
49999,
50000,
50001,
50002,
50003,
50006,
50300,
50389,
50500,
50636,
50800,
51103,
51493,
52673,
52822,
52848,
52869,
54045,
54328,
55055,
55056,
55555,
55600,
56737,
56738,
57294,
57797,
58080,
60020,
60443,
61532,
61900,
62078,
63331,
64623,
64680,
65000,
65129,
65389,]
threads   = []
time = Time.new
PORT_LIST.each { |i| threads << Thread.new { scan_port(i) } }
threads.each(&:join)
puts "++++++++++++++++++++++++++++++++++++++++++++++++ ".yellow
puts "+[DATA] ==> Rube-Ster finished scanning at ".yellow
puts time.strftime("%Y-%m-%d %H:%M:%S")
puts"+++++++++++++++++++++++++++++++++++++++++++++++++".yellow
print "enter a IP for nmap to scan ==> "
IP = gets 
system(" nmap #{IP}")


system("clear")
system("sleep 1")
print "Enter your name: "
name = gets # gets input 
system("echo hello #{name}")
puts "Hello #{name}" # returns name input 