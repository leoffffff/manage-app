class ResumesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # GET /resumes
  # GET /resumes.json
  def index
    @resume = Resume.find_by_user_id(session[:user_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resume }
    end
  end

  # GET /resumes/1
  # GET /resumes/1.json
  def show
    @resume = Resume.find_by_user_id(session[:user_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resume }
    end
  end

  # GET /resumes/new
  # GET /resumes/new.json
  def new
    @resume = Resume.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resume }
    end
  end

  # GET /resumes/1/edit
  def edit
    @resume = Resume.find_by_user_id(session[:user_id])
  end

  # POST /resumes
  # POST /resumes.json
  def create
    @resume = Resume.new(params[:resume])

    respond_to do |format|
      if @resume.save
        format.html { redirect_to @resume, notice: 'Resume was successfully created.' }
        format.json { render json: @resume, status: :created, location: @resume }
      else
        format.html { render action: "new" }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resumes/1
  # PUT /resumes/1.json
  def update
    @resume = Resume.find_by_user_id(session[:user_id])

    if @resume.update_attributes(params[:resume])
      head :no_content
    else
      render json: @resume.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resumes/1
  # DELETE /resumes/1.json
  def destroy
    @resume = Resume.find_by_user_id(session[:user_id])
    @resume.destroy

    respond_to do |format|
      format.html { redirect_to resumes_url }
      format.json { head :no_content }
    end
  end
end
