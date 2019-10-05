class Crawlers::Default

  def initialize
		::Capybara.register_driver :poltergeist do |app|
		  ::Capybara::Poltergeist::Driver.new(app, js_errors: false, timeout: 120, phantomjs_options: ['--load-images=no'])
		end
		::Capybara.default_driver = :poltergeist
		@browser = ::Capybara.current_session
	end

  def call(params)
    @browser.visit(params[:p])
    @browser.first(params[:s]).text
  end
end
