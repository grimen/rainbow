Dir[File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', '**', '*'))].uniq.each do |file|
  require file
end