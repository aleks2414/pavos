class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :prepare_meta_tags, if: "request.get?"

before_action :set_footer

def set_footer
	@contact = Contact.new
end

protected

def stored_location_for(resource)
  nil
end

def after_sign_in_path_for(resource)
  	products_path
end

def after_sign_up_path_for(resource)
    products_path
end



def prepare_meta_tags(options={})
    site_name   = "Pavos Gourmet"
    title       = "Pavos Gourmet"
    description = "La mejor calidad en crianza, producción y distribución de pavos doble pechuga"
    image       = options[:image] || "http://www.pavosgourmet.com/assets/logo-362f2d2af001d08a46893f527dc4c1e4fcd321a9914dc144fbe25faea92c3120.svg"
    current_url = request.url
    keywords    = %w[pavos-gourmet pechuga-de-pavo chorizo-de-pavo arrachera-de-pavo jamón-de-pavo piernas-de-pavo carne-molida-de-pavo postres-veganos pavo-de-navidad ]

    # Let's prepare a nice set of defaults
    defaults = {
      title:       title,      
      image:       image,
      revisit_after: "30 days",
      robots: "index,follow",
      distribution: "global",
      description: description,
      keywords:    keywords,
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end
  # .

end
