class PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    @property.stations.build
  end

  def show
    @stations = @property.stations
  end
  
  def edit
    @stations = @property.stations
  end

  def create
    @property = Property.create(property_params)
    if params[:back]
      render :new
    else
      if @property.save
        redirect_to properties_path, notice: "物件情報を作成しました！"
      else
      render :new
      end
    end
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "編集しました！"
    else
      render :edit
    end
  end


  def destroy
    @property.destroy
    redirect_to properties_path, notice:"物件情報を削除しました！"
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :memo,
    stations_attributes:[:id, :route_name, :station_name, :time])
  end
  
  def set_property
    @property = Property.find(params[:id])     
  end

end
