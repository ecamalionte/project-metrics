module ProjectsHelper
  def calculate_spent_time(project)
    if project.dead_line && project.started_on
      total = project.dead_line - project.started_on
      current = Date.today - project.started_on
      spent = ((current/total).to_f * 100).to_i
    end
  end

  def detect_alerts(project)
    spent_time = calculate_spent_time(project)
    return if project.status.blank? && spent_time.blank?
    return 'progress-success'  if project.status >= spent_time
    return 'progress-warning' if project.status < spent_time && spent_time <= 50
    return 'progress-danger'  if project.status < spent_time && spent_time > 50
  end
end
