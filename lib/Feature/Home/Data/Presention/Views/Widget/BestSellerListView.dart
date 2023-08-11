import 'package:booklyapp/core/utiles/AppRouter.dart';
import 'package:booklyapp/core/utiles/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constans.dart';
import '../../../../../../core/utiles/Styless.dart';
import '../../../../domain/entites/Bookentite.dart';
import 'BookRate.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem(
      {super.key,
      required this.books,
      required this.image,
      required this.Name,
      required this.auth,
      required this.count});
  final List<BookEntites> books;
  final String image;
  final dynamic Name;

  final dynamic auth;
  final dynamic count;

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
                    child: CachedNetworkImage(
                      imageUrl: image,
                      fit: BoxFit.fill,
                    )),
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
                    Name,
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
                  auth,
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
                      count.toString(),
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
