class SearchController < ApplicationController
  def search
    if params[:search_term].nil? 
      return
    end
    search_term = params[:search_term]
    @results = Incident.search(search_term)
  end
end
