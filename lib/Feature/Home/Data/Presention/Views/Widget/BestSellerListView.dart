import 'package:booklyapp/core/utiles/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../../constans.dart';
import '../../../../../../core/utiles/Styless.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage(assetesdata.Test),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: const Text(
                "Harry Potter and the Goblet of Fire",
                style: Styels.textStyel20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "J.K. Rowling",
              style: Styels.textStyel14.copyWith(
                fontFamily: kGTSectraFine,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  "19.99 €",
                  style:
                      Styels.textStyel20.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
