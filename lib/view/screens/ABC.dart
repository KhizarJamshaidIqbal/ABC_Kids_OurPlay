// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_final_fields, camel_case_types

import 'package:flutter/material.dart';

import '../components/ABC_data.dart';

class ABC_APP extends StatefulWidget {
  const ABC_APP({super.key});

  @override
  State<ABC_APP> createState() => ABC_APPState();
}

class ABC_APPState extends State<ABC_APP> {
  int currentPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: _pageController,
            pageSnapping: true,
            itemCount: ABC_data.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemBuilder: (context, index) {
              return SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Image(
                  image: AssetImage(
                    ABC_data[index].image,
                  ),
                  fit: BoxFit.fill,
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
