class GuessesController < ApplicationController
  
  def create
    @guess = Guess.new(guess_params)

    respond_to do |format|
      if @guess.save
        format.html { redirect_to @guess.post_attachment.post, notice: 'Post attachment was successfully created.' }
        format.json { render json: @guess, status: :created}
      else
        format.html { render :new }
        format.json { render json: @guess.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def guess_params
    params.require(:guess).permit(:post_attachment_id, :index, :url)
  end

end
