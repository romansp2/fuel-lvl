class PartsController < ApplicationController
  def index
    @parts = Part.all
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      flash[:notice] = "Запись добавлена"
      redirect_to parts_index_path
    else
      flash[:alert] = @part.errors.full_messages
      redirect_to parts_index_path
    end

  end

  def edit
    @parts = Part.all
    set_part
  end

  def update
    set_part
    if @part.update(part_params)
      flash[:notice] = "Запись отредактирована"
      redirect_to parts_index_path
    else
      flash[:alert] = @part.errors.full_messages
      redirect_to parts_index_path
    end

  end

  def destroy
    set_part
    @part.destroy
    flash[:notice] = "Запись удалена"
    redirect_to parts_index_path
  end
  private
  def set_part
    @part = Part.find(params[:id])
  end
  def part_params
    params.require(:part).permit(:name, :amount, :notes)
  end

end
