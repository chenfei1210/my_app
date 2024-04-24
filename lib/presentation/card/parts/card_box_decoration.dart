part of 'package:my_app/presentation/card/custom_card.dart';

class _CardBoxDecoration extends StatelessWidget {
  const _CardBoxDecoration({required this.content});

// 寸法
  static const width = 85.6;
  static const height = 53.98;
  static const circular = 3.18;

  final Widget content;

  @override
  Widget build(BuildContext context) {
    const aspectRatio = _CardBoxDecoration.width / _CardBoxDecoration.height;
    const circular =
        300 * (_CardBoxDecoration.circular / _CardBoxDecoration.width);

    return LayoutBuilder(
      builder: (context, constraints) => AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(circular)),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(circular),
            child: content,
          ),
        ),
      ),
    );
  }
}
