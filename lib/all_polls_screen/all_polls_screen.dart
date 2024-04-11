import 'package:flutter/material.dart';
import 'package:poll_creation_app/utils/text_style.dart';
import 'package:poll_creation_app/utils/utils.dart';

class AllPollsScreen extends StatelessWidget {
  const AllPollsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: CustomText(text: "All Polls", color: kwhite,fw: FontWeight.bold,fs: 19,),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(          
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: const [ktheme1, ktheme2],
            ),
            ),
            ),
            ),
      backgroundColor: kblack87,
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            
          ],),
        ),
      ),
    );
  }
}