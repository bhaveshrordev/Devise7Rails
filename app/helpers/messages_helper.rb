module MessagesHelper

  def upvote_label(message, user)
    label_text =  if user.voted_up_on? message
                    "UNvote"
                  else
                    "UPvote"
                  end

    tag.span do
      "#{message.cached_scoped_like_votes_up} #{label_text}"
    end
  end

  def downvote_label(message, user)
    label_text =  if user.voted_down_on? message
                    "UNvote"
                  else
                    "DOWNvote"
                  end
    tag.span do
      "#{message.cached_scoped_like_votes_down} #{label_text}"
    end
  end

  def upvote_label_styles(message, user)
    if user.voted_up_on? message
      "background-color: grey;"
    end
  end

  def downvote_label_styles(message, user)
    if user.voted_down_on? message
      "background-color: grey;"
    end
  end

end
