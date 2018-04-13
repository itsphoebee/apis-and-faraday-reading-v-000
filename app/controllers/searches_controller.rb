class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'JVF113GN3E3R4L4MEZP32I2NTIWRSR5SACYC1A5DMMV3JNAC'
      req.params['client_secret'] = 'OMI1YCBTVPT2WDQXPICACZJ3ZIKOTGMRNMUEPFNQ2DO5QGWD'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
