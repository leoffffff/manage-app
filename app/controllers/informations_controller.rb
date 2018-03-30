class InformationsController < ApplicationController
  def index

    @information = Information.get_info(session[:user_id])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @information.to_xml}
      format.json do
        @information = Information.get_info(session[:user_id])
        render json: @information
      end
    end
  end

  def show
    @information = Information.get_info(session[:user_id])

    render json: @information
  end

  def create
    @information = Information.new(params[:information])

    if @information.save
      head :no_content
    else
      render json: @information.errors, status: :unprocessable_entity
    end
  end

  def update
    @information = Information.find(params[:id])

    if @information.update_attributes(params[:information])
      head :no_content
    else
      render json: @information.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @information= Information.find(params[:id])
    @information.destroy

    head :no_content
  end
end
