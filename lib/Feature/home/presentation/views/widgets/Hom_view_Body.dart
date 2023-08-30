import 'package:flutter/material.dart';
import 'package:projects/Core/utiles/Styles.dart';
import 'package:projects/Feature/home/presentation/views/widgets/featured_listview_bloc_concumer.dart';

import 'Best_Seller_List_View_Bloc_consumer.dart';
import 'Custom_App_Bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CustomAppBar(),
              ),
              FeaturedBooksListViewBlocConsumer(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle22,
                ),
              ),
            ]),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: BestSellerListViewBlocConsumer()),
        )
      ],
    );
  }
}

