import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/feature/home/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;

  final List<Widget> _cards = [
    CardItem(
      cardName: 'Z-Card',
      cardTypeImage: 'assets/images/Group 3.png',
      balance: '5000 EG',
      cardNumber: '****  9012',
      expiryDate: '05/24',
    ),
    CardItem(backgroundColor: AppColors.darkPurple),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _cards,
          carouselController: _controller,
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.6,
            enlargeCenterPage: true,
            enlargeFactor: 0.15,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _cards.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 25.0.w,
                height: 13.0.h,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.mainAppColor.withOpacity(
                    _current == entry.key ? 0.9 : 0.2,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
