require 'restaurant'
class Guide

  def initialize(path=nil)
     Restaurant.filepath = path
    if Restaurant.file_usable?
      puts "Found restaurant file"
    elsif Restaurant.create_file
      puts "Created restaurant file"
    else
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction
    #action loop
    result = nil
    until result == :quit
      action = get_action
      result = do_action(action)
    end
    conclusion
  end

  def get_action
    print "> "
    user_response = gets.chomp
    action = user_response.downcase.strip
    return action
  end

  def do_action(action)
    case action
    when 'list'
      puts 'Listing...'
    when 'find'
      puts 'Finding...'
    when 'add'
      puts 'Adding...'
    when 'quit'
      return :quit
    else
      puts "\n I don't understand that command.\n"
    end
  end

  def introduction
    puts "\n\n<<<Welcome to food finder>>>\n\n"
    puts "This is an interactive guide to help you find the food that you crave.\n\n"
  end

  def conclusion
    puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
  end
end
