module ApplicationHelper

  def avatar_url(user)
    gravatar_id = Digest::MD5.hexdigest(user.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end

def tag_cloud(tags, classes)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / Integer(max.count) * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end 

end
