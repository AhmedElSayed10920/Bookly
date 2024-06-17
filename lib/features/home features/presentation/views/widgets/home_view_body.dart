import 'package:booklyapp/features/home%20features/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
           SizedBox(
            height: 40,
          ),
          CustomAppBar()
        ],
      ),
    );
  }
}