class SummaryListEntity {
  Data? data;

  SummaryListEntity({this.data});

  SummaryListEntity.fromJson(Map<String, dynamic> json) {
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
  List<WealthSummary> wealthSummary = [];

  Data({required this.wealthSummary});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['wealthSummary'] != null) {
      wealthSummary = <WealthSummary>[];
      json['wealthSummary'].forEach((v) {
        wealthSummary.add(new WealthSummary.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.wealthSummary != null) {
      data['wealthSummary'] =
          this.wealthSummary.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WealthSummary {
  dynamic cdi;
  int? gain;
  int? id;
  bool? hasHistory;
  int? total;
  dynamic profitability;

  WealthSummary(
      {this.cdi,
      this.gain,
      this.id,
      this.hasHistory,
      this.total,
      this.profitability});

  WealthSummary.fromJson(Map<String, dynamic> json) {
    cdi = json['cdi'];
    gain = json['gain'];
    id = json['id'];
    hasHistory = json['hasHistory'];
    total = json['total'];
    profitability = json['profitability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cdi'] = this.cdi;
    data['gain'] = this.gain;
    data['id'] = this.id;
    data['hasHistory'] = this.hasHistory;
    data['total'] = this.total;
    data['profitability'] = this.profitability;
    return data;
  }
}
