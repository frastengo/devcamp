class Portofolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_portofolio_items, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end

end

Portofolio.create!(title: "Web app", subtitle: "anything", body: "asdfadf", technologies_attributes: [{name: "Ruby"}, {name: "Rails"}, {name: "Angular"}, {name: "Ionic"}])



  # if self.main_image == nil
  #   self.main_image = "https://via.placeholder.com/600x400"
  # end
  #
  # if self.thumb_image == nil
  #   self.thumb_image = "https://via.placeholder.com/350x200"
  # end
