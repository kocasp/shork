class HomeController < ApplicationController
  def index
    render plain: crawl_result if basic_crawl_params.present? || crawler_code.present?
    render plain: "'p' and 's' Params Are Obligatory in Basic Crawler!" if crawl_params.present? && basic_crawl_params.nil? && crawler_code.nil?
  end

  private

  def crawl_params
    params.except("controller", "action", "crawler_code")
  end

  def basic_crawl_params
    return nil if params[:p].blank? || params[:s].blank?
    {
      p: params[:p],
      s: params[:s]
    }
  end

  def crawler_code
    params[:crawler_code]
  end

  def crawl_result
    begin
      crawler = ::CrawlService.new(crawler_code || 'default')
    rescue
      return "Problem With Crawler Initialization. Check Crawler Name."
    end
    crawler.call(crawl_params)
  end
end
