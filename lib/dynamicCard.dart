// import 'package:dtc_app/Events/events.dart';
// import 'package:flutter/material.dart';
//
// class DynamicCard extends StatelessWidget {
//   const DynamicCard({
//     required this.width,
//     required List<EventData> Events,
//     required this.events,
//   });
//
//   final List<EventData> events;
//   final double width;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(5),
//       child: ListView.builder(
//         itemCount: events.length,
//         itemBuilder: (context, index) {
//           final event = events[index];
//           return Container(
//             height: 130,
//             margin: const EdgeInsets.all(4),
//             child: Card(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: width / 3,
//                     child: Image.asset(event.event_img),
//                   ),
//                   SizedBox(width: 10), // Add some spacing
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           event.event_title,
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                         SizedBox(
//                             height:
//                                 5), // Add spacing between title and description
//                         Text(
//                           event.event_speaker,
//                           style: TextStyle(fontSize: 14, color: Colors.grey),
//                         ),
//                         Text(
//                           event.event_date,
//                           style: TextStyle(fontSize: 14, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
