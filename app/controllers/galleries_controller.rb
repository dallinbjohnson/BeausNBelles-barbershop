class GalleriesController < ApplicationController
	before_action :set_gallery, only: [:edit, :update, :destroy]
  # access all: [:index], user: {except: [:destroy, :new, :update, :edit]}, admin: :all

	def index
		@gallery_images = Gallery.order('created_at DESC')
	end

  def new
    @gallery_image = Gallery.new
  end

  def edit
  end

  def create
    @gallery_image = Gallery.new(gallery_params)

    respond_to do |format|
      if @gallery_image.save
        format.html { redirect_to galleries_url, notice: 'gallery was successfully created.' }
        format.json { render :show, status: :created, location: galleries_url }
      else
        format.html { render :new }
        format.json { render json: galleries_url.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @gallery_image.update(gallery_params)
        format.html { redirect_to galleries_url, notice: 'gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: galleries_url }
      else
        format.html { render :edit }
        format.json { render json: galleries_url.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gallery_image.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery_image = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:title, :image)
    end
end
