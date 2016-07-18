class OrdersController < ApplicationController
  #has access to all of methods inside application_controller.rb file
before_filter :authenticate_user!

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

end
