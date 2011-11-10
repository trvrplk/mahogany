class MahoganyBootstrapGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :host, :type => :string, :default => "locahost"
  argument :port, :type => :string, :default => "6379"
  
  def initializer
  	template "redis.rb", "config/initializers/redis.rb"
  end

	private
		
	
	def host
			host.underscore
		end
		
		def pid
			port.underscore
		end		
	end	
