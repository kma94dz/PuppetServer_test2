# frozen_string_literal: true

Facter.add(:hardware) do
  # https://puppet.com/docs/puppet/latest/fact_overview.html
  setcode do
    distid = Facter.value('lsbdistid')
    case distid
    when /RedHatEnterprise|CentOS|Fedora/
      'redhat'
    when 'ubuntu'
      'debian'
    else
      distid
    end
  end
end
