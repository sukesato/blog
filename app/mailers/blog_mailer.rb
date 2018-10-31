class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog = blog
    
  mail to:"samurai310@aol.jp", subject:"お問い合わせの確認メール"
  end
end
