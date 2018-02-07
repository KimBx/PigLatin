public void setup() {
  String lines[] = loadStrings("words.txt");
  for (int i = 0 ; i < lines.length; i++) {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i = 0; i < sWord.length(); i++)
  {
      if(sWord.substring(i, i+1).equals("a") == true)
      {
        return i;
      }
      else if(sWord.substring(i, i+1).equals("e") == true)
      {
        return i;
      }
      else if(sWord.substring(i, i+1).equals("i") == true)
      {
        return i;
      }
      else if(sWord.substring(i, i+1).equals("o") == true)
      {
        return i;
      } 
  }

  for(int i = 0; i < sWord.length(); i++)
  {
    if(sWord.substring(0, 2).equals("qu") == true)
    {
      return i+5;
    }
  }

  return -1;
}


public String pigLatin(String sWord)

{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(findFirstVowel(sWord) == 5)
  {
    return sWord.substring(2) + "qu" + "ay";
  }
  else
  {
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
  }
}