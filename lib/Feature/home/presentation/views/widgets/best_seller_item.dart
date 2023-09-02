import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:projects/Core/utiles/app_rourter.dart';
import 'package:projects/Feature/home/data/models/book_model/book_model.dart';
import 'package:projects/Feature/home/data/models/book_model/volume_info.dart';
import 'package:projects/Feature/home/presentation/views/widgets/custom_book_image.dart';

import '../../../../../Core/utiles/Styles.dart';
import 'Book_Rating_Item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    Key? key, required this.bookModel,
    
    
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 7, top: 14),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(imageUrl:bookModel.volumeInfo!.imageLinks!.thumbnail??''),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          bookModel.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle21,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      bookModel.authorName??'',
                      style: Styles.textStyle15,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle21
                              .copyWith(fontWeight: FontWeight.w800),
                        ),
                        // SizedBox(width: MediaQuery.of(context).size.width*.14),
                         const Spacer(),
                        RatingItem(
                          rating: bookModel.rating,
                          ratingCount: bookModel.volumeInfo!.ratingsCount,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
