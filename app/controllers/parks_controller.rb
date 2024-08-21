class ParksController < ApplicationController
  def show
    # find the right instance
    @park = Park.find(params[:id])
  end
end
