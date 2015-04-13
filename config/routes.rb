Rails.application.routes.draw do
  resources :pull_requests, only: [] do
    collection do
      post :event
    end
  end

  resources :pushs, only: [] do
    collection do
      post :event
    end
  end
end
