import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectcodesWidget extends StatefulWidget {
  const ProjectcodesWidget({Key key}) : super(key: key);

  @override
  _ProjectcodesWidgetState createState() => _ProjectcodesWidgetState();
}

class _ProjectcodesWidgetState extends State<ProjectcodesWidget> {
  String dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/2uovo_P.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      endDrawer: Drawer(
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
                    child: Text(
                      'Admins',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
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
                  child: Text(
                    'Approving Managers',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
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
                  child: Text(
                    'Employees',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
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
                  child: Text(
                    'Transactions',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
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
                  child: Text(
                    'Project Codes',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
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
                  child: Text(
                    'Business Details',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                  ),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'ID',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Name',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Email',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Status',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        '1',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Eric Atwood',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'eric.atwood12@gmail.com',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    FlutterFlowDropDown(
                      initialOption: dropDownValue ??= 'Active',
                      options: ['Active', 'Paused', 'Terminated'].toList(),
                      onChanged: (val) => setState(() => dropDownValue = val),
                      width: 180,
                      height: 50,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      fillColor: Colors.white,
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 0,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Manage',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Text(
                      'Employees:',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      3, 0, 0, 0),
                                  child: Text(
                                    '7, Joe Sample',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Icon(
                                  Icons.close,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Add Approving Manager',
                      options: FFButtonOptions(
                        width: 220,
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
            ],
          ),
        ),
      ),
    );
  }
}
