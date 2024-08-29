import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/auth/presentation/widgets/welcome_view_body.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_text_styles.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  late PageController _pageController;
  late ValueNotifier<int> _currentPageIndex;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentPageIndex = ValueNotifier<int>(0);

    _pageController.addListener(_listenerMethod);
  }

  @override
  void dispose() {
    _pageController.removeListener(_listenerMethod);
    _pageController.dispose();
    _currentPageIndex.dispose();
    super.dispose();
  }

  void _listenerMethod() {
    _currentPageIndex.value = _pageController.page!.round();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Skip',
                style: AppTextStyles.bold24(context).copyWith(
                  color: AppColors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppIcons.arrowRight),
              ),
            ],
          )
        ],
      ),
      body: WelcomeViewBody(
        currentPageIndexValueNotifier: _currentPageIndex,
        pageController: _pageController,
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(top: 12, right: 16, bottom: 24, left: 16),
        child: ValueListenableBuilder(
          valueListenable: _currentPageIndex,
          builder: (context, currentPageIndex, child) => CustomElevatedButton(
            onPressed: () {
              _pageController.animateToPage(
                currentPageIndex + 1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            title: currentPageIndex == 0 ? 'Get Started' : 'Next',
          ),
        ),
      ),
    );
  }
}
