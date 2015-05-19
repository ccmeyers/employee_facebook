Refinery::Core::Engine.routes.draw do

  # Admin routes
  namespace :employee_skills, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :employee_skills, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
