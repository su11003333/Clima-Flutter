import 'package:http/http.dart' as http;
//convert all the json data
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
// when we dont know the type of the data, we could define the data type as var.
// var means it could be any type of the data.
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
