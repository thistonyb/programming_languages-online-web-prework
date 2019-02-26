def reformat_languages(languages)
  new_hash = {}
  languages.each do |language_type, language_hash|
    languages[:language_type].each do |language_key, details_hash|
      new_hash[language_key] = details_hash
      new_hash[language_key][:style] = [:language_type]
      if key == :javascript
        value[:style] << :functional
      end
    end
  end
  return new_hash
end
