import 'package:fliper/entities/summary/summary_detail.dart';
import 'package:fliper/entities/summary/summary_list.dart';
import 'package:flutter/material.dart';

class ResumeNotifier with ChangeNotifier {
  SummaryDetailEntity? detailEntity;
  SummaryListEntity? listEntity;
  WealthSummary? summarySelected;

  int total = 0;
  double totalSelected = 0.0;

  seedDetail(Map<String, dynamic> json) {
    this.detailEntity = SummaryDetailEntity.fromJson(json);

    notifyListeners();
  }

  seedList(Map<String, dynamic> json) {
    this.listEntity = SummaryListEntity.fromJson(json);
    _total();
    notifyListeners();
  }

  selectSummary(WealthSummary summary) {
    this.summarySelected = summary;

    notifyListeners();
  }

  _total() {
    this.listEntity?.data?.wealthSummary.forEach((WealthSummary element) {
      this.total += element.total!;
    });
  }
}
