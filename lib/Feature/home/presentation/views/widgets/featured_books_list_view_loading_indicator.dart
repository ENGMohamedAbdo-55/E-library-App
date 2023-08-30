import 'package:flutter/widgets.dart';
import 'package:projects/Core/Widgets/custom_fading_widget.dart';
import 'package:projects/Feature/home/presentation/views/widgets/custom_book_image_loading_indicator.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.only(right: 10, left: 3),
                child: CustomBookImageLoadingIndicator());
          },
        ),
      ),
    );
  }
}
