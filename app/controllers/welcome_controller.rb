class WelcomeController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @posts = Post.all
  end
end
