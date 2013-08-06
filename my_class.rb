class ABC
  def self.someCallToMyExternalLibrary 
    puts "some call"
  end

  def self.ini
    return someCallToMyExternalLibrary
  end

  @@config = self.ini

  def method1
    return @@config['download_URL']
  end
end

