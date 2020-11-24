import 'package:restaurance/login_service/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurance/screens/home.dart';
import 'package:restaurance/OrderScreens/SelectOrderType.dart';
import 'package:restaurance/customAppBar.dart';

class StaffHomePage extends StatelessWidget {
  static const double buttonHeight = 60;
  static const double buttonWidth = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: customAppBar_Manag(context,""),
      body: Stack(children: [
        Positioned(
          top: 40,
          left: 130,
          child: Container(
            child: const Text('Staff Menu',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown)),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SelectOrderType()),);
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: buttonHeight,
                  width: buttonWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFFFFD180),
                        Color(0xFFFFE0B2),
                        Color(0xFFFFD180),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: const Text('메뉴 주문',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown)),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => checkTime()),);
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: buttonHeight,
                  width: buttonWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFFFFD180),
                        Color(0xFFFFE0B2),
                        Color(0xFFFFD180),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: const Text('소요시간 및 준비시간',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown)),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              RaisedButton(
                onPressed: () {
                  //Navigator.push(context,MaterialPageRoute(builder: (context) =>   ),);
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: buttonHeight,
                  width: buttonWidth,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFFFFD180),
                        Color(0xFFFFE0B2),
                        Color(0xFFFFD180),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: const Text('결제',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 20),
            child: RaisedButton(
              color: Colors.yellow[100],
              elevation: 0,
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text(
                'Sign out',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
            ),
          ),
        ),
      ]),
    );

      Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Staff HOME"),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => checkTime()),);
              },
              child: Text("check Time"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SelectOrderType()),);
              },
              child: Text("SelectOrderType"),
            ),
            const SizedBox(height: 100.0),
            RaisedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}