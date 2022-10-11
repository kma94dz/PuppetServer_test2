require 'rbconfig'

module OS
  def self.name
    case RbConfig::CONFIG['host_os']
    
    when /linux/
      'Linux'
    when /darwin/
      'OS X'
    when /mswin|mingw32|windows/
      'Windows'
    when /solaris/
      'Solaris'
    when /bsd/
      'BSD'
    else
      RbConfig::CONFIG['host_os']
    end
  end
end



Puppet::Functions.create_function(:'get_command_update') do
  dispatch :cmd do
  
  end

  def cmd()
    return OS.name       
  end
end