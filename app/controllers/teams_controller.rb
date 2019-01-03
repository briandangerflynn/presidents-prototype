class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @user = current_user
    if @user.team_id.blank?
      @team = Team.where(id: params[:id]).first
      if params[:password] && @team.authenticate(params[:password])
        @user.update_attributes(team_id: @team.id)
      end
    else
      @team = Team.where(id: @user.team_id).first
      @users = User.where(team_id: @team.id).all
      @new_challenge = Challenge.new
      @challenge = Challenge.where(team_id: @team.id).first
      if @challenge
        @presidents = President.where(challenge_id: @challenge.id).all
        @challengers = @presidents.where(defeated: false).all
        @victories = @presidents.where(defeated: true).all
      end
    end
  end

  def new
    @user = current_user
    if current_user.team_id == nil
      @team = Team.new
    else
      @team = Team.where(id: current_user.team_id).first
      redirect_to @team
    end
  end

  def join
    if params[:teamname]
      @teams = Team.where(teamname: params[:teamname]).all
    end
  end

  def create
    @user = current_user
    @team = Team.new(team_params)
    if @team.save
      @user.update_attributes(team_id: @team.id)
      redirect_to @team
    else
      redirect_to new_team_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def team_params
    params.require(:team).permit(:teamname, :password, :password_confirmation, :defeated)
  end

end
