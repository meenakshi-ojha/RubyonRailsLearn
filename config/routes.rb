Rails.application.routes.draw do
  # get "/students", to: "students#index"
  # get "/students/:id", to:"students#show"
  
  # get 'students/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "departments#index"
  resources:departments do
    resources:courses
    resources:students
  end

end
