//Dut
module case_and_logical (case_equal, case_inequal, logcal_equal, logical_inequal, a, b) ;
input [3:0]a,b;
output case_equal, case_inequal, logcal_equal, logical_inequal;

assign case_equal = (a === b);
assign case_inequal = (a !== b) ;

assign logcal_equal = (a == b);
assign logical_inequal = (a != b) ;

endmodule

//Test bench
module log_case_tb();
reg [3:0]a, b;
wire case_equal, case_inequal, logcal_equal, logical_inequal;

case_and_logical viswa (case_equal, case_inequal, logcal_equal, logical_inequal, a, b) ;
initial begin
 $monitor("Time=%0t | A=%b | B=%b | Case Equal=%b | Case Inequal=%b | Logical Equal=%b | Logical Inequal=%b",
    $time, a, b, case_equal, case_inequal, logical_equal, logical_inequal);

  #5 a=4'b0011; b=4'b0011;
#5 a=4'b1011; b=4'b1101;
end

endmodule
