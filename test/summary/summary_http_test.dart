import 'package:dio/dio.dart';
import 'package:fliper/config/credentials.dart';
import 'package:fliper/entities/factories/summary/summary_detail_factory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

main() {
  test('Test request to API', () async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    String path = 'https://harura-fliper-test.herokuapp.com/v1/graphql';

    dioAdapter.onGet(
      path,
      (server) => server.reply(200, {'message': 'Successfully GET!'}),
    );
  });

  group('GraphQL HTTP Test', () {
    test('Tests the creation of an instance from SummaryDetailFactory',
        () async {
      final factory = SummaryDetailFactory();
      expect(factory, isNotNull);
      expect(factory, isA<SummaryDetailFactory>());
    });

    test('Testa o retorno de um adapter para conexão ao GraphQL', () async {
      final connector = AppCredentials.connect();
      expect(connector, isNotNull);
      expect(connector, isA<HasuraConnect>());
    });

    test('Http Request to API', () async {
      SummaryDetailFactory factory = SummaryDetailFactory();

      var query = factory
        ..enableCdi()
        ..enableGain()
        ..enableId()
        ..enableHistory()
        ..enableTotal()
        ..enableProfitability()
        ..changeSchema('wealthSummary');

      String queryGraph = '''query builderQuery {''' + query.mount() + '}';

      Map<String, dynamic> json = await AppCredentials.connect().query(
        queryGraph,
      );

      expect(json, isNotNull);
    });
  });
}
