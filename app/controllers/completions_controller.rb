class CompletionsController < ApplicationController
  def new
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @completion = Completion.new
  end

  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])

    # Find all the chores
    chores = Chore.where(id: params[:completion][:chore_id])
    # For each chore
    completions_are_saved = []
    chores.each do |chore|
      # Create a new completion
      completion = Completion.new(chore: chore, dinosaur: @dinosaur)
      completion_saved = completion.save
      completions_are_saved << completion_saved
    end
    if completions_are_saved.all?
      redirect_to park_path(@dinosaur.park)
    else
      render 'new', status: :unprocessable_entity
    end
    # If all the completions are saved
    # @completion = Completion.new(completion_params)
    # @completion.dinosaur = @dinosaur
    # if @completion.save
    # else
      # render 'new', status: :unprocessable_entity
    # end
  end

  private

  def completion_params
    params.require(:completion).permit(:chore_id)
  end
end
