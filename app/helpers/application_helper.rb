module ApplicationHelper
  def build_path_to_edit_for(obj)
    obj_name = obj.class.name.underscore
    send("edit_#{obj_name}_path", id: obj.id)
  end

  def build_path_to_destroy_for(obj)
    obj_name = obj.class.name.underscore
    send("#{obj_name}_path", id: obj.id)
  end
end
