
Dado(/^que eu estou no site OrangeHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^realizo o cadastro$/) do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')	
  find(:xpath, '//*[@id="btnLogin"]').click
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
  
  fill_in('firstName', :with => 'Junior')
  fill_in('middleName', :with => 'Julio')
  fill_in('lastName', :with => 'Armando')
  
  end


Então(/^o usuário é cadastrado$/) do
  find(:xpath, '//*[@id="btnSave"]').click
end


Dado(/^que estou no site OrangeHRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^efetuo o login e entro na lista de empregado$/) do
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')	
  find(:xpath, '//*[@id="btnLogin"]').click
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Então(/^edito um empregado$/) do

  fill_in('empsearch_id', :with => '0001')
  find(:xpath, '//*[@id="searchBtn"]').click
  find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
  find(:xpath, '//*[@id="btnSave"]').click
  fill_in('personal_txtEmpMiddleName', :with => 'janaina')
  find(:xpath, '//*[@id="btnSave"]').click
  
end
