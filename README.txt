Whak-a-Mole

This repository contains a Digital Version of the classic arcade game Whak-a-Mole in logisim;
This repository also contains Verilog code of the game with 3 main testbenches(main_tb1.v,main_tb2.v,main_tb3.v) for all cases of the game;
To run the logisim file(Whak-a-Mole.circ) open the file with logisim;
To run the verilog code first install iverilog and gtkwave,then complie the verilog files 

'iverilog main.v anticheat.v anticheat2.v anticlicker.v bitmem.v counter1.v counter_main.v levelselector.v memory.v randomiser.v main_tb1.v -o out'

and run it

'vvp out'

a vcd file will be created, open it with gtk wave;

