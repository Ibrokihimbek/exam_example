import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/core/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SvgPicture.asset(AppIcons.search),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Favourites',
          style: AppStyle.fontLeagueSpartanW400(appcolor: AppColors.black)
              .copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList.builder(
              itemCount: 3,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    width: double.infinity,
                    height: 132,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.C_3B5999,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.C_A8AFB9.withOpacity(0.5),
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 12),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: AppColors.C_A8AFB9,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Add more to the list',
                      style: AppStyle.fontLeagueSpartanW600(
                          appcolor: AppColors.black),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: AppColors.C_A8AFB9,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 12),
            ),
            SliverGrid.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5 / 3.5,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (_, index) {
                return Container(
                  width: double.infinity,
                  height: 132,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.C_FC6828,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.C_A8AFB9.withOpacity(0.5),
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
