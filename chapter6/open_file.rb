def open_user_file
  puts "File to open"
  filename  = gets.chomp
  begin 
    fh = File.name(filename)
  rescue
    puts "couldn't open your file"
    return
  end
  yield fh
  fh.close
end

open_user_file do |file|
  puts file.read 
end