class Priority
  MAP = {
    urgent:    4,
    important: 3,
    relevant:  2,
    wanted:    1,
    unwanted:  0,
  }

  def self.urgent
    MAP[:urgent]
  end

  def self.important
    MAP[:important]
  end

  def self.relevant
    MAP[:relevant]
  end

  def self.wanted
    MAP[:wanted]
  end

  def self.unwanted
    MAP[:unwanted]
  end
end
