import 'package:flutter/material.dart';
import 'package:islami/themeopject.dart';
class AhadethContentArgument {
  String Hadeth_Title ;
  String Hadeth_Content ;
  AhadethContentArgument({required this.Hadeth_Content , required this.Hadeth_Title});
}
class AhadethContent extends StatelessWidget {
  static const String routeName =  'ahadeth content page ';
  @override
  Widget build(BuildContext context) {
    AhadethContentArgument args = ModalRoute.of(context)?.settings.arguments as AhadethContentArgument;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_main.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("أسلامي"),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
           children: [
              Expanded(
                  child: Card(
                    margin:const EdgeInsets.all(30),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(args.Hadeth_Title,
                              style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          Container(
                            height: 3,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            color: MyTheme.primaryColor,
                          ),
                          Expanded(
                              child: ListView(
                                children: [
                                  Text(args.Hadeth_Content,
                                    style: TextStyle(fontSize: 20),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  )
              )
           ],
        ),
      ),
    );

  }
}
