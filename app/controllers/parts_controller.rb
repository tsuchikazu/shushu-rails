# coding: utf-8 
class PartsController < ApplicationController
  def search
    @condition = params[:condition] ||= {}
    @googles = {}
    @youtubes = {}

    render unless @condition[:search] 


    @page = params[:page]
    per_page = 9 
    if @condition[:target] == 'youtube'
      # 1から始まり2から指定可能
      @youtubes = YoutubeSearch.search(@condition[:search], page: @page, per_page: per_page) 
    else
      per_page = 6
      # 0から始まりper_pageを掛ける
      @page = 1 if @page == nil
      start = (@page.to_i - 1) * per_page
      @googles = GoogleAjax::Search.images(@condition[:search], {start: start,  rsz: per_page})[:results]
    end
  end

  def dialog 
    render :layout => 'dialog'
  end
end
