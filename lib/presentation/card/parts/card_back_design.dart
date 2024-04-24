part of 'package:my_app/presentation/card/custom_card.dart';

class _CardBackDesign extends StatelessWidget {
  const _CardBackDesign({
    required this.controller,
    required this.cardItem,
  });

  final FlipCardController controller;
  final CardItem cardItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 4桁暗証番号
              Text('4桁暗証番号: ${cardItem.passcode}'),
              // ショッピング利用可能枠
              Text('ショッピング利用可能枠: ${cardItem.availableShoppingLimit}円'),
              // キャッシング利用可能枠
              Text('キャッシング利用可能枠: ${cardItem.availableCashAdvanceLimit}円'),
              // 年会費
              Text('年会費: ${cardItem.annualFee}'),
              // 返済口座
              Text('返済口座: ${cardItem.repaymentAccount}'),
              // 備考
              Text('備考: ${cardItem.note}'),
            ],
          ),
        ),
        // flip button
        GestureDetector(
          onTap: () {
            HapticFeedback.vibrate();
            controller.toggleCard();
          },
          child: const SizedBox(
            width: 40,
            height: 40,
            child: GlobalAssetImage.flipIcon,
          ),
        ),
      ],
    );
  }
}
