def install_db
	database = new_resource.database
	install_dir = ::File.dirname(node['geoip'][database]['file'])
	local_file = node['geoip'][database]['file']
	local_zip = "#{local_file}.gz"

	directory install_dir do
		owner "root"
		mode "0755"
		recursive true
		action :create
	end

	remote_file local_zip  do
		source node['geoip'][database]['url']
		mode "0644"
		action :create
		not_if { ::File.exists?(local_file) }
	end

	bash 'extract_database' do
		cwd install_dir
		code <<-END
			gunzip #{local_zip}
		END
		not_if { ::File.exists?(local_file) }
	end
end

def clear_db
	database = new_resource.database
	local_file = node['geoip'][database]['file']
	local_zip = "#{local_file}.gz"

	file local_zip  do
		action :delete
	end

	file local_file  do
		action :delete
	end
end

action :install do 
	install_db
end

action :update do
	clear_db
	install_db
end

action :uninstall do
	clear_db
end