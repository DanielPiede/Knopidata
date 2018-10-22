class MyClass
 extend MethodForward

 forward :geheimnis, to: :secret

 def secret
  "very secret"
 end
end

MyClass.new.geheimnis # => "very secret"

module MethodForward
 def forward (method_name, to:, **args)
  if method_defined?(method_name) || method_name.empty? || to.empty? || !instance_method(to) then
   raise ArgumentError
  else
   define_method(method_name, *args) do |args| send(to, *args) end
  end
 end
end