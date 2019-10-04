class CrawlService
  def initialize(crawler_name = 'default')
    @crawler_name = crawler_name
    get_crawler
  end

  def call(params)
    begin
      @crawler.call(params)
    rescue
      return "Crawler Error. Check Syntax!"
    end
  end

  def get_crawler
    @crawler = ("Crawlers::"+@crawler_name.classify).constantize.new
  end
end
