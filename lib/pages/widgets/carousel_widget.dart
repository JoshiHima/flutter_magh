import 'package:flutter/material.dart';
import 'package:flutter_magh/data/book_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_magh/routes/route_enums.dart';
import 'package:go_router/go_router.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: CarouselView(
            itemExtent: 150,
            itemSnapping: true,
            elevation: 5,
            enableSplash: true,
            shape: RoundedRectangleBorder(),
            onTap: (a){
              context.pushNamed(AppRoute.bookDetail.name, extra: books[a]);
            },
            children: books.map((e) {
              return Column(
                children: [

                  //image widget
                  CachedNetworkImage(
                    errorWidget: (c,s,o){
                      return Center(child: Icon(Icons.info));
                    },
                      imageUrl: e.image,),
                  Text(e.title),
                ],
              );
            }).toList()
        )
    );
  }
}
