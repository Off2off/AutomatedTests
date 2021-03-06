# encoding: utf-8

Så /^ska annonsen "(.*?)" existera$/ do |arg1|

#Sök efter annonsen för att verifiera den
  @driver.find_element(:link, "Sök").click
  @driver.find_element(:id, "FilterItemText").clear
  @driver.find_element(:id, "FilterItemText").send_keys arg1
  @driver.find_element(:id, "search-button").click
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end


Så /^ska annonsen "(.*?)" visas$/ do |arg1|
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end


Så /^ska annonsen "(.*?)" inte synas under kategorin "(.*?)"$/ do |arg1, arg2|
    @driver.find_element(:link, "Min sida").click
  element_my_ads_link.click
  pick_category_searchpage(arg2)
  @driver.find_element(:css, "BODY").text.should_not =~ /^[\s\S]*#{arg1}[\s\S]*$/
end


Så /^ska annonsen "(.*?)" synas under kategorin "(.*?)"$/ do |arg1, arg2|
  @driver.find_element(:link, "Min sida").click
  element_my_ads_link.click
  pick_category_searchpage(arg2)
  @driver.find_element(:css, "BODY").text.should =~ /^[\s\S]*#{arg1}[\s\S]*$/
end

