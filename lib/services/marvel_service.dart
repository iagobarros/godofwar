import 'dart:ffi';

import 'package:http/http.dart' as http;

/*
* god of war 1 -> 3030-6959
* god of war 2 -> 3030-11314
* god of war 3 -> 3030-20461
* god of war: chains of olympus -> 3030-20592
god of war collection -> 3030-28001
* god of war: ghost of sparta -> 3030-31180
god of war: origins collection -> 3030-35563
* god of war ascension -> 3030-38043
god of war saga -> 3030-39248
* god of war (2018) -> 3030-54229

https://www.giantbomb.com/api/game/3030-54229/?api_key=37447139576d1eefe0803c9bc7378a430f6cac37
*/

class BaseService {
  String publicKEY = '5ea3980f323cb76c1187caca74afd66f';
  String privateKEY = 'e4602bd9a88ad1a9b997be30d76a3a61d2af4a3a';
  String param =
      "?ts=1&apikey=5ea3980f323cb76c1187caca74afd66f&hash=efacbc2a5a95762df94f3fdf32518629";

  String baseURLAPI = "http://https://www.giantbomb.com/api/";

  String formAPI(String endpoint) {
    return "$baseURLAPI$endpoint$param";
  }
}

abstract class MarvelService {
  Future<dynamic> fetchAllMavel();
  Future<http.Response> fetchAllMavelWithId(String id);

  String imageNameForID({String id}) {}
}

class MarvelServiceImpl extends BaseService implements MarvelService {
  @override
  Future<dynamic> fetchAllMavel() {
    return http.get(formAPI("characters"));
  }

  @override
  Future<http.Response> fetchAllMavelWithId(String id) {
    return http.get(formAPI("characters/$id"));
  }

  @override
  String imageNameForID({String id}) {
    return "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg";
  }
}
