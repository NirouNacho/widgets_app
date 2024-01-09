import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Inmutable color list
final colorListProvider = Provider((ref) => colorList);

//A simple boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

//A simple int
final selectedColorProvider = StateProvider((ref) => 0);

