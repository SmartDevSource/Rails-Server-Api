require "faker"

Article.destroy_all
User.destroy_all

User.create(email: "manu", password: "boubou")
User.create(email: "guigui", password: "boubou")

for i in 0..5
    Article.create(title: Faker::Book.title, content: Faker::Markdown.emphasis, author: User.all.sample.email);
end