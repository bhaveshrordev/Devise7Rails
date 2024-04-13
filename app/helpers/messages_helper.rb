module MessagesHelper

  def upvote_label(message, user)
    label_text =  if user.voted_up_on? message
                    "UNvote"
                  else
                    "UPvote"
                  end

    tag.span do
      "#{message.cached_votes_up} #{label_text}"
    end
  end

  def downvote_label(message, user)
    label_text =  if user.voted_down_on? message
                    "UNvote"
                  else
                    "DOWNvote"
                  end
    tag.span do
      "#{message.cached_votes_down} #{label_text}"
    end
  end

end
