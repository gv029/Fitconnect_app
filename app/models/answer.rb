class Answer < ActiveRecord::Base
  enum group: [ :training_goals ]
  validates :title, presence: true

  has_many :users, through: :fitness_answers


  scope :training_goals, -> { where(group: 'training_goals') }
end
