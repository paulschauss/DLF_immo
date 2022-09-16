class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @houses = House.all
  end

  def mentions; end
end
