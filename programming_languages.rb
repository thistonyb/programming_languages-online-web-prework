def reformat_languages(languages)
  new_hash = {}
  languages[:oo].each do |key, value|
    new_hash[key] = value
    new_hash[key] = {:style => [:oo]}
    if key == :javascript
      value[:style] << :functional
    end
  end
  languages[:functional].each do |key, value|
    if key != :javascript
      new_hash[key] = value
      new_hash[key] = {:style => [:oo]}
    end
  end
  return new_hash
end
