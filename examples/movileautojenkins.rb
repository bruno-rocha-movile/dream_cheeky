require 'rubygems'
require 'dream_cheeky'
require 'watir-webdriver'
require 'uri'
require 'net/http'

DreamCheeky::BigRedButton.run do
    
  browser = ""

  open do
    ## to use google chrome instead of default firefox add :chrome after new (with a space) and add the ChromeDriver http://code.google.com/p/chromedriver/downloads/list to your $PATH
    profile = Selenium::WebDriver::Firefox::Profile.from_name 'WatirWebDriver'
    ##profile.add_extension 'autoauth-2.1-fx+fn.xpi'
    browser = Watir::Browser.new :firefox, :profile => 'default'
    browser.goto 'file:///Users/bruno.rocha/Desktop/MovileRepos/dream_cheeky/examples/movilejenkins.html'
  end

  close do
    browser.close
  end

  push do
    
    selectedjenkinsbuild = ""
    selectedjenkinsbuild = browser.select_list(:id => "chosenApp").value
    
    ##postData = Net::HTTP.post_form(URI.parse(selectedjenkinsbuild+'/build?delay=0sec'), {'postKey'=>'postValue'})
    
    ##puts postData.body
    
    ##browser.goto selectedjenkinsbuild
    browser.goto selectedjenkinsbuild+'/build?delay=0sec'
    browser.element(:css => 'input[type=submit]').click
    browser.goto selectedjenkinsbuild
    
    ## browser.object(:id => 'flashcontent').click
  end
  
end
