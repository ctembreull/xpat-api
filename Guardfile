guard :bundler do
  watch ('Gemfile')
end

guard 'rack' do
  watch('Gemfile.lock')
  watch(%r{^(config|lib|app|api|models)/.*})
end
