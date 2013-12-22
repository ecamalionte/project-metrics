class Project < ActiveRecord::Base
  RISK_LIMIT_RATE = 50

  validates :title, :started_at, :dead_line_at, presence: true
  validates :progress_rate, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
  validate :dead_line_cannot_be_in_the_past, :dead_line_cannot_be_less_than_start

  #validations
  def dead_line_cannot_be_in_the_past
    if dead_line_at.present? && dead_line_at < Date.today
      errors.add(:dead_line_at, "can't be in the past")
    end
  end

  def dead_line_cannot_be_less_than_start
    if dead_line_at.present? && started_at.present?
      errors.add(:dead_line_at, "can't be less than started_at ") if dead_line_at < started_at
    end
  end

  #business
  def consumed_in_days
    return nil unless  started_at
    (Date.today -  started_at).to_i
  end

  def total_of_days
    return nil if  dead_line_at.blank? ||  started_at.blank?
    total =  dead_line_at -  started_at
  end

  def consumed_time_rate
    return 0 if total_of_days.blank? || total_of_days == 0 || consumed_in_days.blank?
    consumed = ((consumed_in_days / total_of_days).to_f * 100).to_i
  end

  def progress_success?
    return 0 unless progress_rate
    return true if progress_rate >= consumed_time_rate
  end

  def progress_warning?
    return 0 unless progress_rate
    return true if progress_rate < consumed_time_rate && consumed_time_rate <= RISK_LIMIT_RATE
  end

  def progress_danger?
    return 0 unless progress_rate
    return true if progress_rate < consumed_time_rate && consumed_time_rate > RISK_LIMIT_RATE
  end
end
