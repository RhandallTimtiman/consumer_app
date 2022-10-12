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
                height: Screen.getProportionateScreenHeight(context, 88),
                padding: const EdgeInsets.all(24),
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
                      32,
                    ),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const Carousel(
                carouselHeight: 300,
              ),
              SizedBox(
                height: Screen.getProportionateScreenHeight(context, 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Screen.width(context) * .8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ketoplast (Ketofren 30 mg Plasters 7 pcs)',
                            style: TextStyle(
                              fontSize: Screen.getProportionateScreenHeight(
                                context,
                                24,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.favorite_border,
                        size: Screen.getProportionateScreenHeight(
                          context,
                          40,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Screen.width(context) * .8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Php 200.00',
                            style: TextStyle(
                              fontSize: Screen.getProportionateScreenHeight(
                                context,
                                20,
                              ),
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            'Php 200.00',
                            style: TextStyle(
                              fontSize: Screen.getProportionateScreenHeight(
                                context,
                                24,
                              ),
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: Screen.getProportionateScreenHeight(
                                  context,
                                  24,
                                ),
                                color: Colors.amber,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: Screen.getProportionateScreenHeight(
                                    context,
                                    16,
                                  ),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '(17 Reviews)',
                                style: TextStyle(
                                  fontSize: Screen.getProportionateScreenHeight(
                                    context,
                                    16,
                                  ),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            Icons.forward_rounded,
                            size: Screen.getProportionateScreenHeight(
                              context,
                              40,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
