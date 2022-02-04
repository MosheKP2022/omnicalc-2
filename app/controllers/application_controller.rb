class ApplicationController < ActionController::Base

  def blank_add_form
  render({ :template=> "calculation_templates/add_form.html.erb"})
  end

  def add_results
    @num1 = params.fetch("first_num").to_f
    @num2= params.fetch("second_num").to_f
    @result = @num1+@num2
    render({ :template=> "calculation_templates/add_results.html.erb"})
    end

    def blank_subtract_form
      render({ :template=> "calculation_templates/subtract_form.html.erb"})
      end

      def subtract_results
        render({ :template=> "calculation_templates/subtract_results.html.erb"})
        end

        def blank_multiply_form
          render({ :template=> "calculation_templates/multiply_form"})
        end

        def multiply_results
          render ({ :template=> "calculation_templates/multiply_results"})
        end

        def blank_divide_form
          render ({ :template => "calculation_templates/divide_form"})
        end

        def divide_results
          render ({ :template=> "calculation_templates/divide_results"})
        end
end
