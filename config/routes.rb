Rails.application.routes.draw do
  resources :pull_requests do
    collection do
      post :event
    end
  end
end
