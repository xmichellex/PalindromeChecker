public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String sWord = new String(); 
  for(int i = 0; i < word.length(); i++) {
      if(Character.isLetter(word.charAt(i)) == true) 
          sWord = sWord + word.charAt(i); 
  }  
    //lowercase
    sWord = sWord.toLowerCase(); 
  for(int i = 0; i <= sWord.length()/2; i++) { 
      if(sWord.charAt(i) != sWord.charAt(sWord.length()-i-1))
        return false; 
    } 
        return true;
}



