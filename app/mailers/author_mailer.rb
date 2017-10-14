class AuthorMailer < ApplicationMailer
	 default from: "ankitadangi11@gmail.com"

 
  def welcome_email(author)
    @author = author
    @url  = 'http://example.com/login'
    mail(to: @author.email, content_type: "text/html", subject: 'welocome to the book App')
  end
end
def receive(email)
    page = Page.find_by(address: email.to.first)
    page.emails.create(
      subject: email.subject,
      body: email.body
    )
 
    if email.has_attachments?
      email.attachments.each do |attachment|
        page.attachments.create({
          file: attachment,
          description: email.subject
        })
      end
    end
end
