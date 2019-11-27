// Class for message test

class message_test extends uvm_test;
	`uvm_component_utils(message_test)

	message_sender sender;
	message_receiver receiver;
	
	
	function new (string name="message_test", uvm_component parent=null);
		super.new(name,parent);
	endfunction : new

	function void build_phase(uvm_phase phase);
		sender=message_sender::type_id::create("sender",this);
		receiver=message_receiver::type_id::create("receiver",this);
	endfunction : build_phase

	function void connect_phase(uvm_phase phase);
		sender.msg.connect(receiver.recv);
		//sender.msg1.connect(receiver.recv1);
	endfunction : connect_phase

	task run_phase(uvm_phase phase);
		phase.raise_objection(this,"be yaar, su chale ?");
		#20;
		phase.drop_objection(this,"abe tu kem che ?");
	endtask : run_phase


endclass : message_test
