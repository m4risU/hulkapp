class AllergiesController < ApplicationController
  def show
    render json: ['peanuts', 'milks']
  end
end
