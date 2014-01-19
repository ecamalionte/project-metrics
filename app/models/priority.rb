class Priority
  MAP = {
    urgent:    5,
    important: 4,
    relevant:  3,
    wanted:    2,
    unwanted:  1,
  }

  def self.get_weight(priority)
    MAP[priority]
  end

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
