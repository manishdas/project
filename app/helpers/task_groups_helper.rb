module TaskGroupsHelper

  def task_group_links(task_group)
    content_tag :h3 do
      [
        link_to(" #{task_group.task_name}", project_task_groups_path(task_group)),
        link_to_icon("show",project_path(task_group)),
        link_to_icon("edit", edit_project_path(task_group)),
        link_to_icon("destroy", project_path(task_group), :method => :delete, :confirm => "Do you really want to destroy?"),
        ].join(' ').html_safe
      end
    end

end
