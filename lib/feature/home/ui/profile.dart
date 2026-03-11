import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/feature/home/logic/cubit/home_cubit.dart';
import 'package:finance_ui/feature/home/widgets/back_botton.dart';
import 'package:finance_ui/feature/home/widgets/data_user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 15),
          child: SingleChildScrollView(
            child: BlocConsumer<HomeCubit, HomeState>(
              listenWhen: (previous, current) =>
                  current is LogoutError ||
                  current is LogoutLoading ||
                  current is LogoutSuccess,
              listener: (context, state) {
                if (state is LogoutSuccess) {
                  Navigator.of(
                    context,
                    rootNavigator: true,
                  ).pushNamedAndRemoveUntil(Routes.loginPage, (route) => false);
                }
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BackBottonAndAppBar(
                      text: 'My Profile',
                      image: 'assets/images/Edit Square.png',
                    ),
                    verticalSpace(40),

                    Center(
                      child: CircleAvatar(
                        radius: 70,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/sohib.png',
                            fit: BoxFit.cover,
                            width: 150.w,
                            height: 150.h,
                          ),
                        ),
                      ),
                    ),
                    verticalSpace(20),
                    ProfileField(label: 'Full Name', value: 'Sohib Emad'),
                    verticalSpace(15),
                    ProfileField(label: 'Email', value: 'm9749172@gmail.com'),
                    verticalSpace(15),
                    ProfileField(label: 'Phone Number', value: '+201096462825'),

                    verticalSpace(15),
                    ProfileField(label: 'Address', value: 'Cairo,Egypt'),
                    verticalSpace(20),
                    state is LogoutLoading
                        ? CircularProgressIndicator()
                        : GestureDetector(
                            onTap: () async {
                              await context.read<HomeCubit>().logout();
                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: AppColors.mainAppColor,
                                border: Border.all(
                                  color: AppColors.mainAppColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Logout',
                                  style: TextStyles.font15whiteSemiBold,
                                ),
                              ),
                            ),
                          ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
