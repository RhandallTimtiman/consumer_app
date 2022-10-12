import 'package:consumer_app/app/module/screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final double height;
  final double width;

  const ProductCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ProductDetails());
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        elevation: 5,
        child: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              Image.network(
                'https://picsum.photos/250?image=9',
                height: height * .6,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ketoplast (Ketofren hala hasjdkhasiuqwe,)',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Text(
                        'Php 2000.00',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      const Text(
                        'Php 2000.00',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '(17 Reviews)',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 15,
                                    color: Colors.grey.shade500,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Quezon City',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade500,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey.shade800,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
