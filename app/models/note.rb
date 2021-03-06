class Note < ActiveRecord::Base
  belongs_to :group

  delegate :users, to: :group

  validates :content, presence: true, length: 1..140

  def my_note?
    self.group.default_group?
  end
end
