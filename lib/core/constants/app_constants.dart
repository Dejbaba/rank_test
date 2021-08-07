import 'package:flutter/material.dart';
import 'package:rank_task/core/models/dummy_activity.dart';
import 'package:rank_task/core/models/dummy_user.dart';

///MediaQuery Width(responsiveness)
double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

///MediaQuery Height(responsiveness)
double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

///design height(responsiveness)
double logicalHeight() {
  return WidgetsBinding.instance.window.physicalSize.height /
      WidgetsBinding.instance.window.devicePixelRatio;
}

///design width(responsiveness)
double logicalWidth() {
  return WidgetsBinding.instance.window.physicalSize.width /
      WidgetsBinding.instance.window.devicePixelRatio;
}

///dummy data(from figma) for recent activity list on the home tab/screen

final dummyUsers = [
  DummyUser(
      fullName: "Oluwaleke Olorunda",
      image: "assets/images/avatar_1.png",
      amount: "5,450",
      date: "23 Feb at 9:30 pm"),
  DummyUser(
      fullName: "McDonalds Restaurant, Ajah",
      image: "assets/images/avatar_2.png",
      amount: "5,450",
      date: "23 Feb at 9:30 pm"),
  DummyUser(
      fullName: "Mensa Robert",
      image: "assets/images/avatar_3.png",
      amount: "200,000",
      date: "23 Feb at 9:30 pm"),
  DummyUser(
      fullName: "Netflix HD subscription",
      image: "assets/images/avatar_4.png",
      amount: "4,850",
      date: "23 Feb at 9:30 pm"),
  DummyUser(
      fullName: "Uzodima Chinonzo",
      image: "assets/images/avatar_5.png",
      amount: "250,000",
      date: "23 Feb at 9:30 pm"),
];

///dummy data(from figma) for all activity list on the Activity screen('view all')
final dummyActivities = [
  DummyActivity(date: "Today, 2nd Aug", activities: [
    DummyUser(
        fullName: "Oluwaleke Olorunda",
        image: "assets/images/avatar_1.png",
        amount: "5,450",
        date: "23 Feb at 9:30 pm"),
    DummyUser(
        fullName: "McDonalds Restaurant, Ajah",
        image: "assets/images/avatar_2.png",
        amount: "5,450",
        date: "23 Feb at 9:30 pm"),
    DummyUser(
        fullName: "Mensa Robert",
        image: "assets/images/avatar_3.png",
        amount: "200,000",
        date: "23 Feb at 9:30 pm"),
    DummyUser(
        fullName: "Netflix HD subscription",
        image: "assets/images/avatar_4.png",
        amount: "4,850",
        date: "23 Feb at 9:30 pm"),
    DummyUser(
        fullName: "Uzodima Chinonzo",
        image: "assets/images/avatar_5.png",
        amount: "250,000",
        date: "23 Feb at 9:30 pm"),
  ]),
  DummyActivity(date: "Yesterday, 1st Aug", activities: [
    DummyUser(
        fullName: "Oluwatimilehin Ojo",
        image: "assets/images/avatar_6.png",
        amount: "5,000",
        date: "23 Feb at 9:30 pm"),
    DummyUser(
        fullName: "Isaac Adebanjo",
        image: "assets/images/avatar_7.png",
        amount: "34,500",
        date: "23 Feb at 9:30 pm"),
    DummyUser(
        fullName: "Exos book Nig. LTD",
        image: "assets/images/avatar_8.png",
        amount: "50,200",
        date: "23 Feb at 9:30 pm"),
  ]),
  DummyActivity(date: "Sat, 31st Aug", activities: [
    DummyUser(
        fullName: "Isaac Adebanjo",
        image: "assets/images/avatar_9.png",
        amount: "250,000",
        date: "23 Feb at 9:30 pm"),
    DummyUser(
        fullName: "Uche Ngozi",
        image: "assets/images/avatar_10.png",
        amount: "5,000",
        date: "23 Feb at 9:30 pm"),
  ]),
];
