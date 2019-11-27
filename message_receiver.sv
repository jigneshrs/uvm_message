// Class for message receiver

class message_receiver extends uvm_scoreboard;
	`uvm_component_utils(message_receiver)

	uvm_analysis_imp #(string,message_receiver) recv;
	//uvm_analysis_imp #(int,message_receiver) recv1;	

	function new (string name="message_receiver", uvm_component parent=null);
		super.new(name,parent);
	endfunction

	function void build_phase(uvm_phase phase);
		$display("Hey, I am in receiving build phase!!!");
		recv=new("Receive_port",this);
		//recv1=new("Receive_port1",this);
	endfunction : build_phase

	function void write(string something);
		$display("Message : %s",something);
	endfunction : write


endclass : message_receiver
