import 'package:fliper/config/credentials.dart';
import 'package:fliper/config/routes/default.dart';
import 'package:fliper/entities/summary/summary_detail.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:logger/logger.dart';

class ResumeService {
  filter(int idSummary) async {
    try {
      EasyLoading.showToast('Iniciando...',
          toastPosition: EasyLoadingToastPosition.bottom);

      String url = DefaultRoutes.host + '/graphql';

      HasuraConnect hasuraConnect = HasuraConnect(url, headers: {
        'x-hasura-admin-secret': AppCredentials.graphQLSecret,
      });

      const String summaryById = r'''
     query summarDetail($id: Int!) {
      wealthSummary_by_pk(id: $id) {
        cdi
        gain
        hasHistory
        id
        profitability
        total
      }
    }
    ''';

      Map<String, dynamic> json = await hasuraConnect.query(
        summaryById,
        variables: {
          "id": idSummary,
        },
      );
      Logger logger = Logger();

      SummaryDetailEntity detailEntity = SummaryDetailEntity.fromJson(json);
      logger.d(detailEntity.data?.wealthSummaryByPk?.cdi ?? 0);

      EasyLoading.dismiss();
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
}
