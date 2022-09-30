String encrypt(String message){
  String alphabetsL = "abcdefghijklmnopqrstuvwxyz";
  String alphabetsU = "ABCDEIFHIJKLMNOPQRSTUVWXYZ";
  /// empty String to hold the letters
  String encryptedText = '';
  for(int i=0;i<message.length;i++){
    /// Lowercase
    /// Check if lowercase alphabets contain any letter in the message parameter
    if(alphabetsL.contains(message[i])){
      /// Check if the index of the alphabet is less than 13
      if(alphabetsL.indexOf(message[i]) < 13){
        /// Get the index of lowercase alphabet found in the message
        int indexOfLetter = alphabetsL.indexOf(message[i]);
        /// Rotate that letter 13 times and add to the empty String created earlier
        encryptedText += alphabetsL[indexOfLetter + 13];
      }
      /// If index of letter found in the message parameter >= 13 then rotate backwards
      if(alphabetsL.indexOf(message[i]) >= 13){
        int indexOfLetter = alphabetsL.indexOf(message[i]);
        encryptedText += alphabetsL[indexOfLetter - 13];
      }
    }
    /// For Uppercase
    /// Check if uppercase alphabets contain any letter in the message parameter
    else if(alphabetsU.contains(message[i])){
      /// Check if the index of the alphabet is less than 13
      if(alphabetsU.indexOf(message[i]) < 13){
        /// Get the index of uppercasecase alphabet found in the message
        int indexOfLetter = alphabetsU.indexOf(message[i]);
        /// Rotate that letter 13 times and add to the empty String created earlier
        encryptedText += alphabetsU[indexOfLetter + 13];
      }
      /// If index of letter found in the message parameter >= 13 then rotate backwards
      if(alphabetsU.indexOf(message[i]) >= 13){
        int indexOfLetter = alphabetsU.indexOf(message[i]);
        encryptedText += alphabetsU[indexOfLetter - 13];
      }
    }
   
  }
  return encryptedText;
}
