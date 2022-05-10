import 'package:payroll/approvingmanagers/approvingmanagers_widget.dart';
import 'package:payroll/index.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../admins/admins_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployerAppbar extends StatelessWidget with PreferredSizeWidget{
  const EmployerAppbar({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const EmployerdashboardWidget()),);},
          splashColor: Colors.white54,
          child: Ink.image(
            image: AssetImage('assets/images/2uovo_P.png'),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      );
}

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class EmployerDrawer extends StatelessWidget {
  const EmployerDrawer({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child:  
                    TextButton(
                      child: Text('Admins'),
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20,color:Colors.black12),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminsWidget()),);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: TextButton(
                      child: Text('Approving Managers'),
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20,color:Colors.black12),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ApprovingmanagersWidget()),);
                      },
                    ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: TextButton(
                      child: Text('Employees'),
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20,color:Colors.black12),),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => const ManageemployeesWidget()),);
                      },
                    ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: TextButton(
                      child: Text('Transactions'),
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20,color:Colors.black12),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TransactionsWidget()),);
                      },
                    ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: TextButton(
                      child: Text('Project Codes'),
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20,color:Colors.black12),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProjectcodesWidget()),);
                      },
                    ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: TextButton(
                      child: Text('Business Details'),
                      style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20,color:Colors.black12),),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => const BusinessdetailseditWidget()),);
                      },
                    ),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      );
  }
}

