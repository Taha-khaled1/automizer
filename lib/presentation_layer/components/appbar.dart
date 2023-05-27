import 'package:ecommerce_automizer/presentation_layer/src/style_packge.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: BackButton(
      color: ColorManager.kPrimary,
    ),
  );
}
