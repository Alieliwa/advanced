import 'package:advanced/presentation/resources/assets_manager.dart';
import 'package:advanced/presentation/resources/color_manager.dart';
import 'package:advanced/presentation/resources/string_manager.dart';
import 'package:advanced/presentation/resources/valuse_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();

  final PageController _pageController = PageController();

   int _currentIndex = 0 ;

  List<SliderObject> _getSliderData() => [
  SliderObject(AppStrings.onBoardingTitle1, AppStrings.onBoardingSubTitle1, ImageAssets.onboardingLogo1),
  SliderObject(AppStrings.onBoardingTitle2, AppStrings.onBoardingSubTitle2, ImageAssets.onboardingLogo2),
  SliderObject(AppStrings.onBoardingTitle3, AppStrings.onBoardingSubTitle3, ImageAssets.onboardingLogo3),
  SliderObject(AppStrings.onBoardingTitle4, AppStrings.onBoardingSubTitle4, ImageAssets.onboardingLogo4),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.wihte,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.wihte,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
          controller: _pageController ,
          itemCount: _list.length,
          onPageChanged: (index){
            setState(() {
              _currentIndex = index ;
            });

          },
          itemBuilder: (context,index){
            return ;
          })
    );
  }
}

class SliderObject {
  String? title;
  String? subTitle;
  String? image;

  SliderObject(this.title, this.subTitle, this.image);
}
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(this._sliderObject,{super.key});

  final SliderObject _sliderObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const SizedBox(height: AppSize.s40,),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text("${_sliderObject.title}",
          textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text("${_sliderObject.subTitle}",
          textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: AppSize.s60,),
      ],
    );
  }
}
