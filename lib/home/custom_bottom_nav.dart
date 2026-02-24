import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  static const Color goldColor = Color(0xFFE2BE7F);
  static const Color grayBg = Color(0xFF5C5C5C);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: goldColor,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(
            icon: "assets/images/Vector2.png",
            label: "Quran",
            index: 0,
          ),
          _navItem(
            icon: "assets/images/book.png",
            label: "Hadith",
            index: 1,
          ),
          _navItem(
            icon: "assets/images/necklace-islam-svgrepo-com 1.png",
            label: "Sebha",
            index: 2,
          ),
          _navItem(
            icon: "assets/images/radio (1).png",
            label: "Radio",
            index: 3,
          ),
          _navItem(
            icon: "assets/images/Vector3.png",
            label: "Time",
            index: 4,
          ),
        ],
      ),
    );
  }

  Widget _navItem({
    required String icon,
    required String label,
    required int index,
  }) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? grayBg : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              icon,
              width: 28,
              color: Colors.white,
            ),
          ),

          if (isSelected) ...[
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
