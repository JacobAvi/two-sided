class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to @profile, notice: 'profile was successfully created.'
    else
      render :new
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'profile was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_url, notice: 'profile was successfully destroyed.'
  end

  def contact_email
    full_name = "#{profile_params[:first_name]} #{profile_params[:last_name]}"
    user_info = {user: current_user, full_name: full_name, email: current_user.email}
    ContactMailer.send_contact_email(user_info).deliver_now
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :contact_no, :image, :car_type, :remove_image)
  end

end