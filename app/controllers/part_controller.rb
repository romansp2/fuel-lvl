class PartController < ApplicationController
  def index
    @parts = Part.all
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      flash[:notice] = "Запись добавлена"
      redirect_to part_index_path
    else
      flash[:alert] = @part.errors.full_messages
      redirect_to part_index_path
    end

  end

  def edit
  end

  def update
  end

  def destroy
    set_part
    @part.destroy
    flash[:notice] = "Запись удалена"
    redirect_to part_index_path
  end
  private
  def set_part
    @part = Part.find(params[:id])
  end
  def part_params
    params.require(:part).permit(:name, :amount, :notes)
  end

end
