module Cipher
  SHIFT = 12

  def encode_word(word, delay = 1)
    word.chars.map do |char|
      raise ArgumentError, 'word has a space' if char == ' '
      sleep delay
      encoder(SHIFT)[char] || char
    end.join
  end

  private

  def encoder(shift = 0)
    alphabet = Array('a'..'z')
    non_caps = Hash[alphabet.zip(alphabet.rotate(shift))]

    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

    non_caps.merge(caps)
  end
end
