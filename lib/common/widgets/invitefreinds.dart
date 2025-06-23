import 'package:flutter/material.dart';

class Invitefreinds extends StatelessWidget {
  const Invitefreinds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 250,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFf0e4dd),
      ),
      child: Stack(
        children: [
          Positioned(left: 100, child: Image.asset('assets/images/gifts.png')),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Invite your friends',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFd99a9a),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Invite',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
