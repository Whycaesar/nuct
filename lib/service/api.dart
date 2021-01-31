import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:nuct/datamodels/episode_item_model.dart';

class Api {
  static const String _apiEndpoint =
      'http://localhost:5000/nuct-4db8d/us-central1/thebasics';
  // 'https://us-central1-thebasics-2f123.cloudfunctions.net/thebasics';

  Future<dynamic> getEpisodes() async {
    var response = await http.get('$_apiEndpoint/courseEpisodes');

    if (response.statusCode == 200) {
      var episodes = (json.decode(response.body) as List)
          .map((episode) => EpisodeItemModel.fromJson(episode))
          .toList();
      return episodes;
    }

    //something wrong happened
    return 'Could not fetch the episodes';
  }
}
