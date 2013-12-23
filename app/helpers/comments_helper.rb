module CommentsHelper
  def build_action_for_comment(comment)
    if comment && comment.id
      build_path_comment comment
    else
      build_path_comments
    end
  end

  def build_path_comments_for(commentable)
    commentable_name = commentable.class.name.underscore
    send("#{commentable_name}_comments_path", "#{commentable_name}_id" => commentable.id)
  end

  def build_path_comments
    commentable_name = @commentable.class.name.underscore
    send("#{commentable_name}_comments_path")
  end

  def build_path_new_comment
    commentable_name = @commentable.class.name.underscore
    send("new_#{commentable_name}_comment_path")
  end

  def build_path_edit_comment comment
    commentable_name = @commentable.class.name.underscore
    send("edit_#{commentable_name}_comment_path", id: comment.id)
  end

  def build_path_comment comment
    commentable_name = @commentable.class.name.underscore
    send("#{commentable_name}_comment_path", id: comment.id)
  end
end
