class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
    @spaces = Space.where(latitude: @space.latitude, longitude: @space.longitude)
    @hash = Gmaps4rails.build_markers(@spaces) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space)
    end
  end

  def edit
    @space.save
  end

  def update
    if @space.update(space_params)
      redirect_to space_path(@space)
    else
      render :edit
    end
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path
  end

  private

  def space_params
    params.require(:space).permit(:name, :description, :price, :category, :address, :capacity, :user_id, images: [])
  end

  def set_space
    @space = Space.find(params[:id])
  end
end
