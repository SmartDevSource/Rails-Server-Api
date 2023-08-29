require "faker"

Article.destroy_all
User.destroy_all

User.create(email: "manu", password: "boubou")
User.create(email: "guigui", password: "boubou")
User.create(email: "robert", password: "boubou")
User.create(email: "laura", password: "boubou")
User.create(email: "ginette", password: "boubou")

for i in 0..20
    Article.create(title: Faker::Book.title, content: Faker::Markdown.emphasis, author: User.all.sample.email);
end