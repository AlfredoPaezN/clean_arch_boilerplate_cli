import 'package:clean_arch_template/src/data/api/ApiConfig.dart';
import 'package:clean_arch_template/src/domain/models/example.dart';
import 'package:clean_arch_template/src/domain/utils/Resources.dart';

class ExampleService {
  Future<Resource<AuthResponse>> getExample(body) async {
    try {
      // Uri url = Uri.http(ApiConfig.BASE_URL, ApiConfig.EXAMPLES);
      // Map<String, String> headers = {
      //   'Content-Type': 'application/json',
      // // };
      // final response = await http.post(url, headers: headers, body: jsonEncode(body));
      // if (response.statusCode == 200 || response.statusCode == 201) {
      //   final data = jsonDecode(response.body);
      //   return Success(AuthResponse.fromJson(data));

      // } else {
      //   return Error(listToString(data['message']));
      // }

      return Future.delayed(
          Duration(seconds: 2), () => Success(AuthResponse(token: 'Example')));
    } catch (e) {
      print('Error $e');
      return Error("$e");
    }
  }
}
