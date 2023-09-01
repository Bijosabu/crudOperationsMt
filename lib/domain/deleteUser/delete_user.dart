import 'package:crudoperationsmt/domain/api_end_points.dart';
import 'package:crudoperationsmt/infrastructure/api_key.dart';
import 'package:http/http.dart' as http;

Future<bool> deleteUser(int userId) async {
  final headers = {
    'Authorization': 'Bearer $apiKey',
  };

  final response = await http.delete(
    Uri.parse('$baseUrl/public/v2/users/$userId'),
    headers: headers,
  );

  if (response.statusCode == 204) {
    print('User deleted successfully');
    return true;
  } else {
    print('Failed to delete user');
    return false;
  }
}
