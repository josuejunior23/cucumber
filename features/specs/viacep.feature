#language: pt

Funcionalidade: Validar CEP

@viacep
Esquema do Cenario: validar cep
Dado que eu possua o cep "<cep>"
Quando pesquiso na API dos correios
Então eu recebo o endereço "<endereco>"

Exemplos:
|cep| endereco|
|05339-000| Avenida Corifeu de Azevedo Marques|
|41100-220| Rua Tripoli|
|41100-220| Rua Macarani|