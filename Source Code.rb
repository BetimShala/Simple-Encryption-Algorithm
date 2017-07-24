def encrypt
  puts "Plain text :" 
  ascii_characters=[]
  for i in [*32..122] 
     ascii_characters.push(i.chr)
  end
  txt=gets.chomp.delete(" ")
  txt=txt.split("")
  encryptedText=[]
  for i in txt
      rnd=rand(1..ascii_characters.length)
      encryptedText.push(ascii_characters[(i.ord)%rnd])
  end
  encryptedText=encryptedText.join("")
  p encryptedText
end
