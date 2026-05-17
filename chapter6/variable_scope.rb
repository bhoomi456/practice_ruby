def block_scope
  x = 100  #outer scope variable
  1.times do
    x = 200 # change the value in block 
  end
  puts x
end
block_scope