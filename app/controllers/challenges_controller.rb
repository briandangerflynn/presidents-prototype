class ChallengesController < ApplicationController
  def index

  end

  def show
    @team = Team.where(id: current_user.team_id).first
    @challenge = Challenge.find(params[:id])
    @presidents = President.where(challenge_id: @challenge.id)
    @victories = @presidents.where(defeated: true).all.order(:id)
    @challengers = @presidents.where(defeated: false).all.order(:id)
  end

  def defeat
    @president = President.where(id: params[:data]).first
    @president.update_attributes(defeated: true)
    @president.update_attributes(defeated_by: current_user.id)
  end

  def undo_defeat
    @president = President.where(id: params[:data]).first
    @president.update_attributes(defeated: false)
    @president.update_attributes(defeated_by: nil)
  end

  def new

  end

  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      @team = Team.where(id: @challenge.team_id).first
      add_presidents(@challenge)
      redirect_to "/teams/" + @team.id.to_s + "/challenges/" + @challenge.id.to_s
    else
      redirect_to new_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def challenge_params
    params.require(:challenge).permit(:team_id)
  end

end
