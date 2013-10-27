actions :install, :uninstall, :update

default_action :install

attribute :database, :regex => /^(city|country)$/, :name_attribute => true