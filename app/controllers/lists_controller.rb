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
    redirect_to '/top'
  end
  

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
