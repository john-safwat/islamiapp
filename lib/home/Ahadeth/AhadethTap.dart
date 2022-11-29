import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/Ahadeth/AhadethContent.dart';
import 'package:islami/themeopject.dart';

class AhadethTap extends StatefulWidget {
  static const String routeName = 'Ahadeth tap';

  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  List<String> Hadeth_content = [];

  List<String> Hadeth_title = [];

  @override
  Widget build(BuildContext context) {
    Hadeth_title.isEmpty? readFile():{};
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Image.asset("assets/images/ahadeth.png")
        ),
        Container(
          decoration:const BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(width: 3 , color: MyTheme.primaryColor))
          ),
          width: double.infinity,
          child: const Text("الأحاديث",
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child:
          Hadeth_title.isEmpty?CircularProgressIndicator():
          ListView.builder(
            itemBuilder: ( _ ,index)=> InkWell(
              enableFeedback: true,
              onTap: (){
                Navigator.pushNamed(context, AhadethContent.routeName , arguments: AhadethContentArgument(Hadeth_Content: Hadeth_content[index], Hadeth_Title: Hadeth_title[index]));
              },
              child: Text(Hadeth_title[index],
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: Hadeth_title.length,
          ),
        )
      ],
    );
  }

  void readFile()async{
    String ahadeth_content =await rootBundle.loadString('assets/text/ahadeth.txt');
    var hadeth = ahadeth_content.trim().split('#');
    List<String> hadeth_titles = [];
    for (int i =0; i<hadeth.length; i++){
      String ahadeth_split = hadeth[i];
      var hadeth_lines = ahadeth_split.trim().split('\n');
      String hadeth_title =  hadeth_lines[0];
      hadeth_titles.add(hadeth_title);
    }
    Hadeth_title = hadeth_titles;
    Hadeth_content = hadeth;
    setState(() {

    });
  }
}
