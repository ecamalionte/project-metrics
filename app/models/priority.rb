class Priority
  attr_accessor :id, :type

  MAP = {
    urgent:    5,
    important: 4,
    relevant:  3,
    wanted:    2,
    unwanted:  1,
  }

  def initialize(id, type)
    self.id = id
    self.type = type
  end

  def self.get_weight(type)
    return -1 if type == :unwanted
    MAP[type]
  end

  def self.get_instance(id)
    Priority.new id, MAP.invert[id]
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
