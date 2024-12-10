```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value # Accessor for the instance variable
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end
end

object = MyClass.new(10)
object.nonexistent_method(1, 2, 3) # This will call method_missing
puts object.value # Access the value using accessor method
```