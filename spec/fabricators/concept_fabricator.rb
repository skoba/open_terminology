Fabricator(:concept) do
  code '240'
  group_id { Fabricate(:group).id }
  rubric "signed"
end
