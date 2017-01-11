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
    loop do
      #What do you want to do?(list, find, add, quit)
      print "> "
      user_response = gets.chomp
      #do that action
      result = do_action(user_response)
      #repeat until user quits
      break if result == :quit
    end
    conclusion
  end

  def user_response(action)
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
