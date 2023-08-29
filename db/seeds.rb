require "faker"

Article.destroy_all

for i in 0..20
    Article.create(title: Faker::Book.title, content: Faker::Markdown.emphasis);
end