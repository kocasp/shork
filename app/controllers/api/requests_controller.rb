module Api
  class RequestsController < ApplicationController
    def index
      render plain: crawl_result
    end

    private

    def crawl_result
      return "Invalid Crawler Name" unless params[:c]
      begin
        crawler = ::CrawlService.new(params[:c])
      rescue
        return "Problem With Crawler Initialization. Check Crawler Name."
      end
      crawler.call(params)
    end
  end
end
