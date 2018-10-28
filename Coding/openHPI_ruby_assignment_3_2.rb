module MethodForward
  def forward (method_name, *arg, to:)
    if method_defined?(method_name) || method_name.empty? || to.empty? then
      raise ArgumentError
    else
      define_method(method_name) {send(to, arg)}
    end
  end
end

class MyClass
 extend MethodForward

 forward :geheimnis, to: :secret

 def secret()
  "very secret"
 end
end

puts MyClass.new.geheimnis # => "very secret"

