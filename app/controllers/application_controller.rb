class ApplicationController < ActionController::Base

  def blank_add_form
  render({ :template=> "calculation_templates/add_form.html.erb"})
  end

  def add_results
    render({ :template=> "calculation_templates/add_results.html.erb"})
    end

end
