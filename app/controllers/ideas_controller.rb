class IdeasController < ApplicationController
  def index
    # 配列からランダムに要素を取り出す
    @ideas = Idea.all.sample(7)
  end
end