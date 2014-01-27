module ApplicationHelper
  def build_path_to_edit_for(obj)
    obj_name = obj.class.name.underscore
    send("edit_#{obj_name}_path", id: obj.id)
  end

  def build_path_to_destroy_for(obj)
    obj_name = obj.class.name.underscore
    send("#{obj_name}_path", id: obj.id)
  end

  def detect_priority_label(project)
    priority_name = project.priority[:winner]
    return if priority_name.blank?
    return 'label label-inverse'    if priority_name == :urgent
    return 'label label-important'  if priority_name == :important
    return 'label label-warning'    if priority_name == :relevant
    return 'label label-success'    if priority_name == :wanted
    return 'label label-info'       if priority_name == :unwanted
  end

  def humanize_priority(priority_name)
    if priority_name
      I18n.t("priority.#{priority_name}")
    else
      I18n.t("priority.pending")
    end
  end

  def can_settings?
    (can? :manage, Group) && (can? :manage, Invitation)
  end
end
