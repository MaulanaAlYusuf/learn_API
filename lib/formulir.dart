import 'package:flutter/material.dart';
import 'package:learn_api/dataclass.dart';
import 'package:http/http.dart' as http;

class Formulir extends StatefulWidget {
  const Formulir({Key? key}) : super(key: key);

  @override
  State<Formulir> createState() => _FormulirState();
}

// Future<Siswa> submitData () async{
//   var response = await http.post(Uri.https(, unencodedPath))
// }

class _FormulirState extends State<Formulir> {

TextEditingController nameController = TextEditingController();
TextEditingController kelasController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController alamatController = TextEditingController();
TextEditingController tanggalLahirController = TextEditingController();
// Future<Siswa> submitData() async{
//   final response = await http.post(
//       Uri.https(authority, unencodedPath)
//     );
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("User Add")),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Name'),
                      controller: nameController,
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'kelas'),
                      controller: kelasController,
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'email'),
                      controller: emailController,
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'alamat'),
                      controller: alamatController,
                ),
                 SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'tanggal lahir'),
                      controller: tanggalLahirController,
                ),
                ElevatedButton(onPressed: (){}, child: Text("Submit"))
              ],
            ),
          ),
        ),
      );
    
  }
}
