module fifo(
    out,
    full,
    empty, 
    in, 
    write_en, 
    read_en, 
    clk, 
    rst
);

//==== i/o definition ====
input        clk, rst;
input  [7:0] in;
input        write_en, read_en;
output reg [7:0] out;
output reg full, empty;

//==== reg/wire definition ====
reg [2:0] counter, nxt_counter;//data number in the fifo
reg [7:0] nxt_out;
reg nxt_full, nxt_empty;
reg [7:0] bank [0:3];
reg [7:0] nxt_bank [0:3];
integer i;

//==== sequential circuit ====
 always@(posedge clk or negedge rst)begin
	if(~rst)begin
		out <= 0;
		full <= 0;
		empty <= 0;
		counter <= 0;
		for( i = 0; i < 4; i = i+1)
			bank[i] <= 0;
	end
	else begin
		out <= nxt_out;
		full <= nxt_full;
		empty <= nxt_empty;
		counter <= nxt_counter;
		for( i = 0; i < 4; i = i+1)
			bank[i] <= nxt_bank[i];
	end
end
 
//==== combinational circuit ====
always@(*)begin
	if(write_en & ~read_en)begin
		if(counter == 4)begin
			nxt_out = out;
			nxt_full = full;
			nxt_empty = empty;
			nxt_counter = counter;
			for( i = 0; i < 4; i = i+1)
				nxt_bank[i] = bank[i];
		end
		else begin
			nxt_out = out;
			if(counter == 3)
				nxt_full = 1;
			else
				nxt_full = 0;
			nxt_empty = empty;
			nxt_counter = counter+1;
			for( i = 0; i < 4; i = i+1)
				nxt_bank[i] = bank[i];
			nxt_bank[counter] = in;
		end
	end
	else if(~write_en & read_en)begin
		if(counter == 0)begin
			nxt_out = out;
			nxt_full = full;
			nxt_empty = empty;
			nxt_counter = counter;
			for( i = 0; i < 4; i = i+1)
				nxt_bank[i] = 0;
		end
		else if(counter == 4)begin
			nxt_out = bank[0];
			nxt_full = 0;
			nxt_empty = empty;
			nxt_counter = counter-1;
			for( i = 0; i < 4; i = i+1)
				nxt_bank[i] = bank[i+1];
			nxt_bank[counter-1] = 0;
		end
		else begin
			nxt_out = bank[0];
			nxt_full = full;
			if(counter == 1)
				nxt_empty = 1;
			else
				nxt_empty = 0;
			nxt_counter = counter-1;
			for( i = 0; i < counter-1; i = i+1)
				nxt_bank[i] = bank[i+1];
			nxt_bank[counter-1] = 0;
		end
	end
	else begin
		nxt_out = out;
		nxt_full = full;
		nxt_empty = empty;
		nxt_counter = counter;
		for( i = 0; i < 4; i = i+1)
			nxt_bank[i] = bank[i];
	end
end
endmodule


