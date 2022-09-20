module Admin
  class HousesController < Admin::ApplicationController
    before_action :set_house, only: %i[edit update destroy]

    def index
      @houses = House.all
    end

    def new
      @house = House.new
    end

    def create
      @house = House.new(house_params)
      if @house.save
        redirect_to admin_houses_path
      else
        render :new
      end
    end

    def edit; end

    def update
      if @house.update(house_params)
        redirect_to admin_houses_path
      else
        render :edit
      end
    end

    def destroy
      @house.destroy
      redirect_to admin_houses_path
    end

    private

    def set_house
      @house = House.find(params[:id])
    end

    def house_params
      params.require(:house).permit(:name, :house_type, :description, :price, :area,
                                    :bed, :bathroom, :outdoor_area, :city, :region,
                                    :state, :photo)
    end
  end
end
