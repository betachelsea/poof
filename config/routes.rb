Poof::Application.routes.draw do
    root to: "messages#index"
    resources :messages
    get "message/delete/:id", :controller => :messages, :action => :destroy
    get "message/deliver/:id", :controller => :messages, :action => :deliver
end
