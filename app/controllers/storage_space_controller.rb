class StorageSpaceController < ApplicationController
  def index
    @storage_space = StorageSpace.where('space >= ?', params[:size] || 0)
  end

  def create
    @storage_space = StorageSpace.new(storage_space_params)
    @storage_space.save
  end

  def update
    @storage_space = StorageSpace.find(params[:id])
    @storage_space.update(storage_space_params)
    redirect_to storage_space_path(@storage_space)
  end

  private

  def storage_space_params
    params.require(:storage_space).permit(:username)
  end
end
