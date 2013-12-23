LauncherJournal::Application.routes.draw do

  root to: 'entries#index'

  resources :entries, only: [:index, :show, :new, :create] do
    get 'search', on: :collection
  end

  get 'categories' => 'categories#index'

  resources :categories, only: [:index, :show, :new, :create] do
    get 'search', on: :collection
  end

end
