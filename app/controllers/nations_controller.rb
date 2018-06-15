class NationsController < ApplicationController

  def index
    @nations = Nation.all
  end

  def show
    @nation = Nation.find(params[:id])
  end

  def new
    @nation = Nation.new()
  end

  def edit
    @nation = Nation.find(params[:id])
  end

  def create
    @nation = Nation.create(nation_params)
    redirect_to @nation
  end

  def update
      @nation = Nation.find(params[:id])
      @nation.update(nation_params)
      redirect_to @nation
  end

  def destroy
  end

  private

  def nation_params
    params.require(:nation).permit(:name, :continent, :native_language_english, :demonym)
  end

end
