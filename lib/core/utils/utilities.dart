import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/ui/shared/colors.dart';

class Utilities {

  static const String customErrorMessage =
      'An error occurred. Please try again';

  static final validCharacters = RegExp(r'^[a-zA-Z0-9]+$');

  static String dateFormatter(String date) {
    final formatter = DateFormat('yyyy-MM-dd');
    final dateTime = formatter.parse(date);
    final formatted = formatter.format(dateTime);
    print('formated date: $formatted----');
    final reformatDate = formatted.split('-');
    final formattedDate =
        reformatDate[2] + '-' + reformatDate[1] + '-' + reformatDate[0];

    print(formattedDate);
    return formattedDate;
  }

  static String yearMonthDay(String date) {
    final reformatDate = date.split('-');
    final formattedDate =
        reformatDate[2] + '-' + reformatDate[1] + '-' + reformatDate[0];
    print('date sent to server: $formattedDate');
    return formattedDate;
  }

  //convert datetime format to Month, Day and Year
  static String dateToYmd(String date) {
    final formatter = DateFormat('yyyy-MM-dd');
    final dateTime = formatter.parse(date);
    final formattedDateTime = DateFormat.yMMMd().format(dateTime);

    return formattedDateTime;
  }

  //convert datetime format to Month, Day and Year
  static String dayDateAndTime(DateTime date) {
    /*var formatter = new DateFormat('yyyy-MM-dd');
    DateTime dateTime = formatter.parse(date);
    //var formattedDateTime = DateFormat.yMMMd().format(dateTime);*/

    final dateFormat = DateFormat.EEEE();
    return '''
${dateFormat.format(date)}, ${DateFormat.MMMd().format(date)}, ${DateFormat.j().format(date)}''';
  }

  ///convert datetime format to day and date
  static String dayAndDate(DateTime date) {
    return '''
${DateFormat.EEEE().format(date)}, ${DateFormat.yMMMMd().format(date)}''';
  }

  ///convert datetime to weekday
  static String abbreviateWeekDay(DateTime date) {
    return DateFormat.E().format(date);
  }

  ///convert date time to day
  static String day(DateTime date) {
    return DateFormat.d().format(date);
  }

  ///convert date time to month
  static String abbreviateMonth(DateTime date) {
    return DateFormat.MMM().format(date);
  }

  //convert datetime format to Month, Day and Year
  static String dateAndTime(DateTime date) {
    return '''
${DateFormat.yMMMd().format(date)} ${DateFormat.jms().format(date)}''';
  }

  ///convert datetime format to Month, Day, Year and time
  static String monthDayYearAndTime({DateTime date}) {

    return "${DateFormat.yMMMd().format(date)} ${DateFormat.jm().format(date)}";
  }

  ///format currency
  static String formatAmount({double amount, bool addDecimal = true}) {
    final oCcy = addDecimal ? NumberFormat('#,##0.00', 'en_US') : NumberFormat('#,##0', 'en_US');
    final formattedAmount = oCcy.format(amount);
    return formattedAmount;
  }

  static String splitBase64String({String rawString}){

    var splitIncomingString = rawString.split(",");
    return splitIncomingString[1];
  }

  ///convert base64 string to file
  static Future<File> createFileFromString({String rawString}) async {
    String base64String = splitBase64String(rawString: rawString);
    final encodedStr = base64String;
    Uint8List bytes = base64.decode(encodedStr);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = File(
        "$dir/" + DateTime.now().millisecondsSinceEpoch.toString() + ".png");

    await file.writeAsBytes(bytes);
    return file;
  }

  ///returns message from API
  static String getErrorMessage({String message}) {

    String returningMessage;
    if (message == "Connection failed" ||
        message.toString().contains("Failed host lookup")) {
      returningMessage = "Error establishing internet connection. Please Check your Internet Connection and try again";
    } else if (message.toString().contains("Future not completed")) {
      returningMessage  = "Slow internet connection. Please check your internet connection and try again";
    } else if(message == "Internal Server Error"){
      returningMessage = "An error occurred. Please try again";
    } else{
      returningMessage = message;
    }

    return returningMessage;
  }

  ///generate Md5 from string
  static String generateMd5({String input}){
    return md5.convert(utf8.encode(input)).toString();
  }

  ///add a string character at a particular position in a string variable
  static String addChar({String str, String extension, String ch, int position}) {
    if(str.contains("image_not_available") || extension.contains("gif")){
      return marvelDefaultPics;
    }else{
      return str.substring(0, position) + ch + str.substring(position);
    }

  }




}
