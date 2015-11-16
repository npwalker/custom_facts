require 'facter'

Facter.add('datacenter_location') do
  setcode do
     #returns the first six characters in a hostname
     #An example, fargos-red-blah would return fargos
     Facter.value(:hostname)[0..5]
   end
end
