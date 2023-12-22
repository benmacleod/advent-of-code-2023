require "debug"

1.upto(25) do |day|
  script = "#{day}/day_#{day}.rb"
  if File.exist?(script)
    puts "Day #{day}"
    system "ruby #{script}"
  end
end
