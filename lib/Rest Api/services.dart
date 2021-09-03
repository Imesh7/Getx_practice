import 'package:http/http.dart' as http;
import 'model.dart';

class UiServices {
  
  Future<List<DataModel>> callServices() async {
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
      print(response.body);

      final dataModel = dataModelFromJson(response.body);

      return dataModel;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
