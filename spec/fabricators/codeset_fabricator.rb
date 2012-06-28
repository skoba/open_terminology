Fabricator(:codeset) do
  issuer_id { Fabricate(:issuer).id }
  openehr_id 'compression algorithms'
  external_id 'openehr_compression_algorithms'
end
