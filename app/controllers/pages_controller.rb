class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :landing, :pricing, :meetings]

  def landing
  end

  def home
  end

  def pricing
  end

  def meetings
  end
end
