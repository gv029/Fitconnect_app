require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #test 'set score to 10 when we update a user' do
  #  u = users(:james_bond)
  #  u.name = "Mike"
  #  u.save
#
  #  assert_equal(10, u.score)
  #end

  test '#certifications_score' do
    u = users(:james_bond)
    u.certifications = 0
    assert_equal(0, u.certifications_score)

    u.certifications = 1
    assert_equal(70, u.certifications_score)

    u.certifications = 2
    assert_equal(90, u.certifications_score)

    u.certifications = 3
    assert_equal(90, u.certifications_score)

    u.certifications = 4
    assert_equal(100, u.certifications_score)

    u.certifications = 345
    assert_equal(100, u.certifications_score)
  end

  test 'bio' do
    u = users(:james_bond)
    
    u.bio = ""
    assert_equal(0, u.bio_score)

    u.bio = "test"
    assert_equal(90, u.bio_score)

    u.bio = "test something great"
    assert_equal(90, u.bio_score)

    u.bio = 1.upto(249).map{|nr| nr}.join(' ')
    assert_equal(90, u.bio_score)

    u.bio = 1.upto(250).map{|nr| nr}.join(' ')
    assert_equal(100, u.bio_score)
  end

end
