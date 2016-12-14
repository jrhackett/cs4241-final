class SoundsController < ApplicationController
  before_action :set_sound, only: [:show, :edit, :update, :destroy]
  before_action :delete_from_s3, only: [:destroy]

  # GET /sounds
  # GET /sounds.json
  def index
    @sounds = Sound.all
  end

  # GET /sounds/1
  # GET /sounds/1.json
  def show
  end

  # GET /sounds/new
  def new
    @sound = Sound.new
  end

  # GET /sounds/1/edit
  def edit
  end

  # POST /sounds
  # POST /sounds.json
  def create
    @board = Board.find(params[:board_id])
    @sound = @board.sounds.create(sound_params)
    redirect_to board_path(@board)
  end

  # PATCH/PUT /sounds/1
  # PATCH/PUT /sounds/1.json
  def update
    respond_to do |format|
      if @sound.update(sound_params)
        format.html { redirect_to @sound, notice: 'Sound was successfully updated.' }
        format.json { render :show, status: :ok, location: @sound }
      else
        format.html { render :edit }
        format.json { render json: @sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sounds/1
  # DELETE /sounds/1.json
  def destroy
    @board = Board.find(params[:board_id])
    @sound = Sound.find(params[:id])
    @sound.destroy

    respond_to do |format|
      format.html { redirect_to board_path(@board) }
      format.xml  { head :ok }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sound
      @sound = Sound.find(params[:id])
      @board = Board.find(params[:board_id])
      @comments = @sound.comments.paginate(:per_page => 10, :page => params[:page]).order("created_at DESC")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sound_params
      params.require(:sound).permit(:name, :soundAttachment, :board_id)
    end

    def delete_from_s3
      key = params[:soundAttachment].split('amazonaws.com/')[1]
      S3_BUCKET.object(key).delete
      return true
      rescue => e
        # Do nothing. Leave the now defunct file sitting in the bucket.
        return true
    end
end
