require "rubygems"
require "correios"

# obtendo as informacoes de uma encomenda
encomenda = Correios.encomenda("PB470274767BR")
raise encomenda.inspect
puts "Encomenda: #{encomenda.numero}"
puts
encomenda.status.each do |status|
  puts "  data: #{status.data}"
  puts "  local: #{status.local}"
  puts "  situacao: #{status.situacao}"
  puts "  detalhes: #{status.detalhes}"
  puts
end