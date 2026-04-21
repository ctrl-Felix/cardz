abstract final class Routes {
  static const home = '/';
  static const players = '/players';
  static const playerRelative = '/:playerId';
  static String playerPath(String playerId) => '$players/$playerId';

  static const add = '/add';
  static const addPlayer = '$add/player';
  static const addMatch = '$add/match';

  static const match = "/match/:matchId";
  static String matchPath(String matchId) => '/match/$matchId';
  static const matchManagePlayers = "/match/:matchId/manage-players";
  static String matchManagePlayersPath(String matchId) =>
      '/match/$matchId/manage-players';
}
