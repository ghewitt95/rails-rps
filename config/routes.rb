Rails.application.routes.draw do
  get("/", {:controller => "pages", :action => "rules"})

  get("rock", {:controller => "pages", :action => "rock"})

  get("paper", {:controller => "pages", :action => "paper"})

  get("scissors", {:controller => "pages", :action => "scissors"})
end
