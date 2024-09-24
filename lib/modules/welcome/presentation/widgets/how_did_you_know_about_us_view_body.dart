import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/core/presentation/widgets/welcome_and_auth_header.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_buttons_section.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class HowDidYouKnowUsViewBody extends StatefulWidget {
  const HowDidYouKnowUsViewBody({
    super.key,
  });

  @override
  State<HowDidYouKnowUsViewBody> createState() =>
      _HowDidYouKnowUsViewBodyState();
}

class _HowDidYouKnowUsViewBodyState extends State<HowDidYouKnowUsViewBody> {
  late final ValueNotifier<int?> _currentIndex;
  late List<HowDidYouKnowUsItemEntity> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = [
      HowDidYouKnowUsItemEntity(
        title: translate(context).facebook,
        icon: AppIcons.facebook,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).googleSearch,
        icon: AppIcons.google,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).appStore,
        icon: AppIcons.appStore,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).youtube,
        icon: AppIcons.youtube,
      ),
      HowDidYouKnowUsItemEntity(
        title: translate(context).tiktok,
        icon: AppIcons.tiktok,
      ),
    ];
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = ValueNotifier<int?>(null);
  }

  void _onItemSelected(index) {
    _currentIndex.value = index;
  }

  void _onContinuePressed() {
    Navigator.pushReplacementNamed(
      context,
      AppRoutes.socialLogInView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                WelcomeAndAuthHeader(
                  headerImage: valueBasedOnTheme<String>(
                    context,
                    light: AppImages.howDidYouKnowUs,
                    dark: AppImages.howDidYouKnowUsDark,
                  )!,
                  headerTitle: translate(context).howDidYouKnowUs,
                ),
                HowDidYouKnowAboutUsButtonsSection(
                  currentIndexValueNotifier: _currentIndex,
                  items: _items,
                  onItemSelected: _onItemSelected,
                ),
              ],
            ),
          ),
          CustomSliverFillRemainingFooter(
            buttonTitle: translate(context).continueText,
            onPressed: _onContinuePressed,
          ),
        ],
      ),
    );
  }
}
