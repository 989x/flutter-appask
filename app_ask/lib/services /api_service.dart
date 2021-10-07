import 'dart:convert';

import 'package:app_ask/models/results_model.dart';
import 'package:http/http.dart';

class ApiService {
  
  var url = Uri.parse('https://goofy-mcnulty-89db59.netlify.app/.netlify/functions/api/asking');


    Future<List<Results>> getResults() async {
      Response res = await get(url);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);

        List<dynamic> body = json["results"];

        List<Results> results =
          body.map((dynamic item) => Results.fromJson(item)).toList();

        return results;
      } else {
        throw ("Can't get the Articles");
      }
    }
}