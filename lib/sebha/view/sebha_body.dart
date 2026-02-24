import 'package:flutter/material.dart';

import '../viewmodel/sebha_viewmodel.dart';

class SebhaBody extends StatelessWidget {
  final TasbeehViewModel viewModel;

  const SebhaBody({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/SebhaBody.png",
          width: 340,
        ),
        Positioned(
          top: -70,
          child: Image.asset(
            "assets/images/sebha2.png",
            width: 130,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              viewModel.tasbeehText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${viewModel.count}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
