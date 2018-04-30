class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:eventos]
  def nosotros
  end

  def menus
  	@products = Product.where(:disponible => true, :categoria => "menús saludable")
  end

  def temporada
  	@products = Product.where(:disponible => true, :categoria => "de temporada")
  end

  def postres
  	@products = Product.where(:disponible => true, :categoria => "postres veganos")
  end

  def diario
  	@products = Product.where(:disponible => true, :categoria => "de todos los días")
  end

  def gourmet
    @products = Product.where(:disponible => true, :categoria => "casa gourmet")
  end

  def bebidas
    @products = Product.where(:disponible => true, :categoria => "bebidas")
  end

  def eventos
    @events = Event.all
  end
end
