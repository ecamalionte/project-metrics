module ProjectsHelper

  def detect_alerts(project)
    return if project.blank?
    return 'progress-success' if project.progress_success?
    return 'progress-warning' if project.progress_warning?
    return 'progress-danger'  if project.progress_danger?
  end
end
