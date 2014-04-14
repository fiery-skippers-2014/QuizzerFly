class SeededUser < ActiveRecord::Base
  after_create :create_user

  def create_user
    password_salt = BCrypt::Engine.generate_salt
    password_hash = BCrypt::Engine.hash_secret(self.user_password_hash, password_salt)
    @user = User.new(
      email: self.user_email,
      name: self.user_name,
      password_hash: password_hash,
      password_salt: password_salt
    )
    @user.save
  end
end
