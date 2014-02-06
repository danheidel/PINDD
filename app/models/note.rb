class Note < ActiveRecord::Base
  belongs_to :group, dependent: :destroy

  delegate :users, to: :group

  validates :content, presence: true

  def my_note?
    self.group.default_group?
  end 
end
