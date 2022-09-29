class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :mentions ]

  def home
    @houses = House.all.sort_by(&:state)
  end

  def mentions; end
end
