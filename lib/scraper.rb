require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def get_page
    # responsible for using Nokogiri and open-uri to grab the entire HTML document from the web page
    
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    binding.pry
  end
  
  def get_courses
    # responsible for using a CSS selector to grab all of the HTML elements that contain a course
    # examine the page with the element inspector to find the CSS selector that contains the courses
    # doc.css(".post")
  end
  
  def make_courses
    # responsible for actually instantiating Course objects and giving each course object the correct title, schedule and description attribute
   
  end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end

Scraper.new.get_page

