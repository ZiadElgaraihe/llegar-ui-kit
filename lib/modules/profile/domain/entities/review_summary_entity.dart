import 'package:llegar/modules/profile/domain/entities/payment_method_entity.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';

class ReviewSummaryEntity {
  final PremiumPackageEntity premiumPackageEntity;
  final PaymentMethodEntity paymentMethodEntity;

  const ReviewSummaryEntity({
    required this.premiumPackageEntity,
    required this.paymentMethodEntity,
  });
}
