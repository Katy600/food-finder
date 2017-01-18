class Restaurant

   @@filepath = nil #class variable for the file path
  def self.filepath=(path=nil)
    # @@filepath = File.join(APP_ROOT, path)
    @@filepath = path
  end

attr_accessor :name, :cuisine, :price
  def self.file_exists? #class method because it has self at the begining
  #restaurant class should know if the restaurant file exists
    if @@filepath && File.exists?(@@filepath)
      return true
    else
      return false
    end
  end

  def self.file_usable?
    return false unless @@filepath
    return false unless File.exists?(@@filepath)
    return false unless File.readable?(@@filepath)
    return false unless File.writable?(@@filepath)
    return true
  end

  def self.create_file
    File.open(@@filepath, 'w') unless file_exists?
    return file_usable?
    #create the restaurant file
  end

  def self.saved_restaurants
    #read the restaurant file
    #return instances of restaurant
  end

  def initialize(args={})
    @name     = args[:name]    || ""
    @cuisine  = args[:cuisine] || ""
    @price    = args[:price]   || ""
  end

  def save
    return false unless Restaurant.file_usable?
    File.open(@@filepath, 'a') do |file|
      file.puts "#{[@name, @cuisine, @price].join("\t")}\n"
    end
    return true
  end

end
