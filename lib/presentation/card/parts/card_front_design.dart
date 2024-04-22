part of 'package:my_app/presentation/card/custom_card.dart';

class _CardFrontDesign extends StatelessWidget {
  const _CardFrontDesign({
    required this.controller,
    required this.cardItem,
  });

  final FlipCardController controller;
  final CardItem cardItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // カード名
                  Text(cardItem.cardName),
                  // 発行企業
                  Text(cardItem.issuingCompany),
                  // カード区分
                  Text(cardItem.classification.name),
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
        ),
        Column(
          children: [
            // カード番号
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List<LongPressCopyText>.generate(
                  4,
                  (int index) => LongPressCopyText(
                    Text(
                      cardItem.number.split(' ').toList()[index],
                      style: numberTextStyle,
                    ),
                    toastTitle: 'カード番号(${index + 1}番目)',
                  ),
                ),
                GestureDetector(
                  onLongPress: () {
                    HapticFeedback.vibrate();
                    Clipboard.setData(ClipboardData(
                        text: cardItem.number.replaceAll(' ', '')));
                    showToast(
                      'カード番号をコビーしました\n(debug)${cardItem.number.replaceAll(' ', '')}',
                      duration: const Duration(milliseconds: 1500),
                      position: ToastPosition.bottom,
                      backgroundColor: Colors.lightBlue,
                      radius: 13,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    );
                  },
                  child: const Icon(Icons.copy),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // CVV
            Align(
              alignment: Alignment.centerRight,
              child: LongPressCopyText(
                Text(
                  cardItem.cardVerificationValue,
                  style: cardVerificationValueTextStyle,
                ),
                toastTitle: 'CVV',
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 有効期限
                  Text(
                    cardItem.effectiveDate.toString(),
                    style: effectiveDateTextStyle,
                  ),
                  // 名義人
                  Text(
                    cardItem.cardHolder,
                    style: cardHolderTextStyle,
                  ),
                ],
              ),
            ),
            // brand logo
            SizedBox(
              width: 50,
              child: cardItem.brand.logo,
            ),
          ],
        ),
      ],
    );
  }
}
