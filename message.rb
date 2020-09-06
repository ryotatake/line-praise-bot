PRAISE_MESSAGES = %w[
  すごい！
  さすが！
  天才！
  今日もセンスが良いね！
  そういうところが好き！
]

PRAISE_MESSAGES_TO_DEATH = %w[
  生きててえらい！
  生きてるってすごい！
  今日も頑張って生きてるね！
]

PRAISE_MESSAGES_TO_SLEEP = %w[
  ちゃんと寝てえらい！
]

PRAISE_MESSAGES_TO_GETUP = %w[
  起きられてえらい！
  今日も一日楽しもう！
]

def praise_message_to_text(user_message)
  case
  when user_message.include?("死")
    PRAISE_MESSAGES_TO_DEATH.sample
  when user_message.include?("寝")
    PRAISE_MESSAGES_TO_SLEEP.sample
  when user_message.include?("起きた")
    PRAISE_MESSAGES_TO_GETUP.sample
  else
    PRAISE_MESSAGES.sample
  end
end
