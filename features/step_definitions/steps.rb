Dado("que o usuário se encontre na url {string}") do |urlPagina|
  visit urlPagina
end

Quando("encontro e clico nos botões One, Two e Four") do
  find("#btn_one").click
  find("#btn_two").click
  find("#btn_link").click
end

Então("valido a ausência dos botões depois de clicado") do
  btn_onr = find("#btn_one")
  #expect(btn_onr).not_to present?
  expect(page).not_to have_button("#btn_one")
  expect(page).not_to have_button("#btn_two")
  expect(page).not_to have_button("#btn_link")
  sleep 5
end

Quando("encontro e clico nos botões One, Two e Four dentro do iframe buttons") do
  script = '$("iframe", 0).attr("id", "tempId");'
  page.execute_script(script)
  iframe = first("#tempId")
  within_frame(iframe) do
    find("#btn_one").click
    find("#btn_two").click
    find("#btn_link").click
  end
end

Então("valido a ausência dos botões depois de clicado dentro do iframe buttons") do
  script = '$("iframe", 0).attr("id", "tempId");'
  page.execute_script(script)
  iframe = first("#tempId")
  within_frame(iframe) do
    expect(page).not_to have_button("#btn_one")
    expect(page).not_to have_button("#btn_two")
    expect(page).not_to have_button("#btn_link")
  end
  sleep 5
end

Quando("realizar os passos necessários do teste") do
  find("#first_name").set "Alan"
  find("#btn_one").click
  expect(page).not_to have_button("#btn_one")
  check("opt_three")
  select("ExampleTwo", from: "select_box")
end

Então("devo ser capaz de validar a imagem do Selenim-Webdriver") do
  img = find('img[alt="selenium"]')
  expect(img[:src]).to eql "http://techtutorr.com/wp-content/uploads/2014/04/selenium-webdriver-online-courses-techtutorr.jpg"
  sleep 5
end
