THEALPHABET = ["a","b","c","d","e","f","g","h","i","j","k",
    "l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
def caesar_cipher(text,key)
    charIndex = 0
    cipherIndex = 0
    cipher = []
    text.split("").each do |character| 
        if (THEALPHABET.include?(character.downcase))
            charIndex = THEALPHABET.index(character.downcase)
            if (key > 0) 
                cipherIndex = charIndex + key
                cipherIndex %= 26 if cipherIndex > 25
            else
                cipherIndex = charIndex - key.abs
                (cipherIndex += 26 until cipherIndex > 0) if (cipherIndex < 0)
            end
            character.eql?(character.upcase)? cipher.push(THEALPHABET[cipherIndex].upcase)
                                            : cipher.push(THEALPHABET[cipherIndex])
        else
            cipher.push(character)
        end
    end
    cipher.join
end