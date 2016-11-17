class StorageSpacesController < ApplicationController
  before_action :set_storage_space, only: [ :show, :update ]

  def index
    @storage_space = StorageSpace.near(params[:location], 50).where('space >= ?', params[:size] || 0)
  end

  # .near(params[:location], 50)

  def create
    @storage_space = StorageSpace.new(storage_space_params)
    @storage_space.save
  end

  def update

    @storage_space.update(storage_space_params)
    redirect_to storage_space_path(@storage_space)
  end

  # GET /storage_spaces/:id
  def show
  end

  private

  def storage_space_params
    params.require(:storage_space).permit(:username)
  end

  def set_storage_space
    @storage_space = StorageSpace.find(params[:id])
  end
end
