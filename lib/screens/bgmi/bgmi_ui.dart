import 'package:flutter/material.dart';

class BgmiUi extends StatelessWidget {
  const BgmiUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          const Image(
            image: NetworkImage(
                'https://i.gadgets360cdn.com/large/bgmi_download_unban_report_1684741190157.jpg'),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: NetworkImage(
                      'https://dotesports.com/wp-content/uploads/2021/09/24220043/bgmi.png'),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      "Solo Erangle",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Time: 08/09/2023 09:00 pm",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Prize Pool",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          '100UC',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Team",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          'SOLO',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Per Kill",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mode",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          "TPP",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Entry Fee",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          "Free",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Map",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          'Erangle',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: const Column(
                          children: [
                            LinearProgressIndicator(value: 0.5,),
                            Text("Only few slots left")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                      onPressed: () {
                        // setState(() {
                        //   Navigator.of(context).push(
                        //       MaterialPageRoute(
                        //           builder: (_) =>
                        //               MyMatchesScreen(
                        //                 map: snapshot.data?[
                        //                     index]['map'],
                        //               )));
                        // });
                      },
                      child: const Text("JOIN NOW")),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
