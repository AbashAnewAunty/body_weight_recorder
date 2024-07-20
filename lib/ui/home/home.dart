import 'package:body_weight_recorder/ui/color.dart';
import 'package:body_weight_recorder/ui/components/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final baseColor = AppColor().neumorphicPrimary;
    return Material(
      color: baseColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: baseColor,
          body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Neumorphic(
                      width: 50,
                      height: 50,
                      borderRadius: 25,
                      child: Icon(Icons.settings),
                    ),
                    Neumorphic(
                      width: 50,
                      height: 50,
                      borderRadius: 25,
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Neumorphic(
                  width: double.infinity,
                  height: 500,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Neumorphic(
                      width: double.infinity,
                      height: 100,
                      nuemorphicStyle: NuemorphicStyle.concave,
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: AppColor().neumorphicPrimary.withOpacity(0.8),
              borderRadius: BorderRadius.circular(37.5),
              boxShadow: [
                BoxShadow(
                  color: AppColor().neumorphicDarkShadow,
                  blurRadius: 5,
                  spreadRadius: 3,
                  offset: const Offset(3, 3),
                )
              ],
            ),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
