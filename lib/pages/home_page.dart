import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_magh/app_theme/app_sizes.dart';
import 'package:flutter_magh/pages/widgets/book_list.dart';
import 'package:flutter_magh/pages/widgets/carousel_widget.dart';
import 'package:flutter_magh/pages/widgets/stack_widget.dart';

// appBar

//text widget
//container
//column /row
//CircleAvatar,
//ElevatedButton
//RichText
//listViewBuilder, gridView

//responsiveWidgets
//expanded flexible aspect ratio layout builder fittedBox


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Hi John,'),
            actions: [
              IconButton(
                  onPressed: () {
                    print('hello button');
                  }, icon: Icon(CupertinoIcons.search)),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),


            ],

            bottom: TabBar(tabs: [
              Tab(text: 'First Page'),
              Tab(text: 'Second Page'),
              Tab(text: 'Third Page'),
            ]),
            // centerTitle: true,
          ),
          body: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(

                    children: [



                      // StackWidget(),


                      AppSizes.gapH10,
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(90),
                        ),
                          child: Image.network('https://plus.unsplash.com/premium_photo-1661908814909-4df10f73007c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Ym9vayUyMHNoZWxmfGVufDB8fDB8fHww')),

                      AppSizes.gapH16,
                      BookList(),
                      AppSizes.gapH16,
                      CarouselWidget(),
                    ],
                  )


                ),
                Text('Second Page'),
                Text('Third Page'),
              ]
          ),

          //

      ),
    );
  }
}