class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @response = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'F5SUKIDXYY5HIXPSPTR3KFC5LCYQHRGJJF3JBLGZT1ERLSMV'
      req.params['client_secret'] = 'R4Y45GWMIEQJ4VAFBHYNUKVPHUNW2A5TELOYGO2ONXC3QKRL'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
