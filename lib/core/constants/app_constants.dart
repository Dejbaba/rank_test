import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rank_task/core/models/dummy_activity.dart';
import 'package:rank_task/core/models/dummy_user.dart';

class RoutePaths {
  static const String Onboarding = '/';
  static const String SignUp = '/signup';
  static const String Login = '/login';
  static const String Dashboard = '/home';
  static const String ForgotPassword = '/forgotPassword';
  static const String Category = '/category';
  static const String Cart = '/cart';
  static const String Search = '/search';
  static const String SingleCategory = '/singleCategory';
  static const String Product = '/product';
  static const String Checkout = '/checkout';
  static const String Billing = '/billing';
  static const String Payment = '/payment';
  static const String Card = '/card';
  static const String Wishlist = '/wishlist';
  static const String Orders = '/orders';
  static const String OrderSummary = '/orderSummary';
  static const String IndividualCategory = '/singleCategory';
  static const String CategoryTab = '/categoryTab';
  static const String CheckoutBilling = '/checkoutBilling';
  static const String CheckoutPayment = '/checkoutPayment';
  static const String CheckoutConfirmation = '/checkoutConfirmation';
  static const String AccountTab = '/accountTab';
  static const String ShippingDetails = '/shippingDetails';
}

class SharedPrefKeys{

  static const String SEARCH_WORD = "searchWords";
}


const String emptyEmailField = 'Email field cannot be empty!';
const String emptyTextField = 'Field cannot be empty!';
const String emptyPasswordField = 'Password field cannot be empty';
const String invalidEmailField =
    "Email provided isn\'t valid.Try another email address";
const String passwordLengthError = 'Password length must be greater than 6';
const String emptyUsernameField = 'Username  cannot be empty';
const String usernameLengthError = 'Username length must be greater than 6';
const String emailRegex = '[a-zA-Z0-9\+\.\_\%\-\+]{1,256}' +
    '\\@' +
    '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}' +
    '(' +
    '\\.' +
    '[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}' +
    ')+';

const String phoneNumberRegex = r'0[789][01]\d{8}';
const String phoneNumberLengthError = 'Phone number must be 11 digits';
const String invalidPhoneNumberField =
    "Number provided isn\'t valid.Try another phone number";

//MediaQuery Width
double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

//MediaQuery Height
double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double logicalHeight(){
  return WidgetsBinding.instance.window.physicalSize.height / WidgetsBinding.instance.window.devicePixelRatio;
}

double logicalWidth(){
  return WidgetsBinding.instance.window.physicalSize.width / WidgetsBinding.instance.window.devicePixelRatio;
}

//get the shortest Side of the target device
double shortestSide(BuildContext context){
  return MediaQuery.of(context).size.shortestSide;
}

//check the type of target device
bool isMobileLayout(BuildContext context){
  return shortestSide(context) < 600;
}

//aspect ratio
double aspectRatio(BuildContext context){

  final double itemHeight = (height(context) - kToolbarHeight - 24) / 2;
  final double itemWidth = width(context) / 2;

  double aspectRatio = (itemWidth / itemHeight);

  return aspectRatio;
}



///dummy data
final dummyUsers = [
  DummyUser(
    fullName: "Oluwaleke Olorunda",
    image: "assets/images/avatar_1.png",
    amount: "5,450",
    date: "23 Feb at 9:30 pm"
  ),
  DummyUser(
      fullName: "McDonalds Restaurant, Ajah",
      image: "assets/images/avatar_2.png",
      amount: "5,450",
      date: "23 Feb at 9:30 pm"
  ),
  DummyUser(
      fullName: "Mensa Robert",
      image: "assets/images/avatar_3.png",
      amount: "200,000",
      date: "23 Feb at 9:30 pm"
  ),
  DummyUser(
      fullName: "Netflix HD subscription",
      image: "assets/images/avatar_4.png",
      amount: "4,850",
      date: "23 Feb at 9:30 pm"
  ),
  DummyUser(
      fullName: "Uzodima Chinonzo",
      image: "assets/images/avatar_5.png",
      amount: "250,000",
      date: "23 Feb at 9:30 pm"
  ),
];

final dummyActivities = [
  DummyActivity(
    date: "Today, 2nd Aug",
    activities: [
      DummyUser(
          fullName: "Oluwaleke Olorunda",
          image: "assets/images/avatar_1.png",
          amount: "5,450",
          date: "23 Feb at 9:30 pm"
      ),
      DummyUser(
          fullName: "McDonalds Restaurant, Ajah",
          image: "assets/images/avatar_2.png",
          amount: "5,450",
          date: "23 Feb at 9:30 pm"
      ),
      DummyUser(
          fullName: "Mensa Robert",
          image: "assets/images/avatar_3.png",
          amount: "200,000",
          date: "23 Feb at 9:30 pm"
      ),
      DummyUser(
          fullName: "Netflix HD subscription",
          image: "assets/images/avatar_4.png",
          amount: "4,850",
          date: "23 Feb at 9:30 pm"
      ),
      DummyUser(
          fullName: "Uzodima Chinonzo",
          image: "assets/images/avatar_5.png",
          amount: "250,000",
          date: "23 Feb at 9:30 pm"
      ),
    ]
  ),
  DummyActivity(
    date: "Yesterday, 1st Aug",
    activities: [
      DummyUser(
          fullName: "Oluwatimilehin Ojo",
          image: "assets/images/avatar_6.png",
          amount: "5,000",
          date: "23 Feb at 9:30 pm"
      ),
      DummyUser(
          fullName: "Isaac Adebanjo",
          image: "assets/images/avatar_7.png",
          amount: "34,500",
          date: "23 Feb at 9:30 pm"
      ),
      DummyUser(
          fullName: "Exos book Nig. LTD",
          image: "assets/images/avatar_8.png",
          amount: "50,200",
          date: "23 Feb at 9:30 pm"
      ),
    ]
  ),
  DummyActivity(
    date: "Sat, 31st Aug",
    activities: [
      DummyUser(
          fullName: "Isaac Adebanjo",
          image: "assets/images/avatar_9.png",
          amount: "250,000",
          date: "23 Feb at 9:30 pm"
      ),
      DummyUser(
          fullName: "Uche Ngozi",
          image: "assets/images/avatar_10.png",
          amount: "5,000",
          date: "23 Feb at 9:30 pm"
      ),
    ]
  ),
];


