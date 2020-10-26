require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new
    assert_not article.save, "Saved the article without a title"
  end

  test "article title should be greater or equal than 5 characters" do
    article = Article.new
    article.title = "Art" # ensures article.save to fail when validator length is present and set to 5
    assert_not article.save, "Article has to be greater or equal 5 characters"
  end
end
 