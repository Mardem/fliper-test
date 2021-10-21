import 'package:fliper/config/credentials.dart';
import 'package:fliper/entities/factories/summary/summary_detail_factory.dart';
import 'package:fliper/menu.dart';
import 'package:fliper/notifiers/resume/resume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class ResumeService {
  BuildContext? context;

  ResumeService(BuildContext context) {
    this.context = context;
  }

  filter(int idSummary) async {
    try {
      Map<String, dynamic> json = await AppCredentials.connect().query(
        _filterQuery(idSummary),
        variables: {
          "id": idSummary,
        },
      );

      ResumeNotifier notifier = Provider.of<ResumeNotifier>(
        context!,
        listen: false,
      );

      notifier.seedDetail(json);
    } catch (e) {
      Logger logger = Logger();
      logger.e(e.toString());

      EasyLoading.showError(
        'Ops... Não foi possível completar a requisição.\n\nJá estamos trabalhando para resolver isso!',
        duration: Duration(seconds: 5),
        dismissOnTap: true,
      );
    }
  }

  list() async {
    try {
      Map<String, dynamic> json = await AppCredentials.connect().query(
        _listQuery(),
      );

      ResumeNotifier notifier = Provider.of<ResumeNotifier>(
        context!,
        listen: false,
      );

      notifier.seedList(json);

      Get.off(() => MainMenu());
    } catch (e) {
      Logger logger = Logger();
      logger.e(e.toString());

      EasyLoading.showError(
        'Ops... Não foi possível completar a requisição.\n\nJá estamos trabalhando para resolver isso!',
        duration: Duration(seconds: 5),
        dismissOnTap: true,
      );
      throw Exception(e);
    }
  }

  _filterQuery(int id) {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory
      ..enableCdi()
      ..enableId()
      ..enableHistory()
      ..filterById(id);

    return r'''query builderQuery($id: Int!) {''' + query.mount() + '}';
  }

  _listQuery() {
    SummaryDetailFactory factory = SummaryDetailFactory();

    var query = factory
      ..enableCdi()
      ..enableGain()
      ..enableId()
      ..enableHistory()
      ..enableTotal()
      ..enableProfitability()
      ..changeSchema('wealthSummary');

    return r'''query builderQuery {''' + query.mount() + '}';
  }
}
