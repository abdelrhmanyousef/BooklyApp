import 'package:flutter/cupertino.dart';

import '../../../../../../core/utiles/Styless.dart';
import 'SimilarBoxListView.dart';

class SimilarBoxSction extends StatelessWidget {
  const SimilarBoxSction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styels.textStyel16,
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBoxListView()
      ],
    );
  }
}
