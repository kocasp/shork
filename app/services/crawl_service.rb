require 'capybara/poltergeist'

class CrawlService
  def initialize(crawler_name = 'default')
    @crawler_name = crawler_name
    get_crawler
  end

  def call(params)
    # begin
      @crawler.call(params)
    # rescue
    #   # place this back after adding custom crawlers
    #   # return "Crawler Error. Check Syntax!"
    #   return "Page unavailable or element with given selector not found."
    # end
  end

  def get_crawler
    @crawler = ("Crawlers::"+@crawler_name.classify).constantize.new
  end
end
