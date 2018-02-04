class FuelsController < ApplicationController

  def index
    @fuels = Fuel.all
    @fuel = Fuel.new
  end


  def create
    @fuel = Fuel.new(fuel_params)
    if @fuel.save
      flash[:notice] = "Запись добавлена"
          redirect_to fuels_index_path
    else
      flash[:alert] = @fuel.errors.full_messages
      redirect_to fuels_index_path
    end
  end

  def destroy
    set_fuel
    @fuel.destroy
    flash[:notice] = "Запись удалена"
    redirect_to fuels_index_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel
      @fuel = Fuel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuel_params
      params.require(:fuel).permit(:date, :in, :out, :notes, :price)
    end
end
