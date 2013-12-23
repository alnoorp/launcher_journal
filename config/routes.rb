LauncherJournal::Application.routes.draw do

  root to: 'entries#index'

  resources :entries

  get 'categories' => 'categories#index'

  # resources :categories, only: [:index, :show, :new, :edit, :destroy, :create] do
  #   get 'search', on: :collection
  # end
  resources :categories

end
