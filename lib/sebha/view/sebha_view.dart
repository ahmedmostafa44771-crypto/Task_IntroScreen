import 'package:flutter/material.dart';
import 'package:islami/home/custom_bottom_nav.dart';
import 'package:islami/home/intro_app_bar.dart';
import 'package:islami/sebha/view/sebha_body.dart';
import 'package:islami/sebha/viewmodel/sebha_viewmodel.dart';


class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen>
    with SingleTickerProviderStateMixin {
  static const Color goldColor = Color(0xFFE2BE7F);

  late AnimationController _controller;
  late Animation<double> _shakeAnimation;

  final TasbeehViewModel viewModel = TasbeehViewModel();
  int selectedIndex = 2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );

    _shakeAnimation = Tween<double>(
      begin: -0.05,
      end: 0.05,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  void _onTasbeehTap() {
    viewModel.increment();

    _controller.forward().then((_) {
      _controller.reverse();
    });

    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/Background.png",
              fit: BoxFit.cover,
            ),
          ),

          Column(
            children: [
              const IntroAppBar(),
              const SizedBox(height: 20),

              const Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: _onTasbeehTap,
                    child: AnimatedBuilder(
                      animation: _shakeAnimation,
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: _shakeAnimation.value,
                          child: child,
                        );
                      },
                      child: SebhaBody(viewModel: viewModel),
                    ),
                  ),
                ),
              ),

              BottomNavBar(
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
