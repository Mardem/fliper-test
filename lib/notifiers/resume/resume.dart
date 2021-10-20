import 'package:fliper/entities/summary/summary_detail.dart';
import 'package:fliper/entities/summary/summary_list.dart';
import 'package:flutter/material.dart';

class ResumeNotifier extends ChangeNotifier {
  SummaryDetailEntity? detailEntity;
  SummaryListEntity? listEntity;
  int total = 0;

  seedDetail(Map<String, dynamic> json) {
    this.detailEntity = SummaryDetailEntity.fromJson(json);

    notifyListeners();
  }

  seedList(Map<String, dynamic> json) {
    this.listEntity = SummaryListEntity.fromJson(json);
    _total();
    notifyListeners();
  }

  _total() {
    this.listEntity?.data?.wealthSummary.forEach((WealthSummary element) {
      this.total += element.total!;
    });
  }
}
