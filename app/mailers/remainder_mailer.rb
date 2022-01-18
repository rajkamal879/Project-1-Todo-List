class RemainderMailer < ApplicationMailer
	def new_remainder_email
		@todo_list = params[:todo_list]
		mail(to: 'rajkamal879@gmail.com', subject: "Alert! You have a deadline!!")
	end
end
