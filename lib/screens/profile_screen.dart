import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20),vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Applayout.getHeight(86),
                width: Applayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Applayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img_1.png")
                  )
                ),
              ),
              Gap(Applayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets",style: Styles.headlineStyle,),
                  Gap(Applayout.getHeight(2)),
                  Text("New-York",style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500
                  )),
                  Gap(Applayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Applayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(3),vertical: Applayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,size: 15,
                          ),
                        ),
                        Gap(Applayout.getHeight(5)),
                        const Text("Premium Status",style: TextStyle(
                          color: Color(0xFF526799),fontWeight: FontWeight.w600
                        ),),
                        Gap(Applayout.getHeight(5)),
                      ],
                    ),
                  ),

                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(Applayout.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Gap(Applayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: Applayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(Applayout.getHeight(18)),

                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                padding: EdgeInsets.all(Applayout.getHeight(30)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF264CD2))
                ),
              )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(25),vertical: Applayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(Applayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'ve got a new award",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold,color: Colors.white
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9),
                            fontSize: 16
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(Applayout.getHeight(25)),
          Text("Accumulated miles",style: Styles.headlineStyle2,),
          Gap(Applayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Column(
              children: [
                Gap(Applayout.getHeight(15)),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,color: Styles.TextColor,fontWeight: FontWeight.w600
                  ),
                ),
                Gap(Applayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",style: Styles.headlineStyle4.copyWith(fontSize: 16)),
                    Text("11 June 2022",style: Styles.headlineStyle4.copyWith(fontSize: 16)),
                  ],
                ),
                Gap(Applayout.getHeight(4)),
                Divider(color: Colors.grey.shade300,),
                Gap(Applayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "23 042",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(Applayout.getHeight(12)),
                const AppLayoutBuilderWidget(sections: 12,isColor: false,),
                Gap(Applayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(firstText: "McDonal\'s",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(Applayout.getHeight(12)),
                const AppLayoutBuilderWidget(sections: 12,isColor: false,),
                Gap(Applayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(firstText: "52340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(firstText: "Exuma",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                )
              ],
            ),
          ),
          Gap(Applayout.getHeight(25)),
          Center(
            child: Text(
              "How to get more miles",
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500
              )
            ),
          )
        ],
      ),
    );
  }
}
