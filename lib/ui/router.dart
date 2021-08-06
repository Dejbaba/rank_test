import 'package:flutter/material.dart';

import '../core/constants/app_constants.dart';



/*class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RoutePaths.SignUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case RoutePaths.ForgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case RoutePaths.Dashboard:
        return MaterialPageRoute(builder: (_) => Home());
      *//*case RoutePaths.Product:
        return MaterialPageRoute(builder: (_) => const ProductDetails());*//*
      *//*case RoutePaths.Category:
        return MaterialPageRoute(builder: (_) => CategoryScreen());*//*
      *//*case RoutePaths.Search:
        return MaterialPageRoute(builder: (_) => const SearchScreen());*//*
      case RoutePaths.IndividualCategory:
       *//* final IndividualCategoryArguments args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => IndividualCategory(
                  category: args.category,
                  products: args.products,
                ));*//*
      case RoutePaths.CategoryTab:
        *//*final CategoryTabArguments args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => CategoryTab(
                  categories: args.categories,
                ));*//*
      case RoutePaths.Cart:
        return MaterialPageRoute(builder: (_) => const Cart());
      *//*case RoutePaths.Checkout:
        return MaterialPageRoute(builder: (_) => const CheckoutPage());*//*
      *//*case RoutePaths.CheckoutBilling:
        return MaterialPageRoute(builder: (_) => const CheckoutBilling());
      case RoutePaths.CheckoutPayment:
        return MaterialPageRoute(builder: (_) => const CheckoutPayment());
      case RoutePaths.CheckoutConfirmation:
        return MaterialPageRoute(builder: (_) => const CheckoutConfirmation());*//*
      *//*case RoutePaths.AccountTab:
        return MaterialPageRoute(builder: (_) => const AccountTab());*//*
     *//* case RoutePaths.Wishlist:
        return MaterialPageRoute(builder: (_) => const WishList());*//*
      *//*case RoutePaths.Orders:
        return MaterialPageRoute(builder: (_) => const Orders());*//*
      case RoutePaths.OrderSummary:
        *//*final OrderSummaryArguments args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => OrderSummary(
                  order: args.order,
                ));*//*
      *//*case RoutePaths.ShippingDetails:
        return MaterialPageRoute(builder: (_) => const ShippingDetails());*//*
      case RoutePaths.Payment:
        return MaterialPageRoute(builder: (_) => const Payment());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}*/

/*class IndividualCategoryArguments {
  final String category;
  final List<BestSelling> products;

  IndividualCategoryArguments(this.category, this.products);
}
//
// class CategoryTabArguments {
//   final List<Category> categories;
//
//   CategoryTabArguments(this.categories);
// }

class OrderSummaryArguments {
  final OrdersModel order;

  OrderSummaryArguments(this.order);
}*/
