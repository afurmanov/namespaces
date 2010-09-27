require 'rubygems'
require 'namespaces'

module Base
  class Service
    include Namespaces
    def atom_header
      header = {}
      header["GData-Version"] = namespaces.first::API_VERSION
      header
    end
  end
end


module Contacts
  API_VERSION = "1.0"
  class Service < Base::Service
  end
end

puts Contacts::Service.new.atom_header.inspect # -> {"GData-Version"=>"1.0"}
