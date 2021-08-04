class SkillsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    logger.debug "User hash: #{@user}"
    @skill = @user.skills.create(skill_params)
    redirect_to user_path(@user)
  end

  private
    def skill_params
      params.require(:skill).permit(:name, :desc)
    end
end
