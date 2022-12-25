Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :customers, controllers: {
    sessions: 'customer/sessions',
    registrations: 'customer/registrations'
  }
  root to: 'pages#home'

  # namespace :admin doとすることで、パスに"admin/"が付与される
  # "admin/products"を意味するようになる。
  # rails routes -g producs 参照のこと
  namespace :admin do
    root to: 'pages#home'
    resources :products, only: %i[index show new create edit update]
    resources :orders, only: %i[show update]
    resources :customers, only: %i[index show update]
  end

  # scope moduleで囲むと、ファイル構成は"customer/"になるが、URLは"customer/"にならない
  # ファイル階層的にはcustomerだが、URLには出さない
  scope module: :customer do
    resources :products, only: %i[index show]

    resources :cart_items, only: %i[index create destroy] do
      # member do
      # memberメソッドを使うとidが含まれているURLを扱えるようになります
      # /cart_items/:id/increase(.:format) など
      member do
        # patch=一部修正 put=冪等(全上書き) post=新規作成
        patch 'increase'
        patch 'decrease'
      end
    end

    resources :checkouts, only: [:create]
    resources :webhooks, only: [:create]

    resources :orders, only: %i[index show] do
      # collection do
      # member do と異なり、生成されるパスに:idが付与されない
      # /orders/success というパスになる
      collection do
        get 'success'
      end
    end
  end

  get '/up/', to: 'up#index', as: :up
  get '/up/databases', to: 'up#databases', as: :up_databases

  # Sidekiq has a web dashboard which you can enable below. It's turned off by
  # default because you very likely wouldn't want this to be available to
  # everyone in production.
  #
  # Uncomment the 2 lines below to enable the dashboard WITHOUT authentication,
  # but be careful because even anonymous web visitors will be able to see it!
  # require "sidekiq/web"
  # mount Sidekiq::Web => "/sidekiq"
  #
  # If you add Devise to this project and happen to have an admin? attribute
  # on your user you can uncomment the 4 lines below to only allow access to
  # the dashboard if you're an admin. Feel free to adjust things as needed.
  # require "sidekiq/web"
  # authenticate :user, lambda { |u| u.admin? } do
  #   mount Sidekiq::Web => "/sidekiq"
  # end

  # Learn more about this file at: https://guides.rubyonrails.org/routing.html
end
