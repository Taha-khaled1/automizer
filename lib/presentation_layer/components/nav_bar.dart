import 'package:ecommerce_automizer/presentation_layer/src/components_packge.dart';
import 'package:ecommerce_automizer/presentation_layer/src/style_packge.dart';
import 'package:ecommerce_automizer/presentation_layer/utils/responsive_design/ui_components/info_widget.dart';

class BottomNavAuth extends StatelessWidget {
  const BottomNavAuth({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        return SizedBox(
          height: 110,
          child: Column(
            children: [
              CustomButton(
                width: deviceInfo.localWidth * 0.85,
                haigh: 60,
                color: ColorManager.kPrimary,
                text: text,
                press: press,
              ),
            ],
          ),
        );
      },
    );
  }
}
