class GriffinCcsController < ApplicationController
  before_action :set_griffin_cc, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /griffin_ccs
  def index
    @griffin_ccs = GriffinCc.all
  end

  # GET /griffin_ccs/1
  def show
  end

  # GET /griffin_ccs/new
  def new
    @griffin_cc = GriffinCc.new
  end

  # GET /griffin_ccs/1/edit
  def edit
  end

  # POST /griffin_ccs
  def create
    @griffin_cc = GriffinCc.new(griffin_cc_params)

    if @griffin_cc.save
      redirect_to @griffin_cc, notice: 'Griffin cc was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /griffin_ccs/1
  def update
    if @griffin_cc.update(griffin_cc_params)
      redirect_to @griffin_cc, notice: 'Griffin cc was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /griffin_ccs/1
  def destroy
    @griffin_cc.destroy
    redirect_to griffin_ccs_url, notice: 'Griffin cc was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_griffin_cc
      @griffin_cc = GriffinCc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def griffin_cc_params
      params.require(:griffin_cc).permit(:title, :body)
    end
end
