import 'package:ecommerce_automizer/presentation_layer/src/get_packge.dart';
import 'package:ecommerce_automizer/presentation_layer/src/style_packge.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: SizedBox(
                child:
                    Lottie.asset(JsonAssets.loading, width: 250, height: 250)),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: SizedBox(
                    child: Lottie.asset(JsonAssets.empty,
                        width: 250, height: 250)),
              )
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: SizedBox(
                        child: Lottie.asset(JsonAssets.error,
                            width: 250, height: 250)),
                  )
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: SizedBox(
                            child: Lottie.asset(JsonAssets.empty,
                                width: 250, height: 250)),
                      )
                    : widget;
  }
}
