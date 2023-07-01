class ListsController < ApplicationController
  def new
    @list = List.new                       
      # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
  end

  def create
      # 
    @list = List.new(list_params)       # list=インスタンス変数.new(引数) 
        # １. データを受け取り新規登録するためのインスタンス作成
    if @list.save
        # 2. データをデータベースに保存するためのsaveメソッド実行
      flash[:notice] = "投稿が成功しました"
        # 3. フラッシュメッセージを定義し、詳細画面へリダイレクト
      redirect_to list_path(@list.id)
        # 
    else
      @lists = List.all
      render :new
        #
    end
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
  
  def update
    list = List.find(params[:id])
      # インスタンス変数=メソッド[:idカラム]　単数
    list.update(list_params)
    redirect_to list_path(list.id)

  end
  
  def destroy
        # 削除ボタン
    list = List.find(params[:id])  # データ（レコード）を1件取得
    list.destroy                   # データ（レコード）を削除
    redirect_to '/lists'           # 投稿一覧画面へリダイレクト  
  end
  
  
  
  private
  
  def list_params
        # ストロングパラメータ
    params.require(:list).permit(:title, :body, :image)
      #  imageのデータの取得を許可
  end
  
end


