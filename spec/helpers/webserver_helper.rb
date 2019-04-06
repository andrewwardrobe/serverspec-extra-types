# frozen_string_literal: true

module WebserverHelper
  def start_webserver
    @thr = Thread.new do
      require 'sinatra'
      require 'sinatra/base'
      require 'webrick'
      require 'json'

      Sinatra::Base.disable :logging
      Sinatra::Base.get '/:code' do
        return [params[:code].to_i, nil]
      end

      Rack::Handler::WEBrick.run Sinatra::Base, Port: 18_754, Logger: WEBrick::Log.new(File.open(File::NULL, 'w')),
                                                AccessLog: []
    end
    sleep 2
  end

  def stop_webserver
    Thread.kill @thr
  end
end
