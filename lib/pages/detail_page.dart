import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_magh/app_theme/app_sizes.dart';
import 'package:flutter_magh/data/book_data.dart';
import 'package:flutter_magh/models/book.dart';


class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.fitHeight,
               image: NetworkImage(book.image)
           ),
         ),
       ),
     );
    //   body: Stack(
    //     children: [
    //       Column(
    //         children: [
    //           CachedNetworkImage(imageUrl: book.image),
    //         ],
    //       ),
    //       Positioned(
    //         bottom: 0,
    //         child: Container(
    //           height: 500,
    //           color: Colors.white,
    //           child: SingleChildScrollView(
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text(book.title,
    //                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900,),
    //                       ),
    //                       Column(
    //                         children: [
    //                           Text(book.rating),
    //                           Text(book.genre),
    //                         ],
    //                       )
    //                     ],
    //                   ),
    //
    //                   AppSizes.gapH16,
    //                   Text(book.detail),
    //                   AppSizes.gapH16,
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       ElevatedButton(onPressed: (){}, child: Text('Read Book')),
    //                       OutlinedButton(onPressed: (){}, child: Text('Read book')),
    //                     ],
    //                   )
    //
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   )
    // );
  }
}
