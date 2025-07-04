// ข้อ 12: หาค่ามากที่สุดใน List
// โจทย์: สร้างฟังก์ชันที่รับ List<int> และคืนค่าเป็นตัวเลขที่มากที่สุดใน List นั้น

// ข้อจำกัด: ห้ามใช้ฟังก์ชันสำเร็จรูปอย่าง .sort() หรือ .reduce() ให้ใช้ for loop และ if statement ในการหาค่า

void main() {
  List<int> n =[5,6,5,7,5,2,1,9,15];
  print("List : $n");
  print("Max value is : ${findMaxInList(n)}\n\n");
  
    List<int> m =[5,-1,3,11,111,2,0];
  print("List : $m");
  print("Max value is : ${findMaxInList(m)}\n\n");
  
    List<int> b =[-4,-5,-6,0,-2];
  print("List : $b");
  print("Max value is : ${findMaxInList(b)}\n\n");
  
      List<int> e =[2];
  print("List : $e");
  print("Max value is : ${findMaxInList(e)}\n\n");
}

int findMaxInList(List<int> num){
  if (num.isEmpty) {
    throw ArgumentError("List Empty");
  }
  int max = num[0];
  for(int i=0; i<num.length-1;i++){
     (num[i+1]>num[i]) ? max=num[i+1]:max=max; 
  }
  return max;
}


//Run on DartPad
