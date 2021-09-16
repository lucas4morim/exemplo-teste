Dado('direcionamento para o quiz') do
  @web.quiz.load
  sleep 4
end

Dado('direcionar para listas') do
  @web.quiz.menulateral.hover
  @web.quiz.menulateral.click
  @web.quiz.listas.hover
  @menu = @web.quiz.listas.text
  @web.quiz.listas.click
end

@listas #Teste será rejeitado, mas é o aceite para ser valido.
Então('os nomes no menu devem ser listas') do
  listas = @web.quiz.titulos.text
  expect(listas).to eql(@menu)
end

@quiz_personalidade
Quando('ir para quiz de personalidade') do
  @web.quiz.persona.hover
  @web.quiz.persona.click
  @txtmaisc = @web.quiz.persona.text
end

Então('deve listar os quiz de personalidade') do
  texto = @web.quiz.tipo.text.upcase
  expect(texto).to eql(@txtmaisc)
end