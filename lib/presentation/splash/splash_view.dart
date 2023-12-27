import 'dart:async';

import 'package:advanced/presentation/resources/assets_manager.dart';
import 'package:advanced/presentation/resources/color_manager.dart';
import 'package:advanced/presentation/resources/constant_manager.dart';
import 'package:advanced/presentation/resources/routs_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer? _timer;

  _startDelay(){
    _timer = Timer(const Duration(seconds: AppConstant.splashDeploy), _goNext);
  }

  _goNext(){
    Navigator.pushReplacementNamed(context, Routs.onBoardingRoute);
  }
  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,

      body: const Center(
        child: Image(image: AssetImage(ImageAssets.splashLogo),),
      ) ,
    );
  }
  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }
}
