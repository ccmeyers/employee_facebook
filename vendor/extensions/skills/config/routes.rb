Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :skills do
    resources :skills, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :skills, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :skills, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
