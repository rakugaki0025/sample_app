class ListsController < ApplicationController
  def new
    @list = List.new                       
      # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
  end

  def create
      # 
    list = List.new(list_params)            # list=変数.new(引数) 
      # １.&2. データを受け取り新規登録するためのインスタンス作成
    list.save
      # 3. データをデータベースに保存するためのsaveメソッド実行
    redirect_to '/top'
      # 4. トップ画面へリダイレクト(遷移)
      
  end
  
  def index
    @lists = List.all
      # インスタンス変数=listsテーブル全(変数へ代入)
  end

  def show
  end

  def edit
  end
  
  private
  
  def list_params
        # ストロングパラメータ
    params.require(:list).permit(:title, :body)
  end
  
end


