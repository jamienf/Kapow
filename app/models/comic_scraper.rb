require 'open-uri'

class ComicScraper

  ###############################
  #######   Buttersafe   ########
  ###############################

  def self.buttersafe_info
    explosm = {"name" => "Buttersafe",
      "image" => buttersafe_image,
      "archive" => "http://buttersafe.com/archive/"}
    explosm
  end

  def self.buttersafe_image
    doc = Nokogiri::HTML(open('http://buttersafe.com/'))
    src = doc.css("div#comic img").attr('src')
    "#{src}"
  end

  ###############################
  ####   Dinosaur Comcis   ######
  ###############################

  def self.dino_info
    explosm = {"name" => "Dinosaur Comics",
      "image" => dino_image,
      "archive" => "http://www.qwantz.com/archive.php"}
    explosm
  end

  def self.dino_image
    doc = Nokogiri::HTML(open('http://www.qwantz.com/index.php'))
    src = doc.css("center img").attr('src')
    "#{src}"
  end

  ###############################
  ########   explosm   ##########
  ###############################

  def self.explosm_info
    explosm = {"name" => "Explosm",
      "image" => explosm_image,
      "archive" => "http://explosm.net/comics/archive"}
    explosm
  end

  def self.explosm_image
    doc = Nokogiri::HTML(open('http://explosm.net/comics/latest'))
    src = doc.css("div#comic-container img").attr('src')
    "#{src}"
  end

  ###############################
  ##########   SMBC   ###########
  ###############################

  def self.smbc_info
    explosm = {"name" => "Saturday Morning Breakfast Cereal",
      "image" => smbc_image,
      "archive" => "http://www.smbc-comics.com/archives.php"}
    explosm
  end

  def self.smbc_image
    doc = Nokogiri::HTML(open('http://www.smbc-comics.com/'))
    src = doc.css("div#comicimage img").attr('src')
    "#{src}"
  end

  ###############################
  ##########   XKCD   ###########
  ###############################

  def self.xkcd_info
    xkcd = {"name" => "XKCD",
      "image" => xkcd_image,
      "archive" => "http://xkcd.com/archive/"}
    xkcd
  end

  def self.xkcd_image
    doc = Nokogiri::HTML(open('http://xkcd.com/'))
    src = doc.css("div#comic img").attr('src')
    "#{src}"
  end

end
