class PagesController < ApplicationController
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
end
