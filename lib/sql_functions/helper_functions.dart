import 'dart:convert';
import 'package:supabase/supabase.dart';

final client = SupabaseClient('https://iornghtidhexrbbvoanf.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlvcm5naHRpZGhleHJiYnZvYW5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTE2MjIzNzAsImV4cCI6MTk2NzE5ODM3MH0.a2Gyhz4KqHy8jXK3MDmgs7dP0ubkh7LBfn4oqKA2CkM');
  
Future<bool> instantiate_business({String walletAddress, String businessName, String businessEmail, String payPeriodStart,
                           int payPeriodLength}) async {
  final res = await client
  .from('employer')
  .insert([
    {'walletaddress': walletAddress, 'businessname': businessName, 'businessemail': businessEmail, 'payperiodstart': payPeriodStart,
     'payperiodstart': payPeriodStart, 'payperiodlength': payPeriodLength}
  ]).execute();

  //check for success
  if(res.toJson()['status'].toString().startsWith('2'))
    return true;
  else{
    //log error
    return false;
  }
}

