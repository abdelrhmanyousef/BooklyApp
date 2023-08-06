import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../../../core/utiles/Styless.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styels.textStyel14,
        ),
        const SizedBox(width: 5),
        Text(
          '(4588)',
          style: Styels.textStyel10
              .copyWith(color: const Color.fromARGB(179, 230, 225, 225)),
        ),
      ],
    );
  }
}
