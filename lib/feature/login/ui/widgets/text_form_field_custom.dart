import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/app_text_form_field.dart';
import 'package:finance_ui/feature/login/data/model/login_request_model.dart';
import 'package:finance_ui/feature/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFormFieldCustom extends StatelessWidget {
  TextFormFieldCustom({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Form(
        key: formKey,
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              context.pushReplacementNamed(Routes.homePage);
            } else if (state is LoginError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                AppTextFormField(
                  controller: emailcontroller,
                  hinttext: 'Enter your email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter email';
                    }
                    return null;
                  },
                ),

                verticalSpace(20),

                AppTextFormField(
                  controller: passwordcontroller,
                  hinttext: 'Enter your password',
                  suffixIcon: const Icon(Icons.visibility, size: 22),
                  isObscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter password';
                    }
                    return null;
                  },
                ),

                verticalSpace(15),

                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () => context.pushNamedAndRemoveUntil(
                        Routes.forgotPassPage,
                        predicate: (route) => false,
                      ),
                      child: Text(
                        'Forgot password?',
                        style: TextStyles.font14DarkGraySemiBold,
                      ),
                    ),
                  ],
                ),

                verticalSpace(20),

                state is LoginLoading
                    ? CircularProgressIndicator(color: AppColors.mainAppColor)
                    : AppTextButton(
                        buttonHeight: 65,
                        buttonWidth: 331,
                        buttonText: 'Login',
                        textStyle: TextStyles.font15whiteSemiBold,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<LoginCubit>().login(
                              LoginRequestModel(
                                email: emailcontroller.text,
                                password: passwordcontroller.text,
                              ),
                            );
                          }
                        },
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
