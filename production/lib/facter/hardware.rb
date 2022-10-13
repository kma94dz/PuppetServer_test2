# frozen_string_literal: true

Facter.add('hardware') do
  # https://puppet.com/docs/puppet/latest/fact_overview.html
  setcode do
    'toto bobo'
  end
end
