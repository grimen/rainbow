require 'rubygems'
require 'scrubyt'
require 'nokogiri'

class Rainbow
  
  #
  # Example:
  #   
  #   rainbow = Rainbow.new
  #   puts rainbow.lookup('9c5ddd54107734f7d18335a5245c286c')
  #
  def lookup(md5_hash, options = {})
    options[:method] = :remote # default, only option supported at this point
    (options[:method] == :remote) ? lookup_remote(md5_hash) : lookup_local(md5_hash)
  end
  
  #
  # Lookup using remotely stored rainbow table
  #
  def lookup_remote(md5_hash)
    unhash_data = Scrubyt::Extractor.define do
      fetch "http://gdataonline.com/qkhash.php?mode=txt&hash=#{md5_hash}"
      unhash "//table/tr[2]/td[2]/b"
    end
    
    doc = Nokogiri::HTML.parse(unhash_data.to_xml)
    doc.xpath('//root/unhash').text.strip rescue nil
  end
  
  #
  # Lookup using locally stored rainbow table - not available
  #
  def lookup_local(md5_hash)
    # TODO: Implement local rainbow table lookup
  end
  
end