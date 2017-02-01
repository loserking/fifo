`timescale 1ns/100ps

`define CYCLE 10

module tb_fifo;

	parameter width = 8;
	parameter depth = 4;
	parameter bits  = 2;
	parameter nPattern = 10;
	
	reg  	[width - 1 : 0]	in ;
	reg						write_en,read_en,clk,rst;
	wire    [width - 1 : 0]	out;
	wire 					full, empty;
	
	integer error_num,i,counter;
	
	reg		[width - 1 : 0] patterns[ 0 : nPattern - 1 ];
	integer cycle;
	
	fifo fifo1( out, full, empty,
			 in, write_en,read_en,
			 clk,rst );
	
	initial begin
		//$fsdbDumpfile("fifo.fsdb");
		//$fsdbDumpvars();
		$dumpfile("fifo.vcd");
		$dumpvars;
	end
	
	

	always #(`CYCLE * 0.5 ) clk = ~clk;

	initial
	begin 		// Stimulus patterns
		clk = 1;
		rst = 1;
		error_num = 0;
		//counter = 0;

		for( i = 0; i < nPattern ; i = i + 1 )
		begin
			patterns[i] = $random;
		end
		#( `CYCLE * 0.5 ) rst = 0;
		#( `CYCLE ) rst = 1;
		#( 100 * `CYCLE ) 
		if(!error_num)
			$display("\nCongratulations!! Your Verilog Code is correct!!\n");
		else
			$display("\nYour Verilog Code has %d errors. \n",error_num);
		$finish;
	end

	always @ ( negedge clk or negedge rst) //test1
	begin
		if( rst!=1 ) begin
			counter = 0;
			error_num = 0;
		end
		else
		begin
			if( counter < depth ) //write counter<4 (1 2 3)
			begin 
				read_en  <= 0;
				write_en <= 1;
				in <= patterns[counter];
			end
			else if( counter < depth + 3 )//write but       4=<counter<7  (4 5 6 )
			begin
				write_en <= 1;
				in <= patterns[counter];
				if( full !== 1'b1 )
				begin
					error_num = error_num + 1;
					$display("ERROR at %d, full signal != 1",$time);
				end
			end
			else if( counter == depth + 3 ) //start to read  counter=7 
			begin
				read_en  <= 1;
				write_en <= 0;
				if( full !== 1'b1 )
				begin
					error_num = error_num + 1;
					$display("ERROR at %d, full signal != 1",$time);
				end
			end
			else if( counter <= depth + 3 + depth ) //counter <= 11 ( 8 9 10 11)
			begin
				if( out !== patterns[ counter - depth - 3 - 1] ) // (8 9 10 11 )-8
				begin
					error_num = error_num + 1;
					$display("ERROR at %d:out %h !=expect %h",$time,out,patterns[ counter - depth -3-1 ]);
				end
			end
			else //counter ( 12 13 14 15 16 17 18 19 20)
			begin
				if( empty !== 1'b1 )
				begin
					error_num = error_num + 1;
					$display("ERROR at %d, empty signal != 1",$time);
				end			
			end
			counter = counter + 1;
		end

		if( counter == 20 )
		begin
			counter = 0;
		end
	end
	
endmodule
