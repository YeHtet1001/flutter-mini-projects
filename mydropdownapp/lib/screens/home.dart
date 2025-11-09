import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Custom Drop Down",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRouteCard('SingleDropDownTextField', '/singledropdown', [
              "1-test",
              "2-test",
              "3-TEST",
              "wjfowjeojgorewgoejgojwgofjgnwognon",
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildRouteCard(
    String title,
    String routeName,
    List<String> subtitles,
  ) {
    return Card(
      //color:Colors.blueGrey,
      elevation: 3.0,
      shadowColor: Colors.blueAccent,
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "include : ",
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 6),
            Wrap(
              spacing: 5,
              runSpacing: 10,
              children: [
                ...subtitles.map((data) {
                  return IntrinsicWidth(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent[200],
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text(
                          data,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
        trailing: Icon(
          Icons.forward_outlined,
          color: Colors.blueAccent,
          size: 30,
        ),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        isThreeLine: true,
        leading: Icon(Icons.more_vert),
      ),
    );
  }
}
