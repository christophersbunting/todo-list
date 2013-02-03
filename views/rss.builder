xml.instruct! :xml, :version => "1.0"  
xml.rss :version => "2.0" do  
  xml.channel do
  	xml.title SITE_TITLE
		xml.description SITE_DESCRIPTION
		xml.link request.url.chomp request.path_info
  end  
end