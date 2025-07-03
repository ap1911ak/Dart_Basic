// ข้อ 8: ข้อมูลส่วนตัว
// โจทย์: สร้าง Map เพื่อเก็บข้อมูลส่วนตัว ได้แก่ name (String), age (int), และ city (String) จากนั้นดึงค่า name และ city ออกมาแสดงผล

// ข้อจำกัด:

// Key ของ Map ต้องเป็น String

// Value สามารถเป็นได้ทั้ง String และ int (Map<String, dynamic>)

void main(){
Map<String,dynamic> a = {"name":"Phornchai","age":27,"city":"Angthong"};
  print("Name is : ${a['name']}");
  print("Live in : ${a['city']}");

}
//Run on DartPad
