Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :movies
    end
    namespace 'v2' do
      resources :homeapi
    end
  end
end
