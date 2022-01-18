# Preview all emails at http://localhost:3000/rails/mailers/remainder_mailer
class RemainderMailerPreview < ActionMailer::Preview
	def new_remainder_email
		todo_list = TodoList.new(title: "Backend Meet", description: "VC with Dk and Anurag", deadline: 9999, done: true)
		RemainderMailer.with(todo_list:todo_list).new_remainder_email
	end
end
