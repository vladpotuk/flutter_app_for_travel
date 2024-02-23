import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_for_travel/core/consts/const.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi, Bobr 👋', style: AppTextStyle.primaryText),
                      const SizedBox(height: 5),
                      Text('Exploer the world',
                          style: AppTextStyle.secondaryText),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(AppConst.avatarImage),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              DropDownTextField(
                searchDecoration: InputDecoration(
                  hintText: 'Search for place',
                  suffixIcon: const Icon(Iconsax.activity, size: 20),
                  prefixIcon: const Icon(Iconsax.search_favorite),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppConst.borderRadius),
                    borderSide: const BorderSide(
                        width: 2, color: AppColors.borderColor),
                  ),
                ),
                dropDownList: const [
                  DropDownValueModel(name: 'New York', value: "new_york"),
                  DropDownValueModel(name: 'Chicago', value: 'chicago'),
                  DropDownValueModel(name: 'Washington', value: 'washington'),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular place', style: AppTextStyle.primaryText),
                  Text('View all', style: AppTextStyle.secondaryText),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [],
              )
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          enableFeedback: false,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.home,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.home,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.clock,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.clock,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Clock',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.heart,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.heart,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.user,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.user,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Profile',
            ),
          ],
        ));
  }
}
