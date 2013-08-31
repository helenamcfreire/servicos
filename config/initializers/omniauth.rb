Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, '207267112771977', '26c07a1a9e4412486c2906272c423a61',
   #        :scope => 'email', {:client_options => {:ssl => {:verify => false}}

  #provider :facebook, '207267112771977', '26c07a1a9e4412486c2906272c423a61', {:client_options => {:ssl => {:verify => false}}}

  provider :facebook, '207267112771977','26c07a1a9e4412486c2906272c423a61',
           {:scope => 'email', :client_options => { :ssl => {:verify => false}}}

end