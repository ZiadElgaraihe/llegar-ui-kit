import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/auth/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/welcome_view_body.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/value_based_on_locale.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  late PageController _pageController;
  late ValueNotifier<int> _currentPageIndex;
  late List<WelcomePageViewItemEntity> _items;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentPageIndex = ValueNotifier<int>(0);

    _pageController.addListener(_listenerMethod);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = [
      WelcomePageViewItemEntity(
        description:
            'The best rental app of the century to rent any thing rentable you want every day',
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.welcomeToLlegar,
          dark: AppImages.welcomeToLlegarDark,
        )!,
        title: 'Welcome to LLEGAR',
      ),
      WelcomePageViewItemEntity(
        description:
            'Don’t worry about your data we have the best security system to safe your privacy',
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.secureApp,
          dark: AppImages.secureAppDark,
        )!,
        title: 'Secure App',
      ),
      WelcomePageViewItemEntity(
        description:
            'We guarantee that the rental process will be completed successfully.\n“We Delivered trust“',
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.makeDeal,
          dark: AppImages.makeDealDark,
        )!,
        title: 'Make a Deal',
      ),
      WelcomePageViewItemEntity(
        description:
            'We provide a service Two factor authentication To ensure that your account is safe from hacking',
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.twoFactorAuth,
          dark: AppImages.twoFactorAuthDark,
        )!,
        title: 'Two factor authentication',
      ),
    ];
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
                  color: valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.black,
                    dark: AppColors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  valueBasedOnLocale<String>(
                    context,
                    ltr: AppIcons.arrowRight,
                    rtl: AppIcons.arrowLeft,
                  )!,
                  colorFilter: valueBasedOnTheme<ColorFilter>(
                    context,
                    dark: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcATop,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: WelcomeViewBody(
        currentPageIndexValueNotifier: _currentPageIndex,
        items: _items,
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
