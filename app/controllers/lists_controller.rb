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
    redirect_to list_path(list.id)
      # 4. 詳細画面へリダイレクト(遷移)
      
  end
  
  def index
    @lists = List.all
      # インスタンス変数=listsテーブル全(変数へ代入) 複数
  end

  def show
    @list = List.find(params[:id])
      # インスタンス変数=メソッド[:idカラム]　単数
  end

  def edit
    @list = List.find(params[:id])
      # インスタンス変数=メソッド[:idカラム]　単数
  end
  
  private
  
  def list_params
        # ストロングパラメータ
    params.require(:list).permit(:title, :body)
  end
  
end


