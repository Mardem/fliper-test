import 'package:fliper/config/routes/default.dart';
import 'package:hasura_connect/hasura_connect.dart';

abstract class AppCredentials {
  static String graphQLSecret = 'fliperdevtest2020';

  static HasuraConnect connect() {
    String url = DefaultRoutes.host + '/graphql';

    HasuraConnect hasuraConnect = HasuraConnect(url, headers: {
      'x-hasura-admin-secret': AppCredentials.graphQLSecret,
    });
    return hasuraConnect;
  }
}
