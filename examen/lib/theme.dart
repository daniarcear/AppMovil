
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';



ThemeData lightTheme() {
  return FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xffff0000),
      primaryContainer: Color(0xffeaeaea),
      secondary: Color(0xff595959),
      secondaryContainer: Color(0xffc2c2c2),
      tertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff9b9b9b),
      appBarColor: Color(0xffc2c2c2),
      error: Color(0xffb00020),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    appBarStyle: FlexAppBarStyle.primary,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // fontFamily: GoogleFonts.notoSans().fontFamily, // Uncomment if using GoogleFonts package
  );
}

ThemeData darkTheme() {
  return FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xff9fc9ff),
      primaryContainer: Color(0xff00325b),
      secondary: Color(0xffffb59d),
      secondaryContainer: Color(0xff872100),
      tertiary: Color(0xff86d2e1),
      tertiaryContainer: Color(0xff004e59),
      appBarColor: Color(0xff872100),
      error: Color(0xffcf6679),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 13,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      alignedDropdown: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // fontFamily: GoogleFonts.notoSans().fontFamily, // Uncomment if using GoogleFonts package
  );
}

// Example usage in your MaterialApp:
void main() {
  runApp(
    MaterialApp(
      theme: lightTheme(),
      darkTheme: darkTheme(),
      // If you do not have a themeMode switch, uncomment this line
      // to let the device system mode control the theme mode:
      // themeMode: ThemeMode.system,
      home: const YourHomePage(),
    ),
  );
}

// Your home page widget
class YourHomePage extends StatelessWidget {
  const YourHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App'),
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
