import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../../../core/utiles/Styless.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styels.textStyel16,
        ),
        const SizedBox(width: 5),
        Text(
          '(4588)',
          style: Styels.textStyel14
              .copyWith(color: const Color.fromARGB(179, 230, 225, 225)),
        ),
      ],
    );
  }
}
