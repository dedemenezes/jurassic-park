class DinosaursController < ApplicationController
  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    @park = Park.find(params[:park_id])
    @dinosaur.park = @park
    if @dinosaur.save
      redirect_to park_path(@park)
    else
      render 'new', status: :unprocessable_entity
    end
  end


  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to park_path(@dinosaur.park), status: :see_other
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :image_url)
  end
end
