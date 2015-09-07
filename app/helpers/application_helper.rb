module ApplicationHelper
  def list_image_tags(flickr_album)
    me = FlickrawObjects::Person.find_by_username('chrisfield1968')
    mySets = me.photosets
    theSet = mySets.find {|y| y.title == flickr_album.gsub(/_/, ' ')}
    thePhotos=theSet.photos

    html = String.new
    html << '<div class="photos">'

    thePhotos.each do |picture|
      html << image_tag(picture.url_small)
    end
    html << '</div>'
    html.html_safe
  end
end


