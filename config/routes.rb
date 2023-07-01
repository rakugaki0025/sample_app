Rails.application.routes.draw do

  get '/top' => 'homes#top'          # topページ？
  resources :lists                   # 7項目の投稿を有する(new,show,index,edit,create,destroy,update)

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end

