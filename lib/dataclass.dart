class Siswa {
  String id;
  String nama;
  String tanggallahir;
  String email;
  String alamat;
  String kelas;

  Siswa(
      {required this.id,
      required this.nama,
      required this.tanggallahir,
      required this.email,
      required this.alamat,
      required this.kelas});

  factory Siswa.fromJson(Map<String, dynamic> json) {
    return Siswa(
        id: json['_id'],
        nama: json['nama'],
        tanggallahir: json['tanggalLahir'],
        email: json['email'],
        alamat: json['alamat'],
        kelas: json['kelas']);
  }
}
