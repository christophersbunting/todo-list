xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
  	xml.title SITE_TITLE
		xml.description SITE_DESCRIPTION
		xml.link request.url.chomp request.path_info
  end
  @notes.each do |note|
		xml.item do
			xml.description escape_html note.content
			xml.link "#{request.url.chomp request.path_info}"
			xml.guid "#{request.url.chomp request.path_info}/#{note.id}"
			xml.pubDate Time.parse(note.created_at.to_s).rfc822
			xml.image "http://placekitten.com/500/300"
		end
	end  
end
