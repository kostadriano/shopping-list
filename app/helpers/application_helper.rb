module ApplicationHelper
  def flash_class(level)
    case level.to_sym
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-error"
    end
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) +
    link_to(name, "javascript:void(0)", onclick: "remove_fields(this)")
  end

  def link_to_add_fields(f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, child_index: "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end

    link_to('+', "javascript:void(0)", onclick: h("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"), class: 'btn btn-secondary')
  end
end
