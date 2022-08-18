import 'package:flutter/material.dart';
import 'package:learn_api/apiservice.dart';
import 'package:learn_api/dataclass.dart';
import 'package:learn_api/formulir.dart';

class GetScreen extends StatefulWidget {
  const GetScreen({Key? key}) : super(key: key);

  @override
  State<GetScreen> createState() => _GetScreenState();
}

class _GetScreenState extends State<GetScreen> {

  Service serviceAPI = Service();
  late Future<List<Siswa>> listData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listData = serviceAPI.getData();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("User"),
          actions: [
            IconButton(
                onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => const Formulir())),
                icon: Icon(Icons.add))
          ],
        ),
        body: Container(
          child: FutureBuilder<List<Siswa>>(
              future: listData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Siswa> isiData = snapshot.data!;
                  return ListView.builder(
                    itemCount: isiData.length,
                    itemBuilder: ((context, index) {
                      print(isiData[index].email);
                      return Card(
                        child: ListTile(
                          title: Text(isiData[index].nama),
                          subtitle: Text(isiData[index].kelas),
                        ),
                      );
                    }),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return const CircularProgressIndicator();
              }),
        ),
      );
}