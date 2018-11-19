class FlowMapsController < BotController

  def ask_example
    send_replies
    update_session_to_next
  end

  def get_example
    if current_message.message == 'Yes'
      step_to state: 'say_yes_example'
    elsif current_message.message == 'No'
      step_to state: 'say_no_example'
    end
  end

  def say_hello
    send_replies
  end

  def say_yes_example
    send_replies
    update_session_to state: 'ask_example'
  end

  def say_no_example
    send_replies
    update_session_to state: 'ask_example'
  end

end
