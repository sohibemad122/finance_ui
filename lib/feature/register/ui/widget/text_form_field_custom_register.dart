import 'package:finance_ui/core/helpers/extension.dart';
import 'package:finance_ui/core/helpers/spacing.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/text_style.dart';
import 'package:finance_ui/core/widgets/app_text_button.dart';
import 'package:finance_ui/core/widgets/app_text_form_field.dart';
import 'package:finance_ui/core/widgets/social_media_login.dart';
import 'package:finance_ui/feature/register/data/model/register_request_model.dart';
import 'package:finance_ui/feature/register/logic/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFormFieldCustomRegister extends StatelessWidget {
  TextFormFieldCustomRegister({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Form(
        key: formKey,
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listenWhen: (previous, current) =>
              current is RegisterLoading ||
              current is RegisterError ||
              current is RegisterSuccess,
          listener: (context, state) {
            if (state is RegisterSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: const [
                      Icon(Icons.check_circle, color: Colors.white),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Registration Successful Please login!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: AppColors.mainAppColor,
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  duration: const Duration(seconds: 3),
                ),
              );
              context.pushReplacementNamed(Routes.loginPage);
            } else if (state is RegisterError) {}
          },
          builder: (context, state) {
            return Column(
              children: [
                AppTextFormField(
                  controller: nameController,
                  hinttext: 'Username',
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter username' : null,
                ),
                verticalSpace(20),
                AppTextFormField(
                  controller: emailController,
                  hinttext: 'Email',
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter email' : null,
                ),
                verticalSpace(20),
                AppTextFormField(
                  controller: passwordController,
                  hinttext: 'Password',
                  suffixIcon: Icon(Icons.visibility, size: 22),
                  isObscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter password' : null,
                ),
                verticalSpace(20),
                AppTextFormField(
                  controller: confirmPasswordController,
                  hinttext: 'Confirm password',
                  suffixIcon: Icon(Icons.visibility, size: 22),
                  isObscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) return 'Please confirm password';
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                verticalSpace(30),
                state is RegisterLoading
                    ? CircularProgressIndicator(color: AppColors.mainAppColor)
                    : AppTextButton(
                        buttonWidth: 331,
                        buttonHeight: 65,
                        buttonText: 'Register',
                        textStyle: TextStyles.font15whiteSemiBold,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<RegisterCubit>().register(
                              RegisterRequestModel(
                                name: nameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                          }
                        },
                      ),
                verticalSpace(30),
                SocialMediaLogin(loginOrRegisterText: 'Or Register with'),
              ],
            );
          },
        ),
      ),
    );
  }
}
