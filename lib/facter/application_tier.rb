require 'facter'
Facter.add('application_tier') do
setcode do
    Facter.value(:hostname).split('-')[1]
   end
end
