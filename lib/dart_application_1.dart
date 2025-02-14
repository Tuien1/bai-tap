void main () {
  String input = "daRt is Easy @ to leArn!";
  int vowelcount = 0;
  int spacecount = 0;
  int consonantcount = 0;
  int specialcharcount = 0;
  String vowels = "ueoaiUEOAI";

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (vowels.contains(char)) {
      vowelcount++;
    } else if (char == ' ') {
      spacecount++;
    } else if (char.toLowerCase().contains(RegExp(r'[b-df-hj-np-tv-z]'))) {
      consonantcount++;
    } else {
      specialcharcount++;
    }
  }

  print("Số nguyên âm: $vowelcount");
  print("Số phụ âm: $consonantcount");
  print("Số khoảng trắng: $spacecount");
  print("Số ký tự đặc biệt: $specialcharcount");
 }