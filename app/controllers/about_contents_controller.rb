class AboutContentsController < ApplicationController
  before_action :set_about_content, only: %i[ show edit update destroy ]

  # GET /about_contents or /about_contents.json
  def index
    @about_contents = AboutContent.all
  end

  # GET /about_contents/1 or /about_contents/1.json
  def show_first
    @about_content = AboutContent.first
    render :show
  end

  # GET /about_contents/new
  def new
    @about_content = AboutContent.new
  end

  # GET /about_contents/1/edit
  def edit
  end

  # POST /about_contents or /about_contents.json
  def create
    @about_content = AboutContent.new(about_content_params)

    respond_to do |format|
      if @about_content.save
        format.html { redirect_to about_content_url(@about_content), notice: "About content was successfully created." }
        format.json { render :show, status: :created, location: @about_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @about_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_contents/1 or /about_contents/1.json
  def update
    respond_to do |format|
      if @about_content.update(about_content_params)
        format.html { redirect_to about_content_url(@about_content), notice: "About content was successfully updated." }
        format.json { render :show, status: :ok, location: @about_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @about_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_contents/1 or /about_contents/1.json
  def destroy
    @about_content.destroy

    respond_to do |format|
      format.html { redirect_to about_contents_url, notice: "About content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_content
      @about_content = AboutContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def about_content_params
      params.require(:about_content).permit(:title, :subtitle, :image, :author_name, :author_bio, :contact_information, :skills, :education, :experience, :interests, :mission_statement, :testimonials, :achievements, :publications, :timeline, :external_links, :content)
    end
end
