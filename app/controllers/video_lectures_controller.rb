class VideoLecturesController < ApplicationController
  before_action :set_video_lecture, only: %i[ show edit update destroy ]

  # GET /video_lectures or /video_lectures.json
  def index
    @video_lectures = VideoLecture.all
  end

  # GET /video_lectures/1 or /video_lectures/1.json
  def show
  end

  # GET /video_lectures/new
  def new
    @video_lecture = VideoLecture.new
  end

  # GET /video_lectures/1/edit
  def edit
  end

  # POST /video_lectures or /video_lectures.json
  def create
    @video_lecture = VideoLecture.new(video_lecture_params)

    respond_to do |format|
      if @video_lecture.save
        format.html { redirect_to video_lecture_url(@video_lecture), notice: "Video lecture was successfully created." }
        format.json { render :show, status: :created, location: @video_lecture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_lectures/1 or /video_lectures/1.json
  def update
    respond_to do |format|
      if @video_lecture.update(video_lecture_params)
        format.html { redirect_to video_lecture_url(@video_lecture), notice: "Video lecture was successfully updated." }
        format.json { render :show, status: :ok, location: @video_lecture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_lectures/1 or /video_lectures/1.json
  def destroy
    @video_lecture.destroy!

    respond_to do |format|
      format.html { redirect_to video_lectures_url, notice: "Video lecture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_lecture
      @video_lecture = VideoLecture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_lecture_params
      params.require(:video_lecture).permit(:title, :trailer_url, :full_video_url)
    end
end
