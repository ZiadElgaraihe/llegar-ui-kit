import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/privacy_policy_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/privacy_policy_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class PrivacyPolicyViewBody extends StatelessWidget {
  const PrivacyPolicyViewBody({super.key});

  static final List<PrivacyPolicyEntity> _items = <PrivacyPolicyEntity>[
    PrivacyPolicyEntity(
      title: (context) => translate(context).introduction,
      details: (context) =>
          translate(context).llegarIsCommittedToProtectingYourPrivacy,
    ),
    PrivacyPolicyEntity(
      title: (context) => translate(context).typesOfDataWeCollect,
      details: (context) =>
          translate(context).weMayCollectTheFollowingTypesOfInformation,
    ),
    PrivacyPolicyEntity(
      title: (context) => translate(context).useOfYourPersonalData,
      details: (context) => translate(context).weUseTheInformationWeCollectTo,
    ),
    PrivacyPolicyEntity(
      title: (context) => translate(context).disclosureOfYourPersonalData,
      details: (context) => translate(context).weMayShareYourInformationWith,
    ),
    PrivacyPolicyEntity(
      title: (context) => translate(context).dataSecurity,
      details: (context) => translate(context).weTakeDataSecuritySeriously,
    ),
    PrivacyPolicyEntity(
      title: (context) => translate(context).childrenPrivacy,
      details: (context) =>
          translate(context).ourServicesAreNotIntendedForUseByIndividuals,
    ),
    PrivacyPolicyEntity(
      title: (context) => translate(context).changesToThisPolicy,
      details: (context) => translate(context).weMayUpdateThisPrivacyPolicy,
    ),
    PrivacyPolicyEntity(
      title: (context) => translate(context).contactUs,
      details: (context) => translate(context).ifYouHaveAnyQuestions,
    ),
  ];

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
