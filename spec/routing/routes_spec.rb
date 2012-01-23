describe :routes do
  describe '/' do
    subject {{ get: '/'}}
    it { should route_to(controller: 'home', action: 'index') }
  end
end
