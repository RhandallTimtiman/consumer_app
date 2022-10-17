import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';

class CategoryItemsScreen extends StatelessWidget {
  const CategoryItemsScreen({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                width: double.infinity,
                height: Screen.height(context) * .12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Medicine',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Screen.getProportionateScreenHeight(
                              context,
                              24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.swap_vert_rounded,
                          size: Screen.getProportionateScreenHeight(
                            context,
                            24,
                          ),
                        ),
                        Icon(
                          Icons.filter_alt_outlined,
                          size: Screen.getProportionateScreenHeight(
                            context,
                            24,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.6),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 14,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Best Deals: LIMITED TIME OFFER',
                                          style: TextStyle(
                                            fontSize: Screen
                                                .getProportionateScreenHeight(
                                              context,
                                              16,
                                            ),
                                            color: const Color.fromRGBO(
                                                88, 88, 88, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Discount ends in',
                                          style: TextStyle(
                                            fontSize: Screen
                                                .getProportionateScreenHeight(
                                              context,
                                              14,
                                            ),
                                            color: const Color.fromRGBO(
                                                88, 88, 88, 1),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const DiscountTimer(),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  'View All >',
                                  style: TextStyle(
                                    fontSize:
                                        Screen.getProportionateScreenHeight(
                                      context,
                                      13,
                                    ),
                                    color: Colors.blue,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: Screen.height(context) * .07,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            top: BorderSide(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                        child: DefaultTabController(
                          length: 4,
                          child: TabBar(
                            isScrollable: true,
                            indicatorColor: Colors.grey,
                            tabs: [
                              Text(
                                'Price',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Screen.getProportionateScreenHeight(
                                    context,
                                    14,
                                  ),
                                ),
                              ),
                              Text(
                                'Rating',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Screen.getProportionateScreenHeight(
                                    context,
                                    14,
                                  ),
                                ),
                              ),
                              Text(
                                'Discount',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Screen.getProportionateScreenHeight(
                                    context,
                                    14,
                                  ),
                                ),
                              ),
                              Text(
                                'By Category',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Screen.getProportionateScreenHeight(
                                    context,
                                    14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Wrap(
                              spacing: 5,
                              runSpacing: 5,
                              children: [
                                for (var i = 0; i < 20; i++)
                                  ProductCard(
                                    height: Screen.height(context) * .40,
                                    width: Screen.width(context) * .45,
                                  )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
