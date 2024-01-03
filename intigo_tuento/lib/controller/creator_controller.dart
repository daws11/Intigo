import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intigo_tuento/model/meetings_model.dart';

import '../model/creator_model.dart';

class CreatorController extends GetxController {
  List<Creator> creators = [];

  @override
  void onInit() {
    fetchCreator();
    super.onInit();
  }

  Future<void> fetchCreator() async {
    var response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/creators'));
    if (response.statusCode == 200) {
      CreatorResponse data = creatorResponseFromJson(response.body);
      creators = data.creators;
      update();
    }
  }
}
