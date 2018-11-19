class FlowMap

  include Stealth::Flow

	flow :flow_map do
		state :ask_example
		state :get_example
		state :say_yes_example
		state :say_no_example
	end


  flow :hello do
    state :say_hello
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end
  
end
