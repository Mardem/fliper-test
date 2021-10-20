class SummaryDetailEntity {
  Data? data;

  SummaryDetailEntity({this.data});

  SummaryDetailEntity.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  WealthSummaryByPk? wealthSummaryByPk;

  Data({this.wealthSummaryByPk});

  Data.fromJson(Map<String, dynamic> json) {
    wealthSummaryByPk = json['wealthSummary_by_pk'] != null
        ? new WealthSummaryByPk.fromJson(json['wealthSummary_by_pk'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.wealthSummaryByPk != null) {
      data['wealthSummary_by_pk'] = this.wealthSummaryByPk?.toJson();
    }
    return data;
  }
}

class WealthSummaryByPk {
  double? cdi;
  int? gain;
  bool? hasHistory;
  int? id;
  int? profitability;
  int? total;

  WealthSummaryByPk(
      {this.cdi,
      this.gain,
      this.hasHistory,
      this.id,
      this.profitability,
      this.total});

  WealthSummaryByPk.fromJson(Map<String, dynamic> json) {
    cdi = json['cdi'];
    gain = json['gain'];
    hasHistory = json['hasHistory'];
    id = json['id'];
    profitability = json['profitability'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cdi'] = this.cdi;
    data['gain'] = this.gain;
    data['hasHistory'] = this.hasHistory;
    data['id'] = this.id;
    data['profitability'] = this.profitability;
    data['total'] = this.total;
    return data;
  }
}
