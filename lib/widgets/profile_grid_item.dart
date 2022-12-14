import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/product_detail.dart';

class ProfileGridItem extends StatelessWidget {
  final data;
  const ProfileGridItem({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(ProductDetail.routeName, arguments: data),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: GridTile(
          header: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.8),
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  data['productCategory']['name'],
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              )
            ],
          ),
          footer: GridTileBar(
            title: Text(data['name']),
            subtitle:
                Text('Rp${data['productFarmer']['price']} / ${data['uom']}'),
            backgroundColor: Theme.of(context).cardTheme.color,
          ),
          child: Image.network(
            'https://cdn1-production-images-kly.akamaized.net/a3TslIZO17CIhK9-yxWm9EKgtHA=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2778271/original/099320800_1555242609-PADI_ORGANIK-Ridlo.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
