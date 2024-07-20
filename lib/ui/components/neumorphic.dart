import 'package:body_weight_recorder/ui/color.dart';
import 'package:flutter/material.dart';

enum NuemorphicStyle {
  /// 浮き出る
  floating,

  /// 凹む
  concave,
}

class Neumorphic extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final double borderRadius;
  final NuemorphicStyle nuemorphicStyle;
  const Neumorphic({
    super.key,
    required this.width,
    required this.height,
    this.child,
    this.nuemorphicStyle = NuemorphicStyle.floating,
    this.borderRadius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    final appColor = AppColor();
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: appColor.neumorphicPrimary,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          /// 右下に濃い影を入れる
          BoxShadow(
            color: appColor.neumorphicDarkShadow,
            spreadRadius: 5,
            blurRadius: 7,
            offset: nuemorphicStyle == NuemorphicStyle.floating ? const Offset(3, 3) : const Offset(-3, -3),
          ),

          /// 左下に明るい色を入れる
          BoxShadow(
            color: appColor.neumorphicLightShadow,
            spreadRadius: 5,
            blurRadius: 7,
            offset: nuemorphicStyle == NuemorphicStyle.floating ? const Offset(-3, -3) : const Offset(3, 3),
          ),
        ],
      ),
      child: child,
    );
  }
}
