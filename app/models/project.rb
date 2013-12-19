class Project < ActiveRecord::Base

  RISK_LIMIT_RATE = 50

  def consumed_in_days
    return 0 unless started_on
    (Date.today - started_on).to_i
  end

  def total_of_days
    return 0 if dead_line.blank? || started_on.blank?
    total = dead_line - started_on
  end

  def consumed_time_rate
    return 0 if total_of_days.blank? || consumed_in_days.blank?
    consumed = ((consumed_in_days / total_of_days).to_f * 100).to_i
  end

  def progress_success?
    return true if status >= consumed_time_rate
  end

  def progress_warning?
    return true if status < consumed_time_rate && consumed_time_rate <= RISK_LIMIT_RATE
  end

  def progress_danger?
    return true if status < consumed_time_rate && consumed_time_rate > RISK_LIMIT_RATE
  end
end
