Selfstarter::Application.routes.draw do
scope "(:locale)" do
  root :to => 'preorder#index'
  get '/preorder'               => 'preorder#index', :via => [:get,:post]
  get 'preorder/checkout'		  => 'preorder#checkout', :via => :get
  match '/preorder/share/:uuid'   => 'preorder#share', :via => :get
  match '/preorder/ipn'           => 'preorder#ipn', :via => :post
  match '/preorder/prefill'       => 'preorder#prefill', :via => [:get,:post]
  match '/preorder/postfill'      => 'preorder#postfill', :via => [:get,:post]
	end
end