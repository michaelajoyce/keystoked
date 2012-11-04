class Text < ActiveRecord::Base
  attr_accessible :title, :body
  validates :title, :uniqueness => true
  def as_json(options={})
    {
      title: self.title,
      body: self.body
    }
  end
end
