# encoding: utf-8

När /^jag klickar på skapa annons$/ do
  @driver.find_element(:link, "Skapa annons").click
end


Givet /^är på Skapa annons sidan$/ do
  @driver.find_element(:link, "Skapa annons").click
end

När /^ger annonsen rubriken "(.*?)"$/ do |arg1|
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys arg1
end


När /^jag fyller i annonsuppgifter$/ do
    @driver.find_element(:id, "Title").clear
    @driver.find_element(:id, "Title").send_keys "Popcornmaskin"
    @driver.find_element(:id, "Description").clear
    @driver.find_element(:id, "Description").send_keys "En trevlig maskin sak för en billig penning"
    @driver.find_element(:xpath,"//a[contains(text(),'Hjälpmedel')]").click
    @driver.find_element(:id, "Price").clear
    @driver.find_element(:id, "Price").send_keys "10"
end

När /^klickar på spara annonsen$/ do
  @driver.find_element(:css, "input.save").click
	sleep(10)
end
