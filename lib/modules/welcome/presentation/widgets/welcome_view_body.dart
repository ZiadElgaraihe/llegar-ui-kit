import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/dots_indicator.dart';
import 'package:llegar/modules/welcome/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/modules/welcome/presentation/widgets/welcome_page_view_item.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class WelcomeViewBody extends StatefulWidget {
  const WelcomeViewBody({
    super.key,
  });

  @override
  State<WelcomeViewBody> createState() => _WelcomeViewBodyState();
}

class _WelcomeViewBodyState extends State<WelcomeViewBody> {
  late ValueNotifier<int> _currentPageIndex;
  late List<WelcomePageViewItemEntity> _items;
  late PageController _pageController;

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
        description: translate(context).theBestRentalApp,
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.welcomeToLlegar,
          dark: AppImages.welcomeToLlegarDark,
        )!,
        title: translate(context).welcomeToLlegar,
      ),
      WelcomePageViewItemEntity(
        description: translate(context).donotWorryAboutYourData,
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.secureApp,
          dark: AppImages.secureAppDark,
        )!,
        title: translate(context).secureApp,
      ),
      WelcomePageViewItemEntity(
        description: translate(context).weGuaranteeThatTheRentalProcess,
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.makeDeal,
          dark: AppImages.makeDealDark,
        )!,
        title: translate(context).makeADeal,
      ),
      WelcomePageViewItemEntity(
        description:
            translate(context).weProvideAServiceTwoFactorAuthentication,
        image: valueBasedOnTheme<String>(
          context,
          light: AppImages.twoFactorAuth,
          dark: AppImages.twoFactorAuthDark,
        )!,
        title: translate(context).twoFactorAuthentication,
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

  void _onNextPressed(BuildContext context, int currentPageIndex) {
    if (currentPageIndex == _items.length - 1) {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.howDidYouKnowUsView,
      );
    } else {
      _pageController.animateToPage(
        currentPageIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                ExpandablePageView.builder(
                  controller: _pageController,
                  itemCount: _items.length,
                  itemBuilder: (context, index) => WelcomePageViewItem(
                    welcomePageViewItemEntity: _items[index],
                  ),
                ),
                const Spacer(),
                ValueListenableBuilder(
                  valueListenable: _currentPageIndex,
                  builder: (context, currentPageIndex, child) => DotsIndicator(
                    length: _items.length,
                    currentPageIndex: currentPageIndex,
                    dotSize: 8,
                    horizontalPadding: 4,
                  ),
                ),
                AppSizes.height24,
                ValueListenableBuilder(
                  valueListenable: _currentPageIndex,
                  builder: (context, currentPageIndex, child) =>
                      CustomElevatedButton(
                    onPressed: () {
                      _onNextPressed(context, currentPageIndex);
                    },
                    title: currentPageIndex == 0
                        ? translate(context).getStarted
                        : translate(context).next,
                  ),
                ),
                AppSizes.height24,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
