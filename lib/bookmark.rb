class Bookmark

  def self.create
    @@bookmarklist = []
  end

  def self.all 
    @@bookmarklist
  end

  def initialize
    @@bookmarklist << self
  end

  
end
