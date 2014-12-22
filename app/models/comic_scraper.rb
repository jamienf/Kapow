class ComicScraper
  def self.xkcd_image_url(page_url = 'http://xkcd.com/')
    doc = Nokogiri::HTML(open(page_url))
    src = doc.css("div#comic img").attr('src')
    "#{src}"
  end

  def self.explosm_image_url(page_url = 'http://explosm.net/comics/latest')
    doc = Nokogiri::HTML(open(page_url))
    src = doc.css("div#comic-container img").attr('src')
    "#{src}"
  end

  def self.penny_arcade_url(page_url = 'http://www.penny-arcade.com/comic')
    doc = Nokogiri::HTML(open(page_url))
    src = doc.css("div#comicFrame img").attr('src')
    "#{src}"
  end
end
