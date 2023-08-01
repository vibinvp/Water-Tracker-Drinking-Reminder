// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

Column Headingpart(String heading) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 20,
      ),
      Text(
        heading,
        style: const TextStyle(fontSize: 16, color: Colors.grey),
      ),
      const SizedBox(
        height: 12,
      ),
      const Divider(
        height: 10,
        thickness: 1,
        endIndent: 200,
      )
    ],
  );
}

class Custum_st_colum extends StatefulWidget {
  String Heading;

  dynamic? LeadingText;

double? hieght;

  

  Custum_st_colum(
      {Key? key,
      required this.Heading,
      this.LeadingText,
      this.hieght
   })
      : super(key: key);

  @override
  State<Custum_st_colum> createState() => _Custum_st_columState();
}

class _Custum_st_columState extends State<Custum_st_colum> {
  @override
  Widget build(BuildContext context) {
    bool notifications = true;
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.Heading,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
            Text(
              (widget.LeadingText).toString(),
              style: const TextStyle(
                  color: Color.fromARGB(255, 5, 146, 247),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )
          ],
        ),
        SizedBox(height:widget.hieght,)
        
      ],
    );
  }
}
 bool notification = true;
class Subtitle extends StatefulWidget {
  var SubtitleText;

 Subtitle({ Key? key ,required this.SubtitleText, }) : super(key: key);

  @override
  State<Subtitle> createState() => _SubtitleState();
}

class _SubtitleState extends State<Subtitle> {
  @override
  Widget build(BuildContext context) {
    return 
  Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.SubtitleText,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            
            Switch.adaptive(
                  value: notification,
                  onChanged: (value) {
                    setState(() {
                      notification = value;
                    });
                     print(notification);
                  }),
            
             
          ],
        );
        
}

}

class Custum_listtile extends StatelessWidget {
  String time;

  String water_ml;

  Custum_listtile({Key? key, required this.time, required this.water_ml})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Image(
            image: ExactAssetImage(
                "assets/paper-coffee-cup-removebg-preview_preview_rev_1.jpeg")),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(time),
          Text(water_ml),
        ],
      ),
      trailing: const Icon(Icons.more_vert),
    );
  }
}

class Custum_days_colum extends StatelessWidget {
  String day;

  String? img;

  Custum_days_colum({Key? key, required this.day, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundImage: ExactAssetImage(img!),
           backgroundColor: Color.fromARGB(222, 26, 91, 221),
        ),
        SizedBox(
          height: 17,
        ),
        Text(day),
      ],
    );
  }
}

class Custum_dri_Report extends StatelessWidget {
  dynamic clr;

  String Heading;

  
String deatails;

 Custum_dri_Report({
    Key? key,required this.clr,required this.Heading,required this.deatails
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      //color: Color.fromARGB(255, 234, 229, 229),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 5,
                  backgroundColor: clr,
                ),
                SizedBox(width: 10,),
                Text(
                  Heading,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Text(
             deatails,
              style: TextStyle(color: Colors.blue, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
