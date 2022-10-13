# frozen_string_literal: true

Facter.add(:hardware) do
  # https://puppet.com/docs/puppet/latest/fact_overview.html
  setcode do
    Facter::Core::Execution.execute('/usr/bin/uname --hardware-platform')
  end
end
