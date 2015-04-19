class CashadvancesController < ApplicationController
  before_action :set_cashadvance, only: [:show, :edit, :update, :destroy]

  # GET /cashadvances
  # GET /cashadvances.json
  def index
    @cashadvances = Cashadvance.all
  end

  # GET /cashadvances/1
  # GET /cashadvances/1.json
  def show
  end

  # GET /cashadvances/new
  def new
    @cashadvance = Cashadvance.new
  end

  # GET /cashadvances/1/edit
  def edit
  end

  # POST /cashadvances
  # POST /cashadvances.json
  def create
    @cashadvance = Cashadvance.new(cashadvance_params)

    respond_to do |format|
      if @cashadvance.save
        format.html { redirect_to @cashadvance, notice: 'Cashadvance was successfully created.' }
        format.json { render :show, status: :created, location: @cashadvance }
      else
        format.html { render :new }
        format.json { render json: @cashadvance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashadvances/1
  # PATCH/PUT /cashadvances/1.json
  def update
    respond_to do |format|
      if @cashadvance.update(cashadvance_params)
        format.html { redirect_to @cashadvance, notice: 'Cashadvance was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashadvance }
      else
        format.html { render :edit }
        format.json { render json: @cashadvance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashadvances/1
  # DELETE /cashadvances/1.json
  def destroy
    @cashadvance.destroy
    respond_to do |format|
      format.html { redirect_to cashadvances_url, notice: 'Cashadvance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashadvance
      @cashadvance = Cashadvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashadvance_params
      params.require(:cashadvance).permit(:date_from, :date_to, :client, :branch, :bus_unit, :status)
    end
end
