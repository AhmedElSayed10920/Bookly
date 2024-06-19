import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/features/home%20features/presentation/views/widgets/best_seller_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) =>  Padding(
          padding:const  EdgeInsets.only(bottom: 20),
          child:  GestureDetector(
            onTap:() {
                      GoRouter.of(context).push(AppRouter.goBookDetailed);
                    }, 
            child:const BestSellerListItem()),
        ),
      ),
    );
  }
}
