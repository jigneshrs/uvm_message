// Class for message sender

class message_sender extends uvm_scoreboard;
	`uvm_component_utils(message_sender)

	uvm_analysis_port #(string) msg;
	//uvm_analysis_port #(int) msg1;


	function new (string name="message_sender",uvm_component parent=null);
		super.new(name,parent);
	endfunction

	function void build_phase(uvm_phase phase);
		$display("Hey, I am in sending build phase !!!");
		msg=new("Sending_port",this);
		//msg1=new("Sending_port1",this);
	endfunction

	task run_phase(uvm_phase phase);
		for(integer i=1; i <=20; i=i+1) begin
			string s= $sformatf("%0d Jignesh",i);
			msg.write(s);
			//msg1.write(i);
			
		end		
	endtask : run_phase
	


endclass : message_sender
