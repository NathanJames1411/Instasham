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

  private

  def sham_params
    params.require(:sham).permit(:image, :caption)
  end
end
