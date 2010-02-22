require ('rubygems')
require ('parseconfig')
require ('active_record')
require ('active_support')
 
#Parse astguiclient configuration file.
my_config = ParseConfig.new('/etc/astguiclient.conf')
@mysql_server_ip = my_config.get_value('VARserver_ip').gsub('>','').strip
@mysql_server = my_config.get_value('VARDB_server').gsub('>','').strip
@mysql_database = my_config.get_value('VARDB_database').gsub('>','').strip
@mysql_user = my_config.get_value('VARDB_user').gsub('>','').strip
@mysql_pass = my_config.get_value('VARDB_pass').gsub('>','').strip
@mysql_port = my_config.get_value('VARDB_port').gsub('>','').strip
#end::Parse config

