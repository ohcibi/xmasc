require 'yaml'

configure :development, :production do
  set :public_folder, Proc.new { File.join root, "public/dist" }
end

configure :development do
  config = YAML.load_file('config/database.yml')
  ActiveRecord::Base.establish_connection(
    adapter: config["development"]["adapter"],
    database: config["development"]["database"]
  )

end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host     => db.host,
      :username => db.user,
      :password => db.password,
      :database => db.path[1..-1],
      :encoding => 'utf8'
  )
end
