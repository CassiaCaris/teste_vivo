
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