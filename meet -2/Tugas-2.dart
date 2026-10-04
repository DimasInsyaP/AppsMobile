String cekValidasiEWallet(String kode) {
    if (kode == "minus") {
      return "Saldo tidak boleh minus";
    }
    if (kode == "limit") {
      return "limit transaksi harian Rp2.000.000"; 
    }
    if (kode == "blokir") {
      return "PIN salah 3 kali -> akun terblokir"; 
    }
      return "Transaksi berhasil";
}

void main() {
  print("Pembayaran (E-Wallet)"); 
  print(cekValidasiEWallet("minus"));
  cetakPesanKendala('limit');
  cetakStatusTransaksi(2500000);
  cekPercobaanPin(5);
}

void cetakPesanKendala(String kendala) {
  String keterangan = switch (kendala) {
    'minus' => "Saldo tidak boleh minus", 
    'limit' => "limit transaksi harian Rp2.000.000", 
    'blokir' => "PIN salah 3 kali -> akun terblokir",
    _ => "Status normal",
  };
  print(keterangan);
}

void cetakStatusTransaksi(double nominal) {
  String status = "";
  if (nominal > 2000000) {
    status = "Gagal: Melebihi limit transaksi harian Rp2.000.000"; 
    status = "Nominal transaksi aman";
  }
  print(status);
}

void cekPercobaanPin(int salahPin) {
  switch (salahPin) {
    case 3:
      print("PIN salah 3 kali -> akun terblokir"); 
    case 1:
    case 2:
      print("Peringatan: PIN salah, coba lagi");
    default:
      print("PIN benar");
  }
}