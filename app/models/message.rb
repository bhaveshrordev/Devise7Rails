class Message < ApplicationRecord
  acts_as_votable

  def upvote!(user)
    if user.voted_up_on? self
      unvote_by user
    else
      upvote_by user
    end
  end

  def downvote!(user)
    if user.voted_down_on? self
      unvote_by user
    else
      downvote_by user
    end
  end

end
