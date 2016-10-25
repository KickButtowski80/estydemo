class StripegemsController < ApplicationController
  before_action :set_stripegem, only: [:show, :edit, :update, :destroy]

  # GET /stripegems
  # GET /stripegems.json
  def index
    @stripegems = Stripegem.all
  end

  # GET /stripegems/1
  # GET /stripegems/1.json
  def show
  end

  # GET /stripegems/new
  def new
    @stripegem = Stripegem.new
  end

  # GET /stripegems/1/edit
  def edit
  end

  # POST /stripegems
  # POST /stripegems.json
  def create
    @stripegem = Stripegem.new(stripegem_params)

    respond_to do |format|
      if @stripegem.save
        format.html { redirect_to @stripegem, notice: 'Stripegem was successfully created.' }
        format.json { render :show, status: :created, location: @stripegem }
      else
        format.html { render :new }
        format.json { render json: @stripegem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stripegems/1
  # PATCH/PUT /stripegems/1.json
  def update
    respond_to do |format|
      if @stripegem.update(stripegem_params)
        format.html { redirect_to @stripegem, notice: 'Stripegem was successfully updated.' }
        format.json { render :show, status: :ok, location: @stripegem }
      else
        format.html { render :edit }
        format.json { render json: @stripegem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stripegems/1
  # DELETE /stripegems/1.json
  def destroy
    @stripegem.destroy
    respond_to do |format|
      format.html { redirect_to stripegems_url, notice: 'Stripegem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stripegem
      @stripegem = Stripegem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stripegem_params
      params.fetch(:stripegem, {})
    end
end
