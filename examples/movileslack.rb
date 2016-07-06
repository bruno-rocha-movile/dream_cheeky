require 'rubygems'
require 'dream_cheeky'

DreamCheeky::BigRedButton.run do
    
    open do
    end
    
    close do
    end
    
    push do
        system 'python /Users/bruno.rocha/Desktop/MovileRepos/dream_cheeky/examples/sendMessageToSlack.py'
    end
    
end