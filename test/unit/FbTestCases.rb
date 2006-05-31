module FbTestCases
  def setup
    @db_file = (RUBY_PLATFORM =~ /win32/) ? 'c:/var/fbdata/drivertest.fdb' : '/var/fbdata/drivertest.fdb'
    @db_host = 'localhost'
    @parms = {
      :database => "#{@db_host}:#{@db_file}",
      :username => 'sysdba',
      :password => 'masterkey',
      :charset => 'NONE',
      :role => 'READER' }
    @parms_s = "database = #{@db_host}:#{@db_file}; username = sysdba; password = masterkey; charset = NONE; role = READER;"
    rm_rf @db_file
  end
end