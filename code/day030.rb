=begin
  [Day 030] Server side
  Login system
=end

require 'webrick'

users = { 'alice' => 'password123', 'bob' => 'secret456' }

def authenticate(username, password, users)
  users[username] == password
end

server = WEBrick::HTTPServer.new(Port: 8000)

server.mount_proc '/' do |req, res|
  if req.cookies.find { |c| c.name == 'authenticated' }
    res.body = "Hello, #{req.cookies.find { |c| c.name == 'username' }.value}! This is a protected page."
  else
    res.body = <<~HTML
      <form method="post" action="/login">
        <label>Username:</label><br>
        <input type="text" name="username"><br>
        <label>Password:</label><br>
        <input type="password" name="password"><br>
        <input type="submit" value="Log in">
      </form>
    HTML
  end
end

server.mount_proc '/login' do |req, res|
  if authenticate(req.query['username'], req.query['password'], users)
    res.cookies << WEBrick::Cookie.new('authenticated', 'true')
    res.cookies << WEBrick::Cookie.new('username', req.query['username'])
    res.set_redirect(WEBrick::HTTPStatus::Found, '/')
  else
    res.body = 'Invalid username or password.'
  end
end

trap('INT') { server.shutdown }

server.start
