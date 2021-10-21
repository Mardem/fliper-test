import 'package:fliper/entities/factories/summary/summary_detail_factory.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Test creation of an factory with CDI', () async {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory..enableCdi();

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), contains('cdi'));
  });

  test('Test creation of an factory with Profitability', () async {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory..enableProfitability();

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), contains('profitability'));
  });

  test('Test creation of an factory with Gain', () async {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory..enableGain();

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), contains('gain'));
  });

  test('Test creation of an factory with History', () async {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory..enableHistory();

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), contains('hasHistory'));
  });

  test('Test creation of an factory with Id', () async {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory..enableId();

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), contains('id'));
  });

  test('Test change of schema in runtime', () async {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory;

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), isNot('wealthSummary'));

    var changedSchema1 = factory..changeSchema('wealthSummary');
    expect(changedSchema1.mount(), contains('wealthSummary'));

    var changedSchema2 = factory..changeSchema('wealthSummary_by_pk');
    expect(changedSchema2.mount(), contains('wealthSummary_by_pk'));
  });

  test('Test creation of an factory complete', () async {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory
      ..enableCdi()
      ..enableGain()
      ..enableId()
      ..enableHistory()
      ..enableTotal()
      ..enableProfitability()
      ..changeSchema('wealthSummary');

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), contains('wealthSummary'));
    expect(query.mount(), contains('hasHistory'));
    expect(query.mount(), contains('gain'));
    expect(query.mount(), contains('profitability'));
    expect(query.mount(), contains('gain'));
    expect(query.mount(), contains('cdi'));
    expect(query.mount(), contains('id'));

    expect(query.mount(), isNotEmpty);
    expect(query.mount(), isNot('wealthSummary_by_pk'));
    expect(query.mount(), contains('wealthSummary'));
  });
}
