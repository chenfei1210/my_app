import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/infrastructure/model/card_item.dart';
import 'package:my_app/presentation/component/text/long_press_copy_text.dart';
import 'package:my_app/presentation/component/text/text_style.dart';
import 'package:my_app/resources/assets/images.dart';
import 'package:oktoast/oktoast.dart';
import 'package:url_launcher/url_launcher.dart';

part 'package:my_app/presentation/card/card_view/parts/card_back_design.dart';
part 'package:my_app/presentation/card/card_view/parts/card_box_decoration.dart';
part 'package:my_app/presentation/card/card_view/parts/card_front_design.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    required this.cardItem,
    required this.width,
    super.key,
  });

  final CardItem cardItem;
  final double width;
  final _controller = FlipCardController();

  void doStuff() => _controller.toggleCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlipCard(
          controller: _controller,
          flipOnTouch: false,
          front: _CardBoxDecoration(
            content: _CardFrontDesign(
              controller: _controller,
              cardItem: cardItem,
            ),
          ),
          back: _CardBoxDecoration(
            content: _CardBackDesign(
              controller: _controller,
              cardItem: cardItem,
            ),
          ),
        ),
      ),
    );
  }
}
