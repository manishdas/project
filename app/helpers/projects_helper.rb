module ProjectsHelper
  def project_links(project)
    content_tag :h3 do
      [
        link_to(" #{project.name}", project_path(project)),
        link_to_icon("show",project_path(project)),
        link_to_icon("edit", edit_project_path(project)),
        link_to_icon("destroy", project_path(project), :method => :delete, :confirm => "Do you really want to destroy?"),
        ].join(' ').html_safe
      end
    end

end
