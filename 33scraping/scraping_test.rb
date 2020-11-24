$LOAD_PATH.unshift("./33scraping")

require "minitest/autorun"
require_relative "scraping"

class TodosClientTest < Minitest::Test
  def setup
    @news = NewsScraper.new
  end

  def test_captures_headlines_from_rpp
    # skip
    response = @news.headlines

    assert_instance_of Array, response
    refute_empty response
    assert_instance_of String, response.sample
  end

  def test_captures_headlines_by_section_from_rpp
    skip
    response = @news.headlines_by_section
    sections = response.map { |element| element[:section] }

    assert_instance_of Array, response
    assert_instance_of Hash, response.sample
    assert_equal [:section, :headlines], response.sample.keys
    assert_match /.*Actualidad.*/, sections.join
  end
end