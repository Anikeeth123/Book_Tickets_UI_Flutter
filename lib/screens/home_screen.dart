import 'package:booktickets/screens/hotels_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                            "Good Morning",style: Styles.headlineStyle3,
                        ),
                        Gap(5),
                        Text(
                            "Book Tickets", style: Styles.headlineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "assets/images/img_1.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205)),
                      Text(
                          "Search",
                        style: Styles.headlineStyle4,
                      ),

                    ],
                  ),
                ),
                const Gap(40),
                AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
               children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: "Hotels", smallText: "View all")
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList()
              ),
          ),
        ],
      ),
    );
  }
}
