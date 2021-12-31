import 'package:e_commerce_app/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: .6,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
          ),
          itemCount: 6,
          itemBuilder: (_, i) {
            if (i.isEven) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Positioned(
                        top: 50,
                        width: 300,
                        height: 250,
                        child: Container(
                          color: white,
                        ),
                      ),
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Material(
                            elevation: 8,
                            child: Container(
                              height: 125,
                              width: 125,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Positioned(
                        top: 50,
                        width: 300,
                        height: 250,
                        child: Container(
                          color: white,
                        ),
                      ),
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            height: 125,
                            width: 125,
                            color: white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
      baseColor: bgColor,
      highlightColor: Colors.white,
    );
  }
}