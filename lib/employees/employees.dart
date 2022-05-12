import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../appbars/employer_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../tables/tables.dart';

class EmployeesWidget extends StatefulWidget {
  const EmployeesWidget({Key key}) : super(key: key);

  @override
  _EmployeesWidgetState createState() => _EmployeesWidgetState();
}

class _EmployeesWidgetState extends State<EmployeesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, String>> listOfColumns = [ 
    {"Name": "Becky Johnson", "Job Title": "Gardener", "Work Type": "Hourly"},
    {"Name": "Eric Levy", "Job Title": "Lawn Mowing", "Work Type": "Hourly"},
    {"Name": "Gary Neville", "Job Title": "Hardscaping", "Work Type": "Hourly"},
    {"Name": "Jessica Smith", "Job Title": "Management", "Work Type": "Salary"}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: EmployerAppbar(),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      endDrawer: EmployerDrawer(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Export .csv',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: EmployeesTable(listOfColumns),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
