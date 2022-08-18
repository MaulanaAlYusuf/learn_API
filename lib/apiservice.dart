import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_api/dataclass.dart';

class Service {
  Future<List<Siswa>> getData() async {
   final response = await http.get(
      Uri.parse('http://pkl.completeselular.com:3000/api/siswa')
    );
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      List<Siswa> siswa = (jsonResponse['data'] as List).map((e) => Siswa.fromJson(e)).toList();
      return siswa;
    }else{
      throw Exception('Failed to load Data');
    }
  }
}