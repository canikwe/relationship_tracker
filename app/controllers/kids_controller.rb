class KidsController < ApplicationController

  before_action :get_kid, only: [:show, :edit, :destroy, :update]

  def show
  end

  def index
    @kids = Kid.all
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      redirect_to @kid
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @kid.update(kid_params)
      redirect_to @kid
    else render :edit
    end
  end

  def destroy
    @kid.delete
    redirect_to kids_path
  end


  private
  def get_kid
    @kid = Kid.find(params[:id])
  end

  def kid_params
    params.require(:kid).permit(:name, :age, :hobby, :adult)
  end
end
