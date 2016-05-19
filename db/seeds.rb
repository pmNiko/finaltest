joeUser = User.new(
  :email                 => "joe@example.com",
  :password              => "12345678",
  :password_confirmation => "12345678"
)
joeUser.add_role :admin
joeUser.save!

janeUser = User.new(
  :email                 => "jane@example.com",
  :password              => "12345678",
  :password_confirmation => "12345678"
)
janeUser.save!

for i in 1..15
  Consult.create!({
    coverage: "Post number #{i}",
    description: "My #{i} post!",
    medic: joeUser
    });
end
Consult.create!(coverage: 'Hi everybody!',  description: "his is Jane's fist post", medic: janeUser);
