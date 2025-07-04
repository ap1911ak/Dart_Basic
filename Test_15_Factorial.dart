// ข้อ 15: คำนวณแฟกทอเรียล
// โจทย์: สร้างฟังก์ชันที่รับตัวเลขจำนวนเต็ม n และคืนค่าแฟกทอเรียลของ n

// ข้อจำกัด:

// ใช้ for loop ในการคำนวณ
// ถ้า n เป็น 0, แฟกทอเรียลคือ 1

void main() {
  int a=5, b=10, c=20, d=0;
  print("factorial of $a is : ${fac(a)}");
  print("factorial of $b is : ${fac(b)}");
  print("factorial of $c is : ${fac(c)}");
  print("factorial of $d is : ${fac(d)}");
}

int fac (int num){
  int result=1;
  if (num==0){
  result = 1;
  }  else{
     for(num;num>1;num--){
       result *=num;
     }
  }
  return result;
}

//Run on DartPad
