joeUser = User.new(
  :email                 => "joe@example.com",
  :password              => "12345678",
  :password_confirmation => "12345678"
)
joeUser.save!

janeUser = User.new(
  :email                 => "jane@example.com",
  :password              => "12345678",
  :password_confirmation => "12345678"
)
janeUser.save!

Consult.create!(coverage: 'First Post',  description: 'My first post!', medic: joeUser);
Consult.create!(coverage: 'Second Post', description: 'Another post',   medic: joeUser);
Consult.create!(coverage: 'Third Post',  description: 'Yet another',    medic: janeUser);
