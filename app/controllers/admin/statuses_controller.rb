class Admin::StatusesController < ApplicationController
  
  layout 'admin_layout'
  before_action :set_status, only: [:show, :edit, :update, :destroy]
  
  #GET /statuses
  def index
    @statuses = Status.all
  end

  #GET /status/new
    @statuses = Status.new
  def new

  end

  #GET /status/:id
  def show
  end

  #GET /status/:id/edit
  def edit
  end

  #POST /status
  def create
    @status = Status.new(params_status)
    if @status.save
      redirect_to admin_statuses_path
    else
      render :new
    end
  end

  #PUT/PATCH /status/:id
  def update
    if @status.update(params_status)
      redirect_to admin_statuses_path
    else
      render :edit
    end
  end

  #DELETE /status/:id
  def destroy
    @status.destroy
    redirect_to admin_statuses_path
  end

  private
  
  def params_status
    params.require(:status).permit(:name)
  end

  def set_status
    @status = Status.find(params[:id])
  rescue
    flash[:set_status_error] = "no pudo encontrar el registro #{params[:id]}"
  end

end
