import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/base/model/_pageswitchmodel.dart';

final pageController =
    StateProvider<PageSwitchModel>((ref) => PageSwitchModel());
