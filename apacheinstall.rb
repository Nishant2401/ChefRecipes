package 'apache2'

service 'apache2' do
	action [:enable, :start]
end

file '/var/www/html/index.html' do
	content '<html>
	<body>
		<h1>Hello World!</h1>
	</body>
	</html>' 
end

user 'testsystemuser' do
  comment 'new dummy system user'
  system true
  shell '/bin/bash'
  password 'pass'
  home "/home/systemguy" 
end

directory "/home/testsystemuser" do
  owner "testsystemuser"
  group "testsystemuser"
  mode 00755
  action :create
end
