require File.expand_path("../../lib/portfolio.rb", __FILE__)

Refinery::Application.routes.draw do
  # Make sure you restart your web server after changing the multi level setting.
  if ::Refinery::Portfolio.multi_level?
    match "/portfolio/:id/projects/:portfolio_id",
          :as => :portfolio_project,
          :to => "portfolio#show"

    match "/portfolio/:id/projects/:portfolio_id/:image_id",
          :as => :portfolio_image,
          :to => "portfolio#show"
  else
    match "/portfolio/:id",
          :as => :portfolio_project,
          :to => "portfolio#show"

    match "/portfolio/:id/:image_id",
          :as => :portfolio_image,
          :to => "portfolio#show"
  end

  match '/portfolio/:id', :as => 'portfolio', :to => 'portfolio#show'

  resources :portfolio do
    resources :portfiolio, :as => :portfolio
  end

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :portfolio, :as => :portfolio_entries do
      member do
        get :emancipate
      end
      collection do
        post :update_positions
      end
    end
  end

end
