import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../core/di/di_config.dart';
import '../../features/home/presentation/viewmodel/home_viewmodel.dart';

class AppViewModels {
  static final List<SingleChildWidget> viewmodels = [
    ChangeNotifierProvider<HomeViewModel>(create: (_) => getIt<HomeViewModel>(),),

    // Add other feature viewmodels/providers here
  ];
}
