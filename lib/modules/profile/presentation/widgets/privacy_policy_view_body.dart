import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/privacy_policy_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/privacy_policy_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class PrivacyPolicyViewBody extends StatefulWidget {
  const PrivacyPolicyViewBody({super.key});

  @override
  State<PrivacyPolicyViewBody> createState() => _PrivacyPolicyViewBodyState();
}

class _PrivacyPolicyViewBodyState extends State<PrivacyPolicyViewBody> {
  late List<PrivacyPolicyEntity> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = <PrivacyPolicyEntity>[
      PrivacyPolicyEntity(
        title: translate(context).introduction,
        details: translate(context).llegarIsCommittedToProtectingYourPrivacy,
      ),
      PrivacyPolicyEntity(
        title: translate(context).typesOfDataWeCollect,
        details: translate(context).weMayCollectTheFollowingTypesOfInformation,
      ),
      PrivacyPolicyEntity(
        title: translate(context).useOfYourPersonalData,
        details: translate(context).weUseTheInformationWeCollectTo,
      ),
      PrivacyPolicyEntity(
        title: translate(context).disclosureOfYourPersonalData,
        details: translate(context).weMayShareYourInformationWith,
      ),
      PrivacyPolicyEntity(
        title: translate(context).dataSecurity,
        details: translate(context).weTakeDataSecuritySeriously,
      ),
      PrivacyPolicyEntity(
        title: translate(context).childrenPrivacy,
        details: translate(context).ourServicesAreNotIntendedForUseByIndividuals,
      ),
      PrivacyPolicyEntity(
        title: translate(context).changesToThisPolicy,
        details: translate(context).weMayUpdateThisPrivacyPolicy,
      ),
      PrivacyPolicyEntity(
        title: translate(context).contactUs,
        details: translate(context).ifYouHaveAnyQuestions,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.bodyHorizontalPadding(context).left,
        vertical: 24,
      ),
      itemCount: _items.length,
      itemBuilder: (context, index) => PrivacyPolicySection(
        pointNumber: index + 1,
        privacyPolicyEntity: _items[index],
      ),
      separatorBuilder: (context, index) => AppSizes.height24,
    );
  }
}
