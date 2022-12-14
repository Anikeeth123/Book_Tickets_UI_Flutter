import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20),vertical: Applayout.getHeight(20)),
            children: [
              Gap(Applayout.getHeight(40)),
              Text("Tickets",style: Styles.headlineStyle,),
              Gap(Applayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", SecondTab: "Previous"),
              Gap(Applayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: Applayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0],isColor: true,),
              ),

              SizedBox(height: 1,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passengers',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5221 364869',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(Applayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                    Gap(Applayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '364738  28274478',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(Applayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                    Gap(Applayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png",scale: 11,),
                                Text(" *** 2462",style: Styles.headlineStyle3,)
                              ],
                            ),
                            Gap(5),
                            Text("Payment method",style: Styles.headlineStyle4,),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    const SizedBox(height: 1,),
                    Gap(Applayout.getHeight(20)),

                  ],
                ),
              ),
              /*
              Bar Code
               */
              SizedBox(height: 1,),
              Container(
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(Applayout.getHeight(21)),
                      bottomLeft: Radius.circular(Applayout.getHeight(21)),
                  )
                ),
                margin: EdgeInsets.only(left: Applayout.getHeight(15),right: Applayout.getHeight(15)),
                padding: EdgeInsets.only(top: Applayout.getHeight(20),bottom: Applayout.getHeight(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Applayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.TextColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(Applayout.getHeight(15)),
              Container(
                padding: EdgeInsets.only(left: Applayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0],),
              ),
            ],
          ),
          Positioned(
            left: Applayout.getHeight(22),
            top: Applayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.TextColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.TextColor,
              ),
            ),
          ),
          Positioned(
            right: Applayout.getHeight(22),
            top: Applayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.TextColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.TextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
