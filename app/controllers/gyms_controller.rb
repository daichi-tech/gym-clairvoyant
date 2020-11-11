class GymsController < ApplicationController
  def index
  end

  def new
    @gyms = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)
    if @gym.save
      redirect_to new_gym_path
    else
      render :new
    end
  end

  def edit
    @gym = Gym.find(params[:id])
  end

  def update
    @gym = Gym.find(params[:id])
    if @gym.update(gym_params)
      redirect_to gym_path(@gym.id)
    else
      render :edit
    end
  end

  def destroy
    @gym = Gym.find(params[:id])
    @gym.destroy
    redirect_to root_path
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def chibacity
  end

  private

  def gym_params
    params.require(:gym).permit(:image, :name, :address, :phone_number, :playweek, :playtime, :court, :map_url, :homepage, :supplement).merge(user_id: current_user.id)
  end
end
