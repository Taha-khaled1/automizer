import 'package:ecommerce_automizer/presentation_layer/src/style_packge.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.haigh,
    required this.color,
    required this.text,
    required this.press,
    this.rectangel,
    this.colorText,
    this.colorborder,
    this.sideIs,
    this.fontSize,
  });

  final Color color;
  final String text;
  final double width, haigh;
  final void Function()? press;
  final double? rectangel;
  final Color? colorText;
  final Color? colorborder;
  final BorderSide? sideIs;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      width: width,
      height: haigh,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: sideIs ?? BorderSide.none,
              borderRadius: BorderRadius.circular(rectangel ?? 12),
            ),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: MangeStyles().getBoldStyle(
            color: colorText ?? ColorManager.white,
            fontSize: fontSize ?? FontSize.s20,
          ),
          // style: textstyel.headline6!
          //     .copyWith(color: colorText ?? ColorManager.white),
        ),
      ),
    );
  }
}
