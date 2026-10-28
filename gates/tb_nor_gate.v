module testbench;

    reg t_a;
    reg t_b;

    wire t_y;

    nor_gate dut(
        .a(t_a),
        .b(t_b),
        .y(t_y)
    );
    
    initial begin
    
        $dumpfile("simulation.vcd"); // Name of the waveform file to create
        $dumpvars(0, testbench);     // Dump all signals in the testbench module
    
        t_a = 0;
        t_b = 0;
        #1
        $display("A=%b B=%b Y=%b", t_a, t_b, t_y);

        t_a = 0;
        t_b = 1;
        #1
        $display("A=%b B=%b Y=%b", t_a, t_b, t_y);

        t_a = 1;
        t_b = 0;
        #1
        $display("A=%b B=%b Y=%b", t_a, t_b, t_y);

        t_a = 1;
        t_b = 1;
        #1
        $display("A=%b B=%b Y=%b", t_a, t_b, t_y);

        $finish;

    end

endmodule
