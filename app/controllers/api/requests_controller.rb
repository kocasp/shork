module Api
  class RequestsController < ApplicationController
    def index
      render plain: 'Hello Shork!'
      return
    end
  end
end
