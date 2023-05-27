import 'package:ecommerce_automizer/presentation_layer/resources/theme_manager.dart';
import 'package:ecommerce_automizer/presentation_layer/src/get_packge.dart';
import 'package:ecommerce_automizer/presentation_layer/src/style_packge.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      // getPages: getPage,
      // home: HomeScreen(),
    );
  }
}
// ignore: unused_element

