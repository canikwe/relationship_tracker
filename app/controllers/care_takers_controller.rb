class CareTakersController < ApplicationController
  before_action :get_care_taker, only: [:show, :edit, :destroy, :update]

  def index
    @care_takers = CareTaker.all
  end

  def show
  end

  def new
    @care_taker = CareTaker.new
    @kid = @care_taker.kids.build(name: "name")
  end

  def create
    @care_taker = CareTaker.new(get_params)
    if @care_taker.save
      redirect_to @care_taker
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @care_taker.update(get_params)
      redirect_to @care_taker
    else
      render :edit
    end
  end

  def destroy
    @care_taker.destroy
    redirect_to care_takers_path
  end

  private

  def get_care_taker
    @care_taker = CareTaker.find(params[:id])
  end

  def get_params
    params.require(:care_taker).permit(:name, :age, :job, kids_attributes: [:name, :age, :hobby, :adult])
  end

end
