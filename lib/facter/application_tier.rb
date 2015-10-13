require 'facter'
Facter.add('application_tier') do
setcode do
     #returns the second position in a hostname
     #An example, blah-test-red would return test
     Facter.value(:hostname).split('-')[1]
   end
end
