class String
  include Cipher

  # TODO: implement a title-case method
  def titleize
    self
  end

  # TODO: implement a method that encodes a sentence using #encode_word
  # NOTE: #encode_word is SLOW and fails with spaces
  def encoded
    self
  end

  def monkey_patched?
    true
  end
end
