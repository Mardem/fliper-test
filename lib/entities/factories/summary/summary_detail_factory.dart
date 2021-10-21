import 'package:fliper/entities/builders/graph_ql.dart';

class SummaryDetailFactory extends GraphQLBuilder {
  String schema = 'wealthSummary_by_pk';

  enableCdi() {
    this.fields.add('cdi');
    return this;
  }

  enableId() {
    this.fields.add('id');
    return this;
  }

  enableGain() {
    this.fields.add('gain');
    return this;
  }

  enableHistory() {
    this..fields.add('hasHistory');
    return this;
  }

  enableProfitability() {
    this.fields.add('profitability');
    return this;
  }

  enableTotal() {
    this.fields.add('total');
    return this;
  }

  changeSchema(String schema) {
    this.schema = schema;
    return this;
  }

  filterById(int id) {
    this.filters.add({'key': 'id', 'value': id});
    return this;
  }
}
