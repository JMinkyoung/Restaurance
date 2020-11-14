import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurance/login_service/authentication_service.dart';
import 'package:restaurance/manager_menu/staff_manage.dart';
import 'package:restaurance/manager_menu/MenuManage.dart';

class ManagerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ManagerHomePage"),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => StaffManage()),);
              },
              child: Text("Staff Manage"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => MenuManage()),);
              },
              child: Text("Menu Manage"),
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
