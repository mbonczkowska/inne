Library::Application.routes.draw do
  resources :books do
    member do
      get 'crop'
    end
  end
  # get 'books/:id/crop', to: 'books#crop', as: :crop_book

  get 'tags/:tag', to: 'books#index', as: :tag

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'books#index'
end
