# coding: utf-8 
class PartsController < ApplicationController
  def search
    @condition = params[:condition] ||= {}
    @googles = {}
    @youtubes = {}
    render unless @condition[:query] 


    if @condition[:target] == 'youtube'
      @youtubes = YoutubeSearch.search(@condition[:query], page: params[:page], per_page:9) 
    else
      @googles = GoogleAjax::Search.images(@condition[:query])[:results]
    end
  end
end
