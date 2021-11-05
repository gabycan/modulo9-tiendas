Rails.application.routes.draw do
  # namespace :admin do
  #   get 'status',               to: 'status#index',       as: 'status'
  #   get 'status/new',           to: 'status#new',         as: 'new_status'
  #   get 'status/:id',           to: 'status#show',        as: 'status'
  #   get 'status/:id/edit',      to: 'status#edit',        as: 'edit_status'
  # end
  namespace :admin do
    get 'orders',               to: 'orders#index',       as: 'orders'
    get 'orders/new',           to: 'orders#new',         as: 'new_order'
    get 'orders/:id',           to: 'orders#show',        as: 'order'
    get 'orders/:id/edit',      to: 'orders#edit',        as: 'edit_order'
  end
  namespace :admin do
    get 'users',                to: 'users#index',        as: 'users'
    get 'users/new',            to: 'users#new',          as: 'new_user'
    get 'users/:id',            to: 'users#show',         as: 'user'
    get 'users/:id/edit',       to: 'users#edit',         as: 'edit_user'
  end
  namespace :admin do
    get 'roles',                to: 'roles#index',        as: 'roles'
    get 'roles/new',            to: 'roles#new',          as: 'new_rol'
    get 'roles/:id',            to: 'roles#show',         as: 'rol'
    get 'roles/:id/edit',       to: 'roles#edit',         as: 'edit_rol'
  end
  namespace :admin do
    get 'products',             to: 'products#index',     as: 'products'
    get 'products/new',         to: 'products#new',       as: 'new_product'
    get 'products/:id',         to: 'products#show',      as: 'product'
    get 'products/:id/edit',    to: 'products#edit',      as: 'edit_product'
  end
  namespace :admin do
    get 'categories',           to: 'categories#index',   as: 'categories'
    get 'categories/new',       to: 'categories#new',     as: 'new_category'
    get 'categories/:id',       to: 'categories#show',    as: 'category'
    get 'categories/:id/edit',  to: 'categories#edit',    as: 'edit_category'

    post    'categories',       to: 'categories#create',
    put     'categories/:id',   to: 'categories#update',
    patch   'categories/:id',   to: 'categories#update',
    delete  'categories/:id',   to: 'categories#destroy',
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
