import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Inmutable color list
final colorListProvider = Provider((ref) => colorList);          //provider for inmutable values

//A simple boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);   //provider for a piece of state

//A simple int
final selectedColorProvider = StateProvider((ref) => 0);
// A personalized object type Apptheme(custom)   

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>(     //elaborated state
    (ref) => ThemeNotifier(),
  );        
//StateNotifierProvider<"Quien es el wue controla","El estado(una instancia de una clase)">

//COntroller or Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{
  
  ThemeNotifier(): super(AppTheme());//Creates an instance of the Apptheme = new AppTheme();

  void toggleDarkmode(){
    state = state.copyWith( null, !state.isDarkMode);
  }


  void changeColorIndex(int index){
    state = state.copyWith( index , null);
  }

}
