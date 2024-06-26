part of 'package:my_app/presentation/card/card_view/card_widget.dart';

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
        // CVV
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'セキュリティ\nコード',
                style: TextStyle(fontSize: 8),
              ),
              const SizedBox(width: 5),
              LongPressCopyText(
                Text(
                  cardItem.cardVerificationValue,
                  style: cardVerificationValueTextStyle,
                ),
                toastTitle: 'CVV',
              ),
            ],
          ),
        ),
        const Spacer(),
        // カード番号
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: displayNumberWidget(cardItem.displayNumber),
            ),
            GestureDetector(
              onLongPress: () {
                HapticFeedback.vibrate();
                Clipboard.setData(
                    ClipboardData(text: cardItem.number.replaceAll(' ', '')));
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
        const Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 名義人
                  Text(
                    cardItem.cardHolder,
                    style: cardHolderTextStyle,
                  ),
                  // 有効期限
                  Row(
                    children: [
                      const Text(
                        'GOOD\nTHRU',
                        style: TextStyle(fontSize: 8),
                      ),
                      Column(
                        children: [
                          Text(
                            cardItem.effectiveDate.toString(),
                            style: effectiveDateTextStyle,
                          ),
                          const Text(
                            'MONTH / YEAR',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ],
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

  Widget displayNumberWidget(String disPlayNumber) {
    final displayNumberSplitList = disPlayNumber.split(' ').toList();
    List<Widget> displayNumberWidgetList = [];

    for (var i = 0; i < displayNumberSplitList.length; i++) {
      displayNumberWidgetList.add(
        LongPressCopyText(
          Text(
            displayNumberSplitList[i],
            style: numberTextStyle,
          ),
          toastTitle: 'カード番号(${i + 1}番目)',
        ),
      );

      if (i != displayNumberSplitList.length - 1) {
        displayNumberWidgetList.add(const SizedBox(width: 8));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: displayNumberWidgetList,
    );
  }
}
