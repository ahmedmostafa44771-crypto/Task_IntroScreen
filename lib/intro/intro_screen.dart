import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/home/hom_page.dart';
import 'package:islami/sebha/view/sebha_view.dart';
import 'package:islami/ui/app_asset.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  List<PageViewModel> get pages => [

    PageViewModel(
      title: "",
      body: "",
      image: Image.asset(AppAsset.logo,fit: BoxFit.cover,),
     decoration: const PageDecoration(
      fullScreen: true,
     imageAlignment: Alignment.center,
     ),
    ),
    PageViewModel(
      title: "",
      body: "",
      image: Image.asset(AppAsset.theMosque,fit: BoxFit.cover,),
      decoration: const PageDecoration(
        fullScreen: true,
      ),
    ),
    PageViewModel(
      title: "",
      body: "",
      image: Image.asset(AppAsset.quran,fit: BoxFit.cover,),
      decoration: const PageDecoration(
        fullScreen: true,
      ),
    ),
    PageViewModel(
      title: "",
      body: "",
      image: Image.asset(AppAsset.prayers,fit: BoxFit.cover,),
      decoration: const PageDecoration(
        fullScreen: true,
      ),
    ),
    PageViewModel(
      title: "",
      body: "",
      image: Image.asset(AppAsset.radio,fit: BoxFit.cover,),
      decoration: const PageDecoration(
        fullScreen: true,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages, // list PageViewModel
      showBackButton: true,
      showNextButton: true,
      showDoneButton: true,

      back: const Text(
        'Back',
        style: TextStyle(
          color: Colors.amber,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),

      next: const Text(
        'Next',
        style: TextStyle(
          color: Colors.amber,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),

      done: const Text(
        'Done',
        style: TextStyle(
          color: Colors.amber,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),

      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const TasbeehScreen()),
        );
      },

      dotsDecorator: DotsDecorator(
        activeColor: Colors.amber,
        color: Colors.white24,
        size: const Size(8, 8),
        activeSize: const Size(18, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}