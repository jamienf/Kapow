class ComicScraper

  def self.explosm_image_url
    doc = Nokogiri::HTML(open('http://explosm.net/comics/latest'))
    src = doc.css("div#comic-container img").attr('src')
    "#{src}"
  end

  def self.penny_arcade_url
    doc = Nokogiri::HTML(open('http://www.penny-arcade.com/comic'))
    src = doc.css("div#comicFrame img").attr('src')
    "#{src}"
  end

  ###############################
  ##########   XKCD   ###########
  ###############################

  def self.xkcd_info
    xkcd = {"name" => "XKCD",
      "title" => xkcd_title,
      "image" => xkcd_image,
      "archive" => "http://xkcd.com/archive/"}
    xkcd
  end

  def self.xkcd_title
    doc = Nokogiri::HTML(open('http://xkcd.com/'))
    src = doc.css("div#comic img").attr('alt')
    "#{src}"
  end

  def self.xkcd_image
    doc = Nokogiri::HTML(open('http://xkcd.com/'))
    src = doc.css("div#comic img").attr('src')
    "#{src}"
  end

end
