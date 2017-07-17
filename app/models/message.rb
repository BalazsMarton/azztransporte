class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content

  validates :name,
            presence: { message: "Bitte geben Sie Ihren Namen ein" }
  validates_length_of :name, :within => 2..20, :message => "Bitte geben Sie einen gültigen Namen ein"
  validates_format_of :name, :with => /\A[a-zA-ZÀÁÂÃÄÅàáâãäåÒÓÔÕÖŐØòóôõőöøÈÉÊËèéêëÇçÌÍÎÏìíîïÙÚÛÜùúûüÿÑñ\s]+\z/, :message=> "Bitte benutzen Sie nur Buchstaben"

  validates :email,
            presence: { message: "Bitte geben Sie Ihre Email Adresse ein" }
  validates_format_of :email, :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, :message => "Bitte geben Sie eine gültige Email Adresse ein"

  validates :content,
            presence: { message: "Bitte geben Sie eine Nachricht ein" }
  validates_length_of :content, :within => 3..600, :message => "Ihre Nachricht sollte zwischen 3-600 Zeichen aufweisen"

end