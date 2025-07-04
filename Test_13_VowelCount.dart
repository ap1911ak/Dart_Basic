// ข้อ 13: นับจำนวนสระ
// โจทย์: สร้างฟังก์ชันที่รับ String หนึ่งตัว และคืนค่าเป็นจำนวนสระ (a, e, i, o, u) ที่อยู่ใน String นั้น (ไม่สนใจตัวพิมพ์ใหญ่-เล็ก)

// ข้อจำกัด:
// ต้องแปลง String ที่รับเข้ามาเป็นตัวพิมพ์เล็กทั้งหมดก่อนนับ
// ใช้ for loop และ if statement

void main() {
  String a = "Phornchai", b = "Engineering", c = "Computer";

  print("Vowel count of $a is :${countVowel(a)}");
  print("Vowel count of $b is :${countVowel(b)}");
  print("Vowel count of $c is :${countVowel(c)}");
}

int countVowel(String txt) {
  List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
  int count = 0;
  String txtChk = txt.toLowerCase();
  for (int i = 0; i < txtChk.length; i++) {
    String char = txtChk[i];
    if (vowel.contains(char)) {
      count++;
    }
  }

  return count;
}

//Run on DartPad
