require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "comment title can't be blank" do
    article = Article.new
    article.title = "Teste"
    article.save

    article = Article.find(article.id)
    assert_not article.comments.create, "comment title can't be blank"
  end
end
