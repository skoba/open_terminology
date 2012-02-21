describe :routes do
  describe '/' do
    subject {{ get: '/'}}
    it { should route_to(controller: 'concepts', action: 'index') }
  end
end
