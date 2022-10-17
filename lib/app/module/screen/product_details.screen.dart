import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ContainerBG(
          containerHeight: Screen.height(context),
          containerWidth: Screen.width(context),
          widget: Column(
            children: [
              Container(
                width: Screen.width(context),
                height: Screen.getProportionateScreenHeight(context, 75),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                child: Text(
                  'Ketoplast',
                  style: TextStyle(
                    fontSize: Screen.getProportionateScreenHeight(
                      context,
                      25,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const Carousel(
                carouselHeight: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
