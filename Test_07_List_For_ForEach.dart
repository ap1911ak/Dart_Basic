// ข้อ 7: ผลไม้ในตะกร้า
// โจทย์: สร้าง List ของ String เพื่อเก็บชื่อผลไม้ 5 ชนิด จากนั้นแสดงผลชื่อผลไม้ลำดับที่สามใน List

// ข้อจำกัด:

// ต้องสร้าง List<String>

// เข้าถึงสมาชิกใน List โดยใช้ index

void main(){
  List <String> fruit = ["Mango","Watermelon","Durian","Strawberry","Banana"];
  for(int i=0; i<fruit.length;i++){
    print(fruit[i]);
  }
  fruit.forEach((n) => print(n));
}
//Run on DartPad
