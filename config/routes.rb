Rails.application.routes.draw do

  get("/add", ({ :controller=> "application", :action=>"blank_add_form"}))
  get("/subtract", ({ :controller=> "application", :action=>"blank_subtract_form"}))
  get("/multiply", ({ :controller=> "application", :action=>"blank_multiply_form"}))
  get("/divide", ({ :controller=> "application", :action=>"blank_divide_form"}))

  get("/wizard_add", ({ :controller=> "application", :action=>"add_results"}))
  get("/wizard_subtract", ({ :controller=> "application", :action=>"subtract_results"}))
  get("/wizard_multiply", ({ :controller=> "application", :action=>"multiply_results"}))
  get("/wizard_divide", ({ :controller=> "application", :action=>"divide_results"}))

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
