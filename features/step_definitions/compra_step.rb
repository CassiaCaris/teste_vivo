
Dado("que estou na página da Vivo") do
  visit "https://lojaonline.vivo.com.br/"
end
  
Quando("procuro o produto que desejo adquirir") do
  find(:id, 'searchHeader').send_keys("Motorola")
  find(:xpath, '/html/body/header/nav[2]/div/div/div/div[2]/div/form/div/button').click
end
  
Então("seleciono o produto") do
  find(:xpath, '//*[@id="catalog-panel"]/div/div[1]/div/div/div[2]/div/div[1]/a').click
end

Dado("que estou com o produto selecionado") do
  step("que estou na página da Vivo")
  step("procuro o produto que desejo adquirir")
  step("seleciono o produto")
end

Quando("insero no carrinho") do
  find(:xpath, '//*[@id="pdp-content"]/div[2]/div/div/div/div[1]/div/h1').set("Smartphone MotorolaOne Hyper")
  page.execute_script "window.scrollBy(0,500)"
  find(:xpath, '//*[@id="POSPAGO"]/div[1]/div[1]/div[1]/table[2]/tbody/tr/td[2]/h4[2]/div/div[2]/a').click
  sleep 5
end

Então("consulto o produto no carrinho") do
  find(:xpath, '/html/body/section/div[1]/div[1]/h1').set("Meu carrinho")
end

Dado("estou no carrinho") do
  step("que estou com o produto selecionado")
  step("insero no carrinho")
  step("consulto o produto no carrinho")
end

Dado("volto paa continuar comprando") do
  page.execute_script "window.scrollBy(0,500)"
  find(:xpath, '/html/body/section/div[1]/div[1]/div/div[9]/div/a/span').click
  find(:id, 'searchHeader').send_keys("fone de ouvido")
  find(:xpath, '/html/body/header/nav[2]/div/div/div/div[2]/div/form/div/button').click
end

Quando("seleciono novo produto") do
  find(:xpath, '//*[@id="catalog-panel"]/div/div[2]/div/div/div[5]/div/div[1]/a/div/img').click
  find(:xpath, '//*[@id="addToCartForm"]/div[2]/div/div[3]/button').click
end

Então("altero a quantidade do produto selecionado") do
  find(:xpath, '/html/body/section/div[1]/div[1]/h1').set("Meu carrinho")
  find(:xpath, '//*[@id="accessories_form"]/input[8]').click
end

Quando("removo um item do carrinho") do
  step("volto paa continuar comprando")
  step("seleciono novo produto")
  step("altero a quantidade do produto selecionado")
  find(:xpath, '//*[@id="accessories_form"]/input[3]').click
  find(:xpath, '//*[@id="only-ship-removal"]/div/span/img').click
end

Então("tenho o carrinho atualizado") do
  find(:xpath, '/html/body/section/div[1]/div[1]/h1').set("Meu carrinho")
end

Dado("que seleciono o produto desejado") do
  step("que estou na página da Vivo")
  find(:id, 'searchHeader').send_keys("fone de ouvido")
  find(:xpath, '/html/body/header/nav[2]/div/div/div/div[2]/div/form/div/button').click
end

Dado("insiro no carrinho") do
  step("seleciono novo produto")
end

Quando("preencho os dados para finalização da compra") do
  find(:id, 'BtnContinueChecout').click
  find(:id, 'j_username').set(78325740035)
  find(:id, 'continue').click
  find(:id, 'fullname').set('Pedro Barbosa')
  find(:id, 'rg').set('0914537667')
  find(:id, 'issuingbody').set('SSP')
  find(:xpath, '//*[@id="registrationform"]/div[1]/div[2]/div[3]/div[3]/div/div[1]/dd/div/button').click
  find(:xpath, '//*[@id="registrationform"]/div[1]/div[2]/div[3]/div[3]/div/div[1]/dd/div/div/ul/li[27]/a').click
  find(:id, 'dob').set('01011980')
  find(:id, 'sex2').click
  find(:id, 'mothersname').set('Julia Barbosa')
  find(:id, 'contactphone').set('11964615351')
  find(:id, 'email').set('eu@eu.com.br')
  find(:id, 'password').set('135790')
  find(:id, 'confirmpassword').set('135790')
  find(:id, 'mobile').set('06608430')
  find(:id, 'paragraph').set('20')
  find(:id, 'submitFormCheckoutBtn').click
end

Então("finalizo a compra com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end