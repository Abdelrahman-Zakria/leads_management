import 'package:flutter/material.dart';
import 'package:leads_management/config.dart';
import 'package:leads_management/reuseableWidgets/customButton.dart';

class LeadDetails extends StatelessWidget {
  Map? data;

  LeadDetails({required this.data});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lead Details'),
        backgroundColor: UiConfig.colorSec,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            _buildInfoBox(size, "Full Name", data!['name'], Icons.person),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                _buildInfoBox(
                    size, "Phone number", data!['phone'], Icons.dialpad),
                IconButton(onPressed: () {}, icon: Icon(Icons.call))
              ],
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                _buildInfoBox(
                    size, "Email", data!['email'], Icons.email_outlined),
                IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined))
              ],
            ),
            _buildInfoBox(size, "Status", data!['status'], Icons.show_chart),
            Expanded(child: SizedBox()),
            DefaultButton(
                txt: "Feedback",
                function: () {},
                bg_color: UiConfig.colorSec,
                txt_color: Colors.white),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoBox(Size size, title, value, icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        width: size.width,
        height: 80,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width / 1.5,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
