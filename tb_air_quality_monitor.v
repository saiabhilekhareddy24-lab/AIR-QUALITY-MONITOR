`timescale 1ns/1ps

module tb_air_quality_monitor;

    reg  [7:0] air_quality;
    wire [1:0] air_status;
    wire       alert;

    air_quality_monitor uut (
        .air_quality(air_quality),
        .air_status(air_status),
        .alert(alert)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_air_quality_monitor);

        $display("==============================================");
        $display("       AIR QUALITY MONITOR SIMULATION");
        $display("==============================================");
        $display("Time\tAir Value\tStatus\t\tAlert");
        $display("----------------------------------------------");

        air_quality = 8'd30;
        #10;
        $display("%0t\t%d\t\tGOOD\t\t%b",
                 $time, air_quality, alert);

        air_quality = 8'd50;
        #10;
        $display("%0t\t%d\t\tGOOD\t\t%b",
                 $time, air_quality, alert);

        air_quality = 8'd75;
        #10;
        $display("%0t\t%d\t\tMODERATE\t%b",
                 $time, air_quality, alert);

        air_quality = 8'd100;
        #10;
        $display("%0t\t%d\t\tMODERATE\t%b",
                 $time, air_quality, alert);

        air_quality = 8'd120;
        #10;
        $display("%0t\t%d\t\tPOOR\t\t%b",
                 $time, air_quality, alert);

        air_quality = 8'd180;
        #10;
        $display("%0t\t%d\t\tPOOR\t\t%b",
                 $time, air_quality, alert);

        $display("----------------------------------------------");
        $display("Simulation completed successfully.");
        $display("==============================================");

        $finish;
    end

endmodule
