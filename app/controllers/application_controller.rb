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
        @num1 = params.fetch("first_num").to_f
        @num2= params.fetch("second_num").to_f
        @result = @num1-@num2
        
        
        render({ :template=> "calculation_templates/subtract_results.html.erb"})


        end

        def blank_multiply_form
          render({ :template=> "calculation_templates/multiply_form"})
        end

        def multiply_results
          @num1 = params.fetch("first_num").to_f
          @num2= params.fetch("second_num").to_f
          @result = @num1*@num2
          render ({ :template=> "calculation_templates/multiply_results"})
        end

        def blank_divide_form
          render ({ :template => "calculation_templates/divide_form"})
        end

        def divide_results
          @num1 = params.fetch("first_num").to_f
          @num2= params.fetch("second_num").to_f
          @result = @num1/@num2
          render ({ :template=> "calculation_templates/divide_results"})
        end


        def street_to_coords_results
          # Parameters: {"user_street_address"=>"Merchandise Mart, Chicago"}
      
          @street_address = params.fetch("user_street_address")
      
          @maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @street_address + "&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY"
      
          @raw_json_string = open(@maps_url).read
      
          @parsed_json = JSON.parse(@raw_json_string)
      
          @results_array = @parsed_json.fetch("results")
      
          @first_result = @results_array.at(0)
          
          @geometry_hash = @first_result.fetch("geometry")
      
          @location_hash = @geometry_hash.fetch("location")
      
          @latitude = @location_hash.fetch("lat")
          @longitude = @location_hash.fetch("lng")
      
          render({ :template=> "weather_templates/street_to_coords_results.html.erb"})
        end
end
