import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'Results_page.dart';
import 'calculating_brain.dart';

enum GenDer { male, female }
var maleselected = false;
var femaleselected = false;


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // var malecardcolor=inactivecolor;
  // var femalecardcolor=inactivecolor;
  GenDer? selectedgender;
  int userheight = 180;
  int weight = 80;
  int age = 18;

// void Updatecolor(int gender) {
//   //1 for male 2 for female
//   //male pressed
//   if (gender==1) {
//     malecardcolor = activecolor;
//     femalecardcolor = inactivecolor;
//   }
//   //  else { malecardcolor = inactivecolor; }
//   //female pressed
//   if (gender==2) {
//     femalecardcolor = activecolor;
//     malecardcolor = inactivecolor;
//   }
//   //  else { femalecardcolor = inactivecolor; }
//
//
// }
//   void Updatecolor( GenDer x ) {
//     if ( x == GenDer.male) {
//       malecardcolor = activecolor;
//       femalecardcolor = inactivecolor;
//     }
//     if ( x == GenDer.female) {
//       femalecardcolor = activecolor;
//       malecardcolor = inactivecolor;
//     }
//
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULTAOR !! '),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: MyCard(
                    onPress: () {
                      setState(() {
                        selectedgender = GenDer.male;
                      });
                    },
                    couleur: selectedgender == GenDer.male
                        ? kactivecolor
                        : kinactivecolor,
                    Cardchild: Gender(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  )),
                  Expanded(
                      child: MyCard(
                    onPress: () {
                      setState(() {
                        selectedgender = GenDer.female;
                      });
                    },
                    couleur: selectedgender == GenDer.female
                        ? kactivecolor
                        : kinactivecolor, // efficiency of turnery operation !!
                    Cardchild: Gender(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: MyCard(
                  Cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT ',
                        style: kLabeltextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment
                            .baseline, // i have to specify which baseline
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '$userheight',
                            style: kNumberstextstyle,
                          ),
                          Text(
                            'Cm',
                            style: kLabeltextstyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          trackHeight: 3.0,
                          trackShape: RectangularSliderTrackShape(),
                        ),
                        child: Slider(
                          value: userheight.toDouble(),
                          min: 0,
                          max: 300,
                          onChanged: (double value) {
                            setState(() {
                              userheight = value.toInt();
                            });
                          },
                          // activeColor: Color(0xFFEB1555),
                          //   inactiveColor: Color(0xFF8D8E98),
                        ),
                      )
                    ],
                  ),
                  couleur: kactivecolor,
                )),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: MyCard(
                    Cardchild:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kLabeltextstyle),
                        Text(weight.toString(), style: kNumberstextstyle),
                        Row(
                          children: [
                            Expanded(
                              child:RoundedIconButton(icon: FontAwesomeIcons.minus, function: () {
                                setState(() {
                                  weight--;

                                });
                              } ,), // that's a custom widget
                            ),
                            Expanded(
                              // child: ElevatedButton(
                              //
                              //   onPressed: () {
                              //     setState(() {
                              //       num++;
                              //       // print(num);
                              //     });
                              //   },
                              //   child: Icon(Icons.add),
                              //   style: ElevatedButton.styleFrom(
                              //     primary: Colors.white30,
                              //     shape: CircleBorder(),
                              //     padding: EdgeInsets.all(20),
                              //
                              //   ),
                              // ),
                              child: RoundedIconButton(icon: FontAwesomeIcons.plus, function: () {
                                setState(() {
                                  weight++;

                                });
                              } ,),
                            )
                          ],
                        )
                      ],
                    ),
                    couleur: kactivecolor,
                  )),
                  Expanded(
                      child: MyCard(
                        Cardchild:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE', style: kLabeltextstyle,),
                            Text('$age', style: kNumberstextstyle,),
                            Row(
                             children: [
                             Expanded(
                                 child: RoundedIconButton(icon: FontAwesomeIcons.minus, function: (){
                                   setState(() {
                                     age--;
                                   });
                                 },),

                             ),
                               Expanded(
                                 child: RoundedIconButton(icon: FontAwesomeIcons.plus, function: (){
                                   setState(() {
                                     age++;
                                   });
                                 },),

                             ),
                             ],


                            ),
                          ],
                        ),
                    couleur: kactivecolor,
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: (){
                  CalculatorBrain Result = CalculatorBrain(height: userheight, weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultsPage(userBMI: Result.calculateBMI(), userstate: Result.getResult(), useradvice: Result.getAdvice(),)) );
                },
                child: Container(
                  width:  MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Center(child: Text('Calculate', style: kLargetextstyle,)),
                  color: kBottomconatainercolor,
                  margin: EdgeInsets.only(
                    top: 7.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        // floatingActionButton: Theme(
        //   data: ThemeData(
        //     accentColor: Colors.white,
        //   ),
        //   child: FloatingActionButton(
        //     onPressed: () {},
        //     child: Icon(Icons.add),
        //   ),
        // ),
        );
  }

  // Column buildColbuttons({ required String text, required int num }) {
  //
  //   return;
  // }

}
// my custom widget
class RoundedIconButton extends StatelessWidget{
  final IconData? icon;
  final void Function()? function;
  RoundedIconButton({this.icon, this.function});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Colors.white30,
    onPressed:function,
    elevation: 6.0,
    child:Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),

    );
  }
}

