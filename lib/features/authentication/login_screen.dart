import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/login_form_screen.dart';
import 'package:tiktok_clone/features/authentication/sign_up_screen.dart';
import 'package:tiktok_clone/features/authentication/view_models/social_auth_view_model.dart';
import 'package:tiktok_clone/utils.dart';

import 'widgets/auth_button.dart';

class LoginScreen extends ConsumerWidget {
  static String routeName = "login";
  const LoginScreen({super.key});

  void _onSignUpTab(BuildContext context) {
    // context.pop();
    context.goNamed(SignUpScreen.routeName);
  }

  void _onEmailLoginTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginFormScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: [
              Gaps.v80,
              const Text(
                "Log in to TikTok",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v20,
              const Opacity(
                opacity: .7,
                child: Text(
                  "Manage your account, check notifications, comment on videos, and more.",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Gaps.v40,
              GestureDetector(
                onTap: () => _onEmailLoginTap(context),
                child: const AuthButton(
                  icon: FaIcon(FontAwesomeIcons.user),
                  text: "Use email & password",
                ),
              ),
              Gaps.v16,
              GestureDetector(
                onTap: () =>
                    ref.read(socialAuthProvider.notifier).githubSingIn(context),
                child: const AuthButton(
                  icon: FaIcon(FontAwesomeIcons.github),
                  text: "Continue with Github",
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: isDarkMode(context) ? null : Colors.grey.shade50,
        elevation: 2,
        child: GestureDetector(
          onTap: () => _onSignUpTab(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have  an account?"),
              Gaps.h5,
              Text(
                "Sign up",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
