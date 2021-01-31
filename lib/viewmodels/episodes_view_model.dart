import 'package:flutter/widgets.dart';
import 'package:nuct/datamodels/episode_item_model.dart';
import 'package:nuct/locator.dart';
import 'package:nuct/service/api.dart';

class EpisodesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes;
  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    var episodeResults = await _api.getEpisodes();

    if (episodeResults is String) {
      //Show eRROR
    } else {
      _episodes = episodeResults;
    }

    notifyListeners();
  }
}
