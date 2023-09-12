import 'package:diltravel/cubit/page_cubit.dart';
import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class NavItemBot extends StatelessWidget {
  NavItemBot({super.key, this.icon, this.index, this.text});

  String? text;
  // Icon? icon;
  int? index;
  String? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index!);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            icon!,
            width: 24.0,
            height: 24.0,
            color: context.read<PageCubit>().state == index
                ? ColorDilTravel.primary
                : ColorDilTravel.grey,
          ),
          // icon!,
          // Container(
          //   height: 24.0,
          //   width: 24.0,
          //   decoration:
          //       BoxDecoration(image: DecorationImage(image: AssetImage(icon!),)),
          // ),
          // Icon(
          //   icon!,
          //   color: ColorDilTravel.primary,
          // ),
          Text(
            text!,
            style: subText.copyWith(fontSize: 10.0),
          ),
          context.read<PageCubit>().state == index
              ? Container(
                  height: 2.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      color: ColorDilTravel.primary,
                      borderRadius: BorderRadius.circular(18.0)),
                )
              : Container(),
        ],
      ),
    );
  }
}
