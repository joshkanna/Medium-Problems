# zip_zap.rb

def zip_zap(str)
    str.gsub(/z.p/) {|match| match[0] + match[2]}
  end
  
zip_zap('zipxzap')
  