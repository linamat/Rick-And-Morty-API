import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/data/data_di.dart';
import 'package:rick_and_morty/presentation/presentation_di.dart';

final getIt = GetIt.instance;

class DependencyInjection {
  static void setup() {
    DataDI.init();
    PresentationDI.init();
  }
}
