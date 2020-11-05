class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :realisations, :about_me, :contact ]

  def home
    return root_path
  end

  def realisations
  end

  def about_me
  end

  def contact
  end
end
