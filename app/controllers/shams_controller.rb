class ShamsController < ApplicationController
  def index
    @shams = Sham.all
  end

  def new
    @sham = Sham.new
  end

  def create
    @sham = Sham.create(sham_params)
    redirect_to shams_path
  end

  def show
    @sham = Sham.find(params[:id])
  end

  def edit
    @sham = Sham.find(params[:id])
  end

  def update
    @sham = Sham.find(params[:id])
    @sham.update(sham_params)
    redirect_to(sham_path(@sham))
  end

  def destroy
    @sham = Sham.find(params[:id])
    @sham.destroy
    redirect_to shams_path
  end

  private

  def sham_params
    params.require(:sham).permit(:image, :caption)
  end
end
