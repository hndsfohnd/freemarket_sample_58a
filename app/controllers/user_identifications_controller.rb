class UserIdentificationsController < ApplicationController
  def new
    
  end

  def create
    @user_identification = UserIdentification.new(useridentification_params)

    if @user_identification.save
      redirect_to root_path
    else
      redirect_to user_identifications_new_path
    end

  end

  private
  def useridentification_params
    params.permit(:post_number,:prefecture,:city,:block,:building,:telnumber).merge(user_id: current_user.id)
  end

end
