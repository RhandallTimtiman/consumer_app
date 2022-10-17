import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: Screen.getProportionateScreenHeight(context, 80),
            color: Colors.grey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontSize: Screen.getProportionateScreenHeight(
                                context, 11),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontSize: Screen.getProportionateScreenHeight(
                                context, 10),
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: Screen.getProportionateScreenHeight(context, 20),
                    )
                  ],
                ),
                SizedBox(
                  height: Screen.getProportionateScreenHeight(context, 5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Php 1500.00',
                          style: TextStyle(
                            fontSize: Screen.getProportionateScreenHeight(
                                context, 11),
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(
                              73,
                              130,
                              61,
                              1,
                            ),
                          ),
                        ),
                        Text(
                          'Php 2000.00',
                          style: TextStyle(
                            fontSize:
                                Screen.getProportionateScreenHeight(context, 9),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
