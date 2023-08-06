import 'package:booklyapp/core/utiles/AppRouter.dart';
import 'package:booklyapp/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constans.dart';
import '../../../../../../core/utiles/Styless.dart';
import 'BookRate.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookdetails);
      },
      child: Row(
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styels.textStyel16
                        .copyWith(fontFamily: CinzelDecorative),
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
                    color: Color.fromARGB(179, 230, 225, 225),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: Styels.textStyel16
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const BookRate(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
