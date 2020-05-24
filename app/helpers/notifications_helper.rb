module NotificationsHelper
	def notification_form(notification)
		#どのユーザーからの通知なのかを取得
		visitor = notification.visitor
		case notification.kind
		when 'comment' then
			# kindがcommentだった時、コメントを取得する。
			@comment = Comment.find_by(id: notification.comment_id)
			tag.a(visitor.name) + 'があなたの' + tag.a('ツイート', href: tweet_path(notification.tweet_id)) + 'にコメントしました。'
		end
	end
end
