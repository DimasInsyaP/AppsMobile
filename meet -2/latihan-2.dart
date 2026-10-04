String getGrade(int nilai) {
    if (nilai >= 90) {
      return "A" ;
    }
    if (nilai >= 80) {
      return "b" ;
    }
    if (nilai >= 70) {
      return "c" ;
    }
      return "d" ;
}
void main() {
  print("hello, world!");
  print(greet("Global"));
  print(getGrade(50));
  cetakStatusUsia(20);
  cetakJadwalHari("sabtu");
  cetakKeteranganGrade('A');
}

void cetakKeteranganGrade(String grade) {
  String keterangan =  switch (grade) {'A' => "sangat baik", 'B' => "baik", 'C' => "sangat baik",  _=> "perlu perbaikan",};
  print(keterangan);
}

void cetakJadwalHari(String hari)
{
  switch (hari) {
    case "sabtu":
      print("hari pengganti");
    case "minggu":
       print("waktu libur");
    default:
     print("hari kuliah");
  }
}
void cetakStatusUsia(int usia) {
  String status = "";
  if (usia >= 17) {
    status = "dewasa";
  } else { 
    status = "anak-anak";
  }
  print(status);
}

String greet(String name) {
    return "Hello, $name!";
}