require 'net/http'

req = Net::HTTP::Post.new("/api/users")
# para fazer chamadas https
req.set_form_data(
  {
    name: "Mario",
    job: "Encanador"
  }
)

response = Net::HTTP.start('reqres.in', use_ssl: true) do |https|
  https.request(req)
end

puts('Status: ' + response.code)
puts('Mensagem: ' + response.message)
puts('Body: ' + response.body)
