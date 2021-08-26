import 'dart:convert';

import 'package:covid_19/models/data_model.dart';
import 'package:http/http.dart' show get;
import 'package:intl/intl.dart';

class Repository {
  late List<DataModel> data;
  late String lastUpdate;
  Future<void> fetchData() async {
    final Uri url =
        Uri.https('worldometers.p.rapidapi.com', '/api/coronavirus/all/');
    final response = await get(
      url,
      headers: {
        'x-rapidapi-host': 'worldometers.p.rapidapi.com',
        'x-rapidapi-key':
            'YOUR_RAPID_API_KEY', // Go to https://docs.rapidapi.com/docs/keys for more info.
      },
    );

    final List parsedJson = json.decode(response.body)['data'];
    final String parsedDate = json.decode(response.body)['last_update'];

    data = parsedJson.map((e) => DataModel.fromJson(e)).toList();
    lastUpdate =
        DateFormat.MMMMd().format(DateTime.parse(parsedDate.split(' ').first));
  }
}

final repository = new Repository();
