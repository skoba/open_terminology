Fabricator(:user) do
#  name { Forgery(:name).full_name }
  email {Forgery(:internet).email_address}
  password {'012345'}
  password_confirmation {'012345'}
end
