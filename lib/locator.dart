

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';


GetIt locator = GetIt.instance;

void setupLocator() {

  
  /// register services
  //locator.registerLazySingleton<MarvelService>(() => MarvelService());



  /// register models
  //locator.registerFactory<MarvelModel>(() => MarvelModel());



}



//register multi-providers as a single child widget and pass them to main.dart
final allProviders = <SingleChildWidget>[
  //ChangeNotifierProvider(create: (_) => MarvelModel()),
];
