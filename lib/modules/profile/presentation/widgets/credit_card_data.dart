import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class CreditCardData extends StatefulWidget {
  const CreditCardData({
    super.key,
    required this.formKey,
    required this.onCreditCardModelChange,
  });

  final GlobalKey<FormState> formKey;
  final void Function(CreditCardModel creditCardModel) onCreditCardModelChange;

  @override
  State<CreditCardData> createState() => _CreditCardDataState();
}

class _CreditCardDataState extends State<CreditCardData> {
  String _cardNumber = '';
  String _expiryDate = '';
  String _cardHolderName = '';
  String _cvvCode = '';
  bool _isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 550, maxHeight: 325),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: CreditCardWidget(
              enableFloatingCard: true,
              glassmorphismConfig: Glassmorphism(
                blurX: 0,
                blurY: 0,
                gradient: const LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                  colors: [
                    Color(0xFF499BC1),
                    Color(0xFF03496B),
                  ],
                  stops: <double>[
                    0.4,
                    0,
                  ],
                ),
              ),
              cardNumber: _cardNumber,
              expiryDate: _expiryDate,
              cardHolderName: _cardHolderName,
              cvvCode: _cvvCode,
              bankName: 'Your Bank',
              showBackView: _isCvvFocused,
              obscureCardNumber: false,
              isHolderNameVisible: true,
              cardType: CardType.mastercard,
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
            ),
          ),
        ),
        CreditCardForm(
          formKey: widget.formKey,
          obscureCvv: true,
          cardNumber: _cardNumber,
          cvvCode: _cvvCode,
          cvvValidationMessage: translate(context).pleaseInputAValidCvv,
          dateValidationMessage: translate(context).pleaseInputAValidDate,
          numberValidationMessage:
              translate(context).pleaseInputAValidCardNumber,
          isHolderNameVisible: true,
          isCardNumberVisible: true,
          isExpiryDateVisible: true,
          cardHolderName: _cardHolderName,
          expiryDate: _expiryDate,
          inputConfiguration: InputConfiguration(
            cardNumberDecoration: InputDecoration(
              hintText:
                  '${translate(context).cardNumber} (XXXX XXXX XXXX XXXX)',
            ),
            expiryDateDecoration: InputDecoration(
              hintText: '${translate(context).expiredDate} (XX/XX)',
            ),
            cvvCodeDecoration: InputDecoration(
              hintText: '${translate(context).cvv} (XXX)',
            ),
            cardHolderDecoration: InputDecoration(
              hintText: translate(context).cardHolder,
            ),
            cardNumberTextStyle: _fieldsTextStyle(context),
            cardHolderTextStyle: _fieldsTextStyle(context),
            expiryDateTextStyle: _fieldsTextStyle(context),
            cvvCodeTextStyle: _fieldsTextStyle(context),
          ),
          onCreditCardModelChange: _onCreditCardModelChange,
        ),
      ],
    );
  }

  TextStyle _fieldsTextStyle(BuildContext context) {
    return AppTextStyles.medium15(context).copyWith(
      color: AppColors.black,
      fontFamily: AppStrings.interFontFamily,
    );
  }

  void _onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      _cardNumber = creditCardModel.cardNumber;
      _expiryDate = creditCardModel.expiryDate;
      _cardHolderName = creditCardModel.cardHolderName;
      _cvvCode = creditCardModel.cvvCode;
      _isCvvFocused = creditCardModel.isCvvFocused;
    });
    widget.onCreditCardModelChange(creditCardModel);
  }
}
