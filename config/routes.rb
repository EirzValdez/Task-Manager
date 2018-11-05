Rails.application.routes.draw do
  

  root :to => 'Tasks#index' #Writing the contoller name seperated by '#' and the action(method) name.

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :tasks
end
