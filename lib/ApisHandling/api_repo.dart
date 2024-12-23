import 'dart:convert';

import 'package:http/http.dart'as http;
class ApiRepo {
  static var data;
  static final url='https://api.worldbank.org/v2/country/all?format=json';
  static Future<void> getAllCountriesData()async{
    final response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      data=jsonDecode(response.body.toString());
      print(data[1][0]);
    }
    
  }
}