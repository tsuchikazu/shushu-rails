module PartsHelper
  def condition_params(target)
    {"condition[search]"=>@condition[:search], "condition[target]" => target}
  end
  def target_class(target)
    now_target = @condition[:target] || :google
    'ui-btn-active' if now_target.to_sym ==target
  end
  def google_params(google)
    {image:google[:url], url:google[:tb_url] }
  end
  def youtube_params(youtube)
    {image:"http://i2.ytimg.com/vi/#{youtube["video_id"]}/0.jpg",
      url:"http://www.youtube.com/embed/#{youtube["video_id"]}" }
  end

end
