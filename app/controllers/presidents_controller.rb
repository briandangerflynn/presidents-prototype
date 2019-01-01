class PresidentsController < ApplicationController
  def index

  end

  def show
    @president = President.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def president_params
    params.require(:president).permit(:name, :presidency, :years_active, :drink_type, :specific_drink, :alt_one, :alt_two, :challenge_id, :defeated, :image_url, :defeated_by)
  end

end


