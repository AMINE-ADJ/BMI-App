import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'input_page.dart';
import 'calculating_brain.dart';
import 'input_page.dart';



class ResultsPage extends StatelessWidget {

ResultsPage({required this.userBMI, required this.useradvice, required this.userstate});
  final String userBMI;
  final String useradvice;
  final String userstate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR '),
      ),
      body: Center(
        child: Column(

          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('YOUR RESULT ', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),),
              ),
            ),
            Expanded(

              flex: 5,
              child: MyCard(
                couleur: kactivecolor,
                Cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(userstate, style: kResultTextStyle,),
                    Text(userBMI, style: kBmiNumber),
                    Text(useradvice, style: TextStyle(
                      fontSize: 22.0
                    ),
                    textAlign: TextAlign.center,),


                  ],
                ),

              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> InputPage()) );
                Navigator.pop(context);
                },

                child: Container(
                  width:  MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Center(child: Text('Re-Calculate', style: kLargetextstyle,)),
                  color: kBottomconatainercolor,
                  margin: EdgeInsets.only(
                    top: 7.0,
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
