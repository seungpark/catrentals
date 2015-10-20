class Cat < ActiveRecord::Base
  validates :birth_date, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :color, inclusion: { in: %w(black, white, red, tan),
      message: "Not a valid color" }, presence: true
  validates :sex, inclusion: { in: %(M, F),
      message: "Not a valid sex" }, presence: true

  def age
    (Date.today - self.birth_date).to_i / 365
  end



end
