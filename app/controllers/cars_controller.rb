class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:garage]

  def new
  end

  def create
  end

  def garage
    @cars = Car.all.shuffle
  end
end
