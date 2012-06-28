Fabricator(:code) do
  codeset_id { Fabricate(:codeset).id }
  value "compress"
end
