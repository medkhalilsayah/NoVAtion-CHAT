class Api::V1::ArticlesController < ApplicationController
  def index

  end

  def show
  end

  def create
    article = Article.new(
      title: arti_params[:title],
      body: arti_params [ :body],
      user_id: arti_params[:user_id]
      company_id: arti_params[:company_id]
    )
    if @article.save
      render json: article, status: 200
      #redirect_to @article
    else
      #render :new, status: :unprocessable_entity
      render json: {  error: "Error..."}
    end
  end

  def update
  end

  def destroy
  end

  private

  def arti_params
    params.require(:article).permit(:title, :body, :user_id ,:company_id)
  end

end
