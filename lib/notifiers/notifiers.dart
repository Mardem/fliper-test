import 'package:fliper/notifiers/resume/resume.dart';
import 'package:provider/provider.dart';

var notifiers = [
  ChangeNotifierProvider(create: (_) => ResumeNotifier()),
];
