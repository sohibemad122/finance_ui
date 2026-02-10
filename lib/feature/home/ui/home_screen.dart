import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/feature/home/widgets/carousel_slider.dart';
import 'package:finance_ui/feature/home/widgets/services_money.dart';
import 'package:finance_ui/feature/home/widgets/topbar_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopbarHome(),
              verticalSpace(5),
              const CustomCarouselSlider(),
              verticalSpace(5),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ServicesMoney(),
                        ServicesMoney(
                          image: "assets/images/Wallet1.png",
                          title: 'Pay the bill',
                          subTitle: 'Lorem ipsum',
                        ),
                      ],
                    ),
                    verticalSpace(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ServicesMoney(
                          title: 'Request',
                          subTitle: 'Lorem ipsum',
                        ),
                        ServicesMoney(
                          image: 'assets/images/3 User.png',
                          title: 'Contact',
                          subTitle: 'Lorem ipsum',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
