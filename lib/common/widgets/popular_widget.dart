import 'package:ems_1/common/widgets/event_card.dart';
import 'package:ems_1/features/home/data/models/event_card_model.dart';
import 'package:ems_1/features/home/presentation/screens/popular_events_screen.dart';
import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  final List<EventCardModel> event;
  PopularWidget({required this.event, super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Row(
            children: [
              Text(
                'popular events',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 70,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PopularEventsScreen()));
                },
                child: Text(
                  'view all→',
                  style: TextStyle(color: Color(0xFF50C878), fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 260,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return EventCard(eventCardModel: event[index]);
              }),
        )
      ],
    );
  }
}
