module ApplicationHelper
  def build_path_to_edit_for(obj)
    obj_name = obj.class.name.underscore
    send("edit_#{obj_name}_path", id: obj.id)
  end

  def build_path_to_destroy_for(obj)
    obj_name = obj.class.name.underscore
    send("#{obj_name}_path", id: obj.id)
  end

  def build_path_to_destroy_for(obj)
    obj_name = obj.class.name.underscore
    send("#{obj_name}_path", id: obj.id)
  end

  def detect_priority_button(priority_name)
    return '' if priority_name.blank?
    return 'btn-inverse' if priority_name == :urgent
    return 'btn-danger'  if priority_name == :important
    return 'btn-warning' if priority_name == :relevant
    return 'btn-success' if priority_name == :wanted
    return 'btn-primary' if priority_name == :unwanted
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
