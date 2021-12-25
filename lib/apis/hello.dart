import 'package:http/http.dart' as http;

const String baseUrl = 'https://tuling-music-1508933-1308963807.ap-shanghai.run.tcloudbase.com';

Future<String> sayHello() async {
  final response = await http.get(Uri.parse(baseUrl + '/hello'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('request error');
  }
}