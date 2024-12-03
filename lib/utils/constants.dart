import 'package:flutter/material.dart';
import 'package:ready_for_tonsillectomy/utils/prefs.dart';



//Colors
const Color primaryColor = Color(0xff468fc3);
const Color white = Color(0xffecf4f9);

var pendoKey = 'eyJhbGciOiJSUzI1NiIsImtpZCI6IiIsInR5cCI6IkpXVCJ9.eyJkYXRhY2VudGVyIjoidXMiLCJrZXkiOiIyMWM4YWExOGQ2OTY2NzA5ODRjZWQ2OTk2MmUzZTAyYWUyOWNlNjM0OGQ0ZmE2NjFjZTNlZmQ1NWEzYTEzNjhmZTMxM2M0MmJkODc5NjUxMjZlN2RlZjQwOWYyNmZmMDQyYjcyMDc1MGMxNzgzM2EyZDEyMjA4M2U3YjNmMGMyZWRkN2MxYjk0OGNkODg0OTdlY2RjYWJlOWQ0N2M4YjIzZjY0MjQ3YTY3NDhlNjE5NjM3MTExOGMxOGI0ODVlNzYxNTNmZWUyNjg4NjcwZDFiNDgzODY2NmM1MWE5NjJhOC4wNThjMDdlYWZjZmNhOWVmM2NjMzY1MjRiMjQ3OTE5Ny5mMzAzNWY4ZjZhNGZmOGRiZGE5NmU2NjMyOTIzOTAwNzFlZDZmZjFiMjUzYzdjNjkzMGJkOWJkOTE4ZGU0ZTYwIn0.ZK2JieDS9CScVUy7wttUXgwheg1fhkfkRwPA_5VWM3d084meAuEzX3PW7E0H4SKV-ZX-L7biyBLOc8_yPDrzmBdv0CLweO6UEJAvsNyhxkI6TS_zECYS1nwYLqVudBunAVi2MPruCRdtxmmvzCbLi9L4w8eCmiooUlhnL3b6igY';


//AppBarSize
const double appBarSize = 0.075;


//convert the timeStamp to a readable date
int timeToDOS(int timeStamp, int day){
  var date = DateTime.fromMillisecondsSinceEpoch(timeStamp);
  var newDate = date.add(Duration(days: day));
  var newTimeStamp = newDate.millisecondsSinceEpoch;
  return newTimeStamp;
}


//convert the timeStamp to a readable date
String timeToReadable(int timeStamp){
  var date = DateTime.fromMillisecondsSinceEpoch(timeStamp);
  var readableDate = "${date.day}/${date.month}/${date.year}";
  return readableDate;
}

class Utils{
 static List ageOptions = ["6 & under", "7 & older"];
 static List languageOptions=["English", "Español"];

}