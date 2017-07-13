class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content

  validates :name,
            presence: { message: "Kérjük adja meg nevét" }
  validates_length_of :name, :within => 2..20, :message => "Kérjük valós nevet adjon meg"
  validates_format_of :name, :with => /\A[a-zA-ZÀÁÂÃÄÅàáâãäåÒÓÔÕÖŐØòóôõőöøÈÉÊËèéêëÇçÌÍÎÏìíîïÙÚÛÜùúûüÿÑñ\s]+\z/, :message=> "Kérjük nevében csak betűket használjon"

  validates :email,
            presence: { message: "Kérjük adja meg az e-mail címét" }
  validates_format_of :email, :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, :message => "Kérjük valós e-mail címet adjon meg"

  validates :content,
            presence: { message: "Kérjük adja meg üzenetét" }
  validates_length_of :content, :within => 3..600, :message => "Üzenetének minimum 3 és maximum 600 karakterből kell állnia"

end