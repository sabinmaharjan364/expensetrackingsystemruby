Rails.application.routes.draw do
  resources :incomes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do 
    resources :expense_categories, controller: :expense_categories, type: 'Expense'
    resources :income_categories, controller: :income_categories, type: 'Income'
  end
  resources :expenses
end
