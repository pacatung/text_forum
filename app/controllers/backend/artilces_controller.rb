class Backend::ArtilcesController < ApplicationController

before_action
  def index

  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destriy

  end

private

  def article_params
    params.require(:article).permit(:title, :content)
  end


end