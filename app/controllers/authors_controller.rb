class AuthorsController < ApplicationController
  before_action :set_author, only: [:edit, :update, :show]

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Author successfully created"
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @author.update(author_params)
      flash[:notice] = "Author successfully updated"
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  def destroy
    author= Author.find(params[:id])
    flash[:notice] = "Author destroyed"
  end

  private

  def set_author
    @author= Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:username, :email, :password)
  end
end
