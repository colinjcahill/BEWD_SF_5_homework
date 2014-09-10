Games::Application.routes.draw do
  get 'rock_paper_scissors/new'

  get 'rock_paper_scissors/show'

  get 'rock_paper_scissors/index'

  root 'games#index'
  
  resources 'games', only: [:index]
  resources "secret_numbers", only: [:new, :show]
end
