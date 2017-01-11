class Restaurant

  @@filepath = nil #class variable for the file path
  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end

  def self.file_exists? #class method because it has self at the begining
  #restaurant class should know if the restaurant file exists
  end

  def self.create_file
    #create the restaurant file
  end

  def self.saved_restaurants
    #read the restaurant file
    #return instances of restaurant
  end
end
