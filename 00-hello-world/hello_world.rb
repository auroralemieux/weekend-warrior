
# accepts input and returns the correct phrase
def hello_world(name = "World")
  if name == ""
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end
