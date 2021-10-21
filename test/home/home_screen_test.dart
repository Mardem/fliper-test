import 'package:fliper/screens/main/components/texts/description.dart';
import 'package:fliper/screens/main/components/texts/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

class _Wrapper extends StatelessWidget {
  final Widget child;

  _Wrapper(this.child);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(1125, 2436),
      orientation: Orientation.portrait,
    );
    return child;
  }
}

Widget testableWidget({Widget? child}) {
  return MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(
      home: Scaffold(body: _Wrapper(child!)),
      builder: EasyLoading.init(),
    ),
  );
}

main() {
  testWidgets('Test widget TitleHomeStack', (WidgetTester tester) async {
    await tester.pumpWidget(
      testableWidget(
        child: Stack(
          children: [TitleHomeStack()],
        ),
      ),
    );

    // Create the Finders.
    final titleFinder =
        find.text('Gerencie seus investimentos \nem alguns cliques');

    expect(titleFinder, findsOneWidget);
  });

  testWidgets('Test widget DescriptionHomeStack', (WidgetTester tester) async {
    await tester.pumpWidget(
      testableWidget(
        child: Stack(
          children: [DescriptionHomeStack()],
        ),
      ),
    );

    // Create the Finders.
    final titleFinder = find.text(
        'Preparado para ter suas finanças e investimentos na palma da mão?');

    expect(titleFinder, findsOneWidget);
  });
}
