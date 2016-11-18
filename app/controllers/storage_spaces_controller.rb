class StorageSpacesController < ApplicationController
  before_action :set_storage_space, only: [ :show, :update ]

  def index
    @storage_space = StorageSpace.near(params[:location], 50).where('space >= ?', (params[:size].blank? ? 0 : params[:size]))
  end

# @flats = Flat.where.not(latitude: nil, longitude: nil)

#     @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
#       marker.lat flat.latitude
#       marker.lng flat.longitude
#       # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
#     end
  # .near(params[:location], 50) STILL NEEDS LOGIC IN CASE FIELD LEFT BLANK

  def create
    @storage_space = StorageSpace.new(storage_space_params)
    @storage_space.user = current_user
    if @storage_space.save
      redirect_to storage_space_path(@storage_space)
    else
      render :new
    end
  end

  def new
    @storage_space = StorageSpace.new
  end

  def update

    @storage_space.update(storage_space_params)
    redirect_to storage_space_path(@storage_space)
  end

  # GET /storage_spaces/:id
  def show
      @hash = Gmaps4rails.build_markers(@storage_space) do |storage_space, marker|
      marker.lat storage_space.latitude
      marker.lng storage_space.longitude
    end
  end

  private

  def storage_space_params
    params.require(:storage_space).permit(:location, :space, :photo)
  end

  def set_storage_space
    @storage_space = StorageSpace.find(params[:id])
  end
end
