require "fileutils"

1.upto(25) do |day|
  Dir
    .glob("0/*")
    .each do |file|
      content = File.read(file)
      new_content = content.gsub("0", day.to_s)

      new_file = file.gsub("0", day.to_s)
      FileUtils.mkdir_p(File.dirname(new_file))

      File.write(new_file, new_content)
    end
end
