require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')

File.open('chamadas_web/example.html', 'w') do |line|
    line.puts(example)
end