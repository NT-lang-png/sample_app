class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成する。
    @list = List.new
  end
  
  def create
    # １、＆２　データを受け取って新規登録するためのインスタンス作成
    list = List.new(list_params)
    # ３データをデータベースに保存するためのsaveメソッド実行
    list.save
    # ４　トップ画面へリダイレクト
    redirect_to list_path(list.id)
  end
  

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
