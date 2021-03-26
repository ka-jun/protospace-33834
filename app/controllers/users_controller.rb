class UsersController < ApplicationController

  def show
    # binding.pry
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end




  private
  def user_params
      params.require(:user).permit(:name, :profile, :occupation, :position).merge(user_id: current_user.id)
  end  
end
