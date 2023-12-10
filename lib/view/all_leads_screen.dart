import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leads_management/config.dart';
import 'package:leads_management/controllers/leadsController.dart';
import 'package:leads_management/view/lead_details.dart';

class AllLeadsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    LeadsController leadsController = Get.put(LeadsController());
    return GetBuilder<LeadsController>(
      builder: (leadsCtrl) {
        return Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: size.width / 4,
                          height: 30,
                          decoration: BoxDecoration(
                            color: UiConfig.colorSec,
                            borderRadius: BorderRadius.circular(16),

                          ),
                          child: Center(
                            child: Text("Today",style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),
                            textAlign: TextAlign.center,),
                          )),
                    ),
                    GestureDetector(
                      child: Container(
                          width: size.width / 3,
                          height: 30,
                          decoration: BoxDecoration(
                            color: UiConfig.colorSec,
                            borderRadius: BorderRadius.circular(16),

                          ),
                          child: Center(
                            child: Text("This week",style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),
                              textAlign: TextAlign.center,),
                          )),
                    ),
                    GestureDetector(
                      child: Container(
                          width: size.width / 3,
                          height: 30,
                          decoration: BoxDecoration(
                            color: UiConfig.colorSec,
                            borderRadius: BorderRadius.circular(16),

                          ),
                          child: Center(
                            child: Text("This month",style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),
                              textAlign: TextAlign.center,),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: leadsCtrl.allLeads.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
                    child: GestureDetector(
                      onTap: (){
                        Get.to(()=> LeadDetails(data: leadsCtrl.allLeads[index]));
                      },
                      child: Container(
                        width: size.width,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(leadsCtrl.allLeads[index]['name']),
                                  Text(leadsCtrl.allLeads[index]['email'],style: TextStyle(color: Colors.grey),),
                                  Text(leadsCtrl.allLeads[index]['phone'],style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              VerticalDivider(
                                width: 2,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined))
                                ],
                              ),
                            ],
                          ),
                        )
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}