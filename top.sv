
`include "uvm.sv"
`include "message_pkg.sv";

module top();
import uvm_pkg::*;

initial begin
	run_test("message_test");
end

endmodule : top

