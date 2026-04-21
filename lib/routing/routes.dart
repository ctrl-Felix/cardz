abstract final class Routes {
  static const home = '/';
  static const players = '/players';

  static const add = '/add';
  static const addPlayer = '$add/player';
  static const addMatch = '$add/match';

  static const match = "/match/:matchId";
  static String matchPath(String matchId) => '/match/$matchId';
}
