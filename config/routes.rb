Rails.application.routes.draw do
  get 'lists/new'                    # 
  post 'lists' => 'lists#create'     # データ追加(保存)ルーティング
  get 'lists' => 'lists#index'       # indexアクション ルーティング
                                     # 
  get 'lists/edit'                   # 
  get '/top' => 'homes#top'          # topページ？
  post 'lists' => 'lists#create'     # 
  get 'lists' => 'lists#index'       # 
    # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
