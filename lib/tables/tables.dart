import 'package:flutter/material.dart';

class TransactionsTable extends StatelessWidget {
  //const TransactionsTable({Key key}) : super(key: key);

  final List<Map<String, String>> listOfColumns;

  TransactionsTable(this.listOfColumns);     // Getting the data from outside, on initialization
  
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Day')),
        DataColumn(label: Text('Total')),
      ],
      rows:
          listOfColumns // Loops through dataColumnText, each iteration assigning the value to element
              .map(
                ((element) => DataRow(
                      cells: <DataCell>[
                        DataCell(Text(element["Day"])), //Extracting from Map element the value
                        DataCell(Text(element["Total"])),
                      ],
                    )),
              )
              .toList(),
    );
  }
}

class EmployeesTable extends StatelessWidget {
  //const TransactionsTable({Key key}) : super(key: key);

  final List<Map<String, String>> listOfColumns;

  EmployeesTable(this.listOfColumns);     // Getting the data from outside, on initialization
  
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Job Title')),
        DataColumn(label: Text('Work Type')),

      ],
      rows:
          listOfColumns // Loops through dataColumnText, each iteration assigning the value to element
              .map(
                ((element) => DataRow(
                      cells: <DataCell>[
                        DataCell(Text(element["Name"])), //Extracting from Map element the value
                        DataCell(Text(element["Job Title"])),
                        DataCell(Text(element["Work Type"])),
                      ],
                    )),
              )
              .toList(),
    );
  }
}