import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 604,
      height: 320,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Expenses',
                      style: Styles.textStyle20
                          .copyWith(color: const Color(0xff064061)),
                    ),
                   const  CustomListTile()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

