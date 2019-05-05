module Puppet::Parser::Functions
  newfunction(:has_role, :type => :rvalue) do |args|
    if (args.is_a? String)
      args = [args]
    end
    role = args[0]
    return lookupvar("server_roles").split(",").include?(role)
  end # puppet function has_role
end # module Puppet::Parser::Functions