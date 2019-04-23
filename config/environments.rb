#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
configure :production, :development do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://fombgdhmgutkci:3d08f4af718d23ab717bdd6426eb6b44221a604133e6887ef62887a495405ad8@ec2-184-73-210-189.compute-1.amazonaws.com:5432/d87b23tpkt8s8s  ')

  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host     => db.host,
      :username => db.user,
      :password => db.password,
      :database => db.path[1..-1],
      :encoding => 'utf8'
  )
end
