Rails.application.routes.draw do
  get 'lists/new'                    # 
  post 'lists' => 'lists#create'     # データ追加(保存)ルーティング
  get 'lists' => 'lists#index'       # indexアクション ルーティング
  get 'lists/show'                   # 
  get 'lists/edit'                   # 
  get '/top' => 'homes#top'          # topページ？
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
