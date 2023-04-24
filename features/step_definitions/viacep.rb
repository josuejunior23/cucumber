require "active_support/all"
s_cep = ""
s_API = ""

Dado("que eu possua o cep {string}") do |cep| 
s_cep = cep
end

Quando ("pesquiso na API dos correios") do
s_API = "https://viacep.com.br/ws/" + s_cep + "/json/"
end

Então ("eu recebo o endereço {string}") do |endereco|
    response =  RestClient::Request.execute(method: :get, url: s_API,
          timeout: 10)
     if (JSON.parse(response.body)["logradouro"] == endereco)
          p "Endereço retornado confere com o apontado no teste"
     else
          p "Retorno diferente de: " + endereco
     end
     
end