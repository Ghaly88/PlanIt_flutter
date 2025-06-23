import 'dart:ui';

import 'package:ems_1/features/home/data/models/event_card_model.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final EventCardModel eventCardModel;
  EventCard({
    required this.eventCardModel,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> ));
      },
      // borderRadius: BorderRadius.circular(20),

      child: Container(
        margin: EdgeInsets.all(5),
        width: 250,
        decoration: BoxDecoration(
          color: Color(0xFFbde0c4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            buildImage(),
            SizedBox(
              height: 5,
            ),
            buildInfo(),
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              eventCardModel.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  eventCardModel.date.substring(0, 2),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff206173)),
                ),
                Text(
                  eventCardModel.date.substring(3),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff206173)),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xffD99A9A),
                    )),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildInfo() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Text(
            eventCardModel.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Icon(
                Icons.people,
              ),
              Text(
                '+${eventCardModel.goingCount} Going',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.black54,
              ),
              Text(
                eventCardModel.location,
                style: TextStyle(color: Colors.black54),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          )
        ],
      ),
    );
  }
}
