class PostMailer < ApplicationMailer
    def contact_mail(post)
        @post = post
        mail to: "@picture.user.email", subject: "画像を投稿しました"
    end
end
