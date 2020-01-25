class App::AllergiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @allergies = Allergy.all
  end
end
