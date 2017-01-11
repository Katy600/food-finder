class Guide
attr_reader :restaurants

  def initialize(path=nil)
    @restaurants
  end

  def launch!
    introduction
    #action loop
    #What do you want to do?(list, find, add, quit)
    #do that action
    #repeat until user quits
    conclusion
  end

  def introduction
    puts "\n\n<<<Welcome to food finder>>>\n\n"
    puts "This is an interactive guide to help you find the food that you crave.\n\n"
  end

  def conclusion
    puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
  end
end
