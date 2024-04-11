import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:poll_creation_app/utils/text_style.dart';
import 'package:poll_creation_app/utils/textform_field.dart';
import 'package:poll_creation_app/utils/utils.dart';

class PollCreationScreen extends StatelessWidget {
  const PollCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Moderators Poll", color: kwhite,fw: FontWeight.bold,fs: 19,),
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
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
             kHeight30,
              Center(child: CustomText(text: "Create Poll",color: kwhite,fs: 20,fw: FontWeight.bold,)),
              CustomTextFormField(
                caption: 'TOPIC',
                hintTxt: 'Write here...',
                 maxLines: 3,
              ),
             
                 CustomTextFormField(
                caption: 'Statement',
                hintTxt: 'Write here...',
                 maxLines: 3,
                ), 
                kHeight20,
                
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                 height: 450,
                 decoration: BoxDecoration( border: Border.all(color: kwhite),borderRadius: BorderRadius.circular(10), ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                   Container(
                    height: 65,
                    width: 60,
                    decoration: BoxDecoration( border: Border.all(color: kwhite),borderRadius: BorderRadius.circular(10), ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CustomText(text: "MCQ",color: kwhite,fw: FontWeight.bold,),
                    CustomText(text: "poll",color: kwhite,),
                    SizedBox(
                    height: 25,
                    child: Radio(value: 1, groupValue: 3, onChanged: (value) => 12,))
                    ],
                    ),
                    ),
                   Container(
                    height: 65,
                    width: 60,
                    decoration: BoxDecoration( border: Border.all(color: kwhite),borderRadius: BorderRadius.circular(10), ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CustomText(text: "picture",color: kwhite,fw: FontWeight.bold,),
                    CustomText(text: "poll",color: kwhite,),
                    SizedBox(
                    height: 25,
                    child: Radio(value: 1, groupValue: 3, onChanged: (value) => 12,))
                    ],
                    ),
                    ),
                    Container(
                    height: 65,
                    width: 60,
                    decoration: BoxDecoration( border: Border.all(color: kwhite),borderRadius: BorderRadius.circular(10), ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CustomText(text: "Rate it",color: kwhite,fw: FontWeight.bold,),
                    CustomText(text: "poll",color: kwhite,),
                    SizedBox(
                    height: 25,
                    child: Radio(value: 1, groupValue: 3, onChanged: (value) => 12,))
                    ],
                    ),
                    ),
                    ],),
                    kHeight30,
                    TextFormField(
                                 decoration: InputDecoration(
                                   suffixIcon: Icon(Icons.clear,size: 18,color: kwhite,),
                                  hintText: "option 4",
                                  hintStyle: TextStyle(color: darkGrey),
                        border: GradientOutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        gradient:LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: const [ktheme2,kblack87],),),),
                              ),
               kHeight20,
                 TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.clear,size: 18,color: kwhite,),
                             hintText: "option 4",
                             hintStyle: TextStyle(color: darkGrey),
                   border: GradientOutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   gradient:LinearGradient(
                   begin: Alignment.bottomCenter,
                   end: Alignment.topCenter,
                   colors: const [ktheme2,kblack87],),),),
                         ),
        kHeight20,
                   TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.clear,size: 18,color: kwhite,),
                               hintText: "option 4",
                               hintStyle: TextStyle(color: darkGrey),
                     border: GradientOutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     gradient:LinearGradient(
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter,
                     colors: const [ktheme2,kblack87],),),),
                           ),
         kHeight20,
                    TextFormField(
                      decoration: InputDecoration(
                      suffixIcon: Icon(Icons.clear,size: 18,color: kwhite,),
                      hintText: "option 4",
                      hintStyle: TextStyle(color: darkGrey),
                      border: GradientOutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      gradient:LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: const [ktheme2,kblack87],),),),
                            ),
        
                 ],),
                 ),
        
                   kHeight30, 

                 Center(
                   child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(color: ktheme1,borderRadius: BorderRadius.circular(10)),
                    child: Center(child: CustomText(text: "Submit",fs: 18,fw: FontWeight.bold,)),
                  
                   ),
                 ),
              
            
            ],
          ),
        ),
      ),
    );
  }
}