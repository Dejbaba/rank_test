import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

const String marvelBaseUrl = 'https://gateway.marvel.com:443/v1/public/';
const String marvelPublicKey = "c1ed5ae2a03d80ad8ddd8e4fb5667974";
const String marvelPrivateKey = 'bc84c4594197d451d659e59b63d480ed4f4dc338';
const String marvelDefaultPics = 'https://i.pinimg.com/originals/23/fc/1b/23fc1b3bf9c51261e2d1b415739221c8.png';
const String comicVineBaseUrl = 'https://comicvine.gamespot.com/api/';
const String comicVineApiKey = '600ebf11b1dda31d06be44cc1e06193330d5a5d7';
const bool devMode = false;
const String username = 'username';
const String stageUrl = '';
const String isremember = 'is_remember';
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


