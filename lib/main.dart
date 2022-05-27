import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));

}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _corPadrao = Color.fromARGB(255, 109, 47, 224);

  List _cores = [
    Color.fromRGBO(250, 250 ,250 , 1),
    Color.fromRGBO(248 ,248 ,255 , 1),
    Color.fromRGBO(245 ,245 ,245 , 1),
    Color.fromRGBO(220 ,220 ,220 , 1),
    Color.fromRGBO(255 ,250 ,240 , 1),
    Color.fromRGBO(253 ,245 ,230 , 1),
    Color.fromRGBO(250 ,240 ,230 , 1),
    Color.fromRGBO(250 ,235 ,215 , 1),
    Color.fromRGBO(255 ,239 ,213 , 1),
    Color.fromRGBO(255 ,235 ,205 , 1),
    Color.fromRGBO(255 ,228 ,196 , 1),
    Color.fromRGBO(255 ,218 ,185 , 1),
    Color.fromRGBO(255 ,222 ,173 , 1),
    Color.fromRGBO(255 ,228 ,181 , 1),
    Color.fromRGBO(255 ,248 ,220 , 1),
    Color.fromRGBO(255 ,255 ,240 , 1),
    Color.fromRGBO(255 ,250 ,205 , 1),
    Color.fromRGBO(255 ,245 ,238 , 1),
    Color.fromRGBO(240 ,255 ,240 , 1),
    Color.fromRGBO(245 ,255 ,250 , 1),
    Color.fromRGBO(240 ,255 ,255 , 1),
    Color.fromRGBO(240 ,248 ,255 , 1),
    Color.fromRGBO(230 ,230 ,250 , 1),
    Color.fromRGBO(255 ,240 ,245 , 1),
    Color.fromRGBO(255 ,228 ,225 , 1),
    Color.fromRGBO(255 ,255 ,255 , 1),
    Color.fromRGBO(0   ,0   ,0   , 1),
    Color.fromRGBO(47  ,79  ,79  , 1),
    Color.fromRGBO(105 ,105 ,105 , 1),
    Color.fromRGBO(112 ,128 ,144 , 1),
    Color.fromRGBO(119 ,136 ,153 , 1),
    Color.fromRGBO(190 ,190 ,190 , 1),
    Color.fromRGBO(211 ,211 ,211 , 1),
    Color.fromRGBO(25  ,25  ,112 , 1),
    Color.fromRGBO(0   ,0   ,128 , 1),
    Color.fromRGBO(100 ,149 ,237 , 1),
    Color.fromRGBO(72  ,61  ,139 , 1),
    Color.fromRGBO(106 ,90 ,205  , 1),
    Color.fromRGBO(123 ,104 ,238 , 1),
    Color.fromRGBO(132 ,112 ,255 , 1),
    Color.fromRGBO(0   ,0  ,205 , 1),
   Color.fromRGBO(65  ,105 ,225 , 1),
    Color.fromRGBO(0   ,0   ,255 , 1),
    Color.fromRGBO(30  ,144 ,255 , 1),
    Color.fromRGBO(0   ,191 ,255 , 1),
    Color.fromRGBO(135 ,206 ,235 , 1),
    Color.fromRGBO(135 ,206 ,250 , 1),
    Color.fromRGBO(70  ,130 ,180 , 1),
    Color.fromRGBO(176 ,196 ,222 , 1),
    Color.fromRGBO(173 ,216 ,230 , 1),
    Color.fromRGBO(176 ,224 ,230 , 1),
    Color.fromRGBO(175 ,238 ,238 , 1),
    Color.fromRGBO(0   ,206 ,209 , 1),
    Color.fromRGBO(72  ,209 ,204, 1),
    Color.fromRGBO(64  ,224 ,208, 1),
    Color.fromRGBO(0   ,255 ,255, 1),
    Color.fromRGBO(224 ,255 ,255, 1),
    Color.fromRGBO(95  ,158 ,160, 1),
    Color.fromRGBO(102 ,205 ,170, 1),
    Color.fromRGBO(127 ,255 ,212, 1),
    Color.fromRGBO(0   ,100 ,0, 1),
    Color.fromRGBO(85  ,107 ,47, 1),
    Color.fromRGBO(143 ,188 ,143, 1),
    Color.fromRGBO(46  ,139 ,87, 1),
    Color.fromRGBO(60  ,179 ,113, 1),
    Color.fromRGBO(32  ,178 ,170, 1),
    Color.fromRGBO(152 ,251 ,152, 1),
    Color.fromRGBO(0   ,255 ,127, 1),
    Color.fromRGBO(124 ,252 ,0, 1),
    Color.fromRGBO(0   ,255 ,0, 1),
    Color.fromRGBO(127 ,255 ,0, 1),
    Color.fromRGBO(0   ,250 ,154, 1),
    Color.fromRGBO(173 ,255 ,47, 1),
    Color.fromRGBO(50  ,205 ,50, 1),
    Color.fromRGBO(154 ,205 ,50, 1),
    Color.fromRGBO(34  ,139 ,34, 1),
    Color.fromRGBO(107 ,142 ,35, 1),
    Color.fromRGBO(189 ,183 ,107, 1),
    Color.fromRGBO(238 ,232 ,170, 1),
    Color.fromRGBO(250 ,250 ,210, 1),
    Color.fromRGBO(255 ,255 ,224, 1),
    Color.fromRGBO(255 ,255 ,0, 1),
    Color.fromRGBO(255 ,215 ,0, 1),
    Color.fromRGBO(238 ,22  ,130, 1),
    Color.fromRGBO(218 ,165 ,32, 1),
    Color.fromRGBO(184 ,134 ,11, 1),
    Color.fromRGBO(188 ,143 ,143, 1),
    Color.fromRGBO(205 ,92  ,92, 1),
    Color.fromRGBO(139 ,69  ,19, 1),
    Color.fromRGBO(160 ,82  ,45, 1),
    Color.fromRGBO(205 ,133 ,63, 1),
    Color.fromRGBO(222 ,184 ,135, 1),
    Color.fromRGBO(245 ,245 ,220, 1),
    Color.fromRGBO(245 ,222 ,179, 1),
    Color.fromRGBO(244 ,164 ,96, 1),
    Color.fromRGBO(210 ,180 ,140, 1),
    Color.fromRGBO(210 ,105 ,30, 1),
    Color.fromRGBO(178 ,34  ,34, 1),
    Color.fromRGBO(165 ,42  ,42, 1),
    Color.fromRGBO(233 ,150 ,122, 1),
    Color.fromRGBO(250 ,128 ,114, 1),
    Color.fromRGBO(255 ,160 ,122, 1),
    Color.fromRGBO(255 ,165 ,0, 1),
    Color.fromRGBO(255 ,140 ,0, 1),
    Color.fromRGBO(255 ,127 ,80, 1),
    Color.fromRGBO(240 ,128 ,128, 1),
    Color.fromRGBO(255 ,99  ,71, 1),
    Color.fromRGBO(255 ,69  ,0, 1),
    Color.fromRGBO(255 ,0   ,0, 1),
    Color.fromRGBO(255 ,105 ,180, 1),
    Color.fromRGBO(255 ,20  ,147, 1),
    Color.fromRGBO(255 ,192 ,203, 1),
    Color.fromRGBO(255 ,182 ,193, 1),
    Color.fromRGBO(219 ,112 ,147, 1),
    Color.fromRGBO(176 ,48  ,96, 1),
    Color.fromRGBO(199 ,21  ,133, 1),
    Color.fromRGBO(208 ,32  ,144, 1),
    Color.fromRGBO(255 ,0   ,255, 1),
    Color.fromRGBO(238 ,130 ,238, 1),
    Color.fromRGBO(221 ,160 ,221, 1),
    Color.fromRGBO(218 ,112 ,214, 1),
    Color.fromRGBO(186 ,85  ,211, 1),
    Color.fromRGBO(153 ,50  ,204, 1),
    Color.fromRGBO(148 ,0   ,211, 1),
    Color.fromRGBO(138 ,43  ,226, 1),
    Color.fromRGBO(160 ,32  ,240, 1),
    Color.fromRGBO(147 ,112 ,219, 1),
    Color.fromRGBO(216 ,191 ,216, 1),
    Color.fromRGBO(255 ,250 ,250, 1),

  ];

  void _amuentaCor(){
    for(int c = 0 ; c <= _cores.length ; c++){
      var _corAtual = _cores[c];
      
    }
  }

  void _diminuiCor(){
    for(int c = 0 ; c <= _cores.length ; c--){
      var _corAtual = _cores[c];
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _corPadrao,
      body: Center(
          child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,     

          children: <Widget> [
            
            RaisedButton(
              onPressed: () {
                setState(() {
                  _amuentaCor();
                });
              },
              color: Colors.white,
              child: Text(
                "Clique em mim"
                ),
            )
          ],
        ),
      )
    );
  }
}