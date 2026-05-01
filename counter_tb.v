`timescale 1ns / 1ps
module counter_tb;
reg clk;
reg rst;
wire [3:0]count;
counter_4bit dut(
.clk(clk),
.rst(rst),
.count(count)
);

always #5 clk =~clk;
initial begin
        // Setup waveform dump for Surfer
        $dumpfile("counter.vcd");
        $dumpvars(0, counter_tb);

        // Initialize signals
        clk = 0;
        rst = 1;

        // Hold reset for 12ns, then release
        #12 rst = 0;

        // Run for 200ns, then stop
        #200 $finish;
    end

endmodule
