import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_magh/app_theme/app_sizes.dart';
import 'package:flutter_magh/data/book_data.dart';
import 'package:flutter_magh/routes/route_enums.dart';
import 'package:go_router/go_router.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          separatorBuilder: (c, i) => AppSizes.gapW16,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: books.length,
            itemBuilder: (ctx, index){
            final book = books[index]; //books ko data accces garne
              return InkWell(
                onTap: (){
                  context.pushNamed(AppRoute.bookDetail.name, extra: book); // navigates to the book page
                },
                child: SizedBox(
                  width: 350,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                          child: CachedNetworkImage(
                              imageUrl: book.image,
                          width: 140,
                              errorWidget: (c,s,o){
                                return Center(child: Icon(Icons.info));
                              })),
                      AppSizes.gapW16,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(book.title,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold
                                )),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(book.detail),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(book.rating),
                                Text(book.genre)
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ); //index is the postion of the array which starts from 0
            }
        ),
      ),
    );
  }
}
