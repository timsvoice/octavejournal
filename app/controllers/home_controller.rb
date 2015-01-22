class HomeController < ApplicationController
  def index
    @articles = Article.order('created_at desc')
    @issues = Issue.order('created_at desc')
  end
end
