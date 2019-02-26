def reformat_languages(languages)
  new_hash = {}
  languages.each do |language_type, languages|
    languages[:language_type].each do |info_key, details|
      new_hash[info_key] = details
      new_hash[key][:style] = [:language_type]
      if key == :javascript
        value[:style] << :functional
      end
    end
  end
  return new_hash
end
