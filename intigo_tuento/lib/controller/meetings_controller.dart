import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intigo_tuento/model/meetings_model.dart';

class MeetingController extends GetxController {
  List<Meeting> meeting = [];

  @override
  void onInit() {
    fetchMeeting();
    super.onInit();
  }

  Future<void> fetchMeeting() async {
    var response = await http
        .get(Uri.parse('https://api.hackathon.dinotis.com/v1/meetings?size=5'));
    if (response.statusCode == 200) {
      MeetingResponse data = meetingResponseFromJson(response.body);
      meeting = data.meetings;
      update();
    }
  }
}
