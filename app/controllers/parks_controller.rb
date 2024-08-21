class ParksController < ApplicationController
  def show
    # find the right instance
    @park = Park.find(params[:id])
    @dinosaur = Dinosaur.new
  end
end
