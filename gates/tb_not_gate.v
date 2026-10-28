module testbench;
    reg t_a;

    wire t_y;

    not_gate dut(
        .a(t_a),
        .y(t_y)
    );

    initial begin 
    
        $dumpfile("simulation.vcd"); // Name of the waveform file to create
        $dumpvars(0, testbench);     // Dump all signals in the testbench module 

        t_a = 0;
        #1
        $display("A=%b Y=%b", t_a, t_y);

        t_a = 1;
        #1
        $display("A=%b Y=%b", t_a, t_y);

        $finish;
     end
endmodule
