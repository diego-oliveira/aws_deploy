Rails.application.routes.draw do  
  if Rails.env == "development" || Rails.env == "staging"
    namespace :aws_deploy do 
      root :to => 'home#index', :as => :root_awsdeploy
      match "/send_to_production"  => "index#send_to_production", :as => :send_to_production_awsdeploy, via: [:post]
    end
  end
end





