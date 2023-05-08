import 'package:event_brite_app/providers/token_provider.dart';
import 'package:event_brite_app/screens/login_signin_pages/Lsign_up.dart';
import 'package:event_brite_app/screens/login_signin_pages/firstpage.dart';
import 'package:event_brite_app/screens/login_signin_pages/forget_password.dart';
//import 'package:event_brite_app/screens/tickets_screen/tickets_screen.dart';
import 'package:flutter/material.dart';

import 'package:uni_links/uni_links.dart';
import 'package:flutter/services.dart' show PlatformException;
// ignore_for_file: use_key_in_widget_constructors

import 'dart:io';


import 'package:event_brite_app/providers/common_providers/dropd_down_state_provider.dart';
import 'package:event_brite_app/providers/creator/basic_info_provider.dart';
import 'package:event_brite_app/providers/creator/date_selection_provider.dart';
import 'package:event_brite_app/providers/creator/details_provider.dart';
import 'package:event_brite_app/providers/creator/icon_state_provider.dart';
import 'package:event_brite_app/providers/creator/side_menu_icon_state_provider.dart';
import 'package:event_brite_app/screens/creator/events_page/events.dart';
import 'package:event_brite_app/screens/home_page/home_screen.dart';

import 'package:event_brite_app/screens/login_signin_pages/choose_organiser_or_attendee.dart';

import 'package:event_brite_app/screens/login_signin_pages/entering_email.dart';
import 'package:event_brite_app/screens/login_signin_pages/log_in_page1.dart';
import 'package:event_brite_app/screens/login_signin_pages/log_in_page2.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter/services.dart' show DeviceOrientation, MethodChannel, PlatformException, SystemChrome;
import 'package:event_brite_app/screens/login_signin_pages/lsign_up.dart';
final GlobalKey<NavigatorState> navigatorKey=GlobalKey<NavigatorState>();
String? _token;
String? param2Value;
String? param1Value;
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  // Initialize the deep link handler
  initUniLinks();

  runApp(MyApp());
}

Future<void> initUniLinks() async {
  // Get the initial deep link URL
  //final initialLink = await getInitialLink();
  //handleDeepLink(initialLink);

  // Listen for deep link changes
  linkStream.listen((link) {
    handleDeepLink(link);
  }, onError: (err) {
    // Handle link stream errors
  });
 }
  // ignore: non_constant_identifier_names
  void LogInPaffdge2ddd(String? param1){
    print('hj');
    print(param1);
    if(param1=='signup'){
   //Navigator.push(context,
             print("kkk");
                           //   MaterialPageRoute(builder: (context) {
    //Get.off(EmailValidationScreen());
                            //return CchooseCustomerOrOrganiserPage();
                         // }));
 }
  }

Future handleDeepLink(String? link) async {
  // Parse the deep link URL
  final uri = Uri.parse(link ?? '');
 print('asds');
 print(uri);
 List<String> pathSegments=uri.pathSegments;
 String param1Value = pathSegments[1];
  // 'value1'
param2Value = pathSegments[2];
LogInPaffdge2ddd(param1Value);
//return CchooseCustomerOrOrganiserPage();
//LogInPage2ddd(param1Value);
 //if(param2Value=='')  // 'value2'
 print(param2Value);
   
  // Check if the URL matches the deep link pattern
  if (uri.pathSegments.contains('signup')) {
     navigatorKey.currentState?.pushNamed( '/user/signup/null/');
    //Navigator.of(c).pushNamed('/user/signup');
    // Retrieve the token from the deep link URL
    //_token = uri.queryParameters['token'];
    print("sad:");
    print(_token);
  }
}


class MyApp extends StatelessWidget {
  const MyApp({key});
    
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BasicInfoFormDataProvider()),
        ChangeNotifierProvider(create: (_) => DetailsFormDataProvider()),
        ChangeNotifierProvider(create: (_) => DropdownState()),
        ChangeNotifierProvider(create: (_) => IconState()),
        ChangeNotifierProvider(create: (_) => DateSelectionModel()),
        ChangeNotifierProvider(create: (_) => SideMenuItemState()),
        //ChangeNotifierProvider(create: (_) => AuthTokenProvider()),
       ChangeNotifierProvider<TokenModel>(create: (_) => TokenModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Neue Plak'),
        //home: HomeScreen(selectedIndex: 0),
        debugShowCheckedModeBanner: false,
        //home:LogInPage1(),
        navigatorKey: navigatorKey,
        routes: {
          '/': (context) => FirstPage(),
          '/user/signup/null/': (context) => NewPasswordPage(),
        },
        //     initialRoute: '/',
        //     onGenerateRoute: (RouteSettings settings) {
        //     switch (settings.name) {
        //     case '/':
        //     print('asdd');
        //       return MaterialPageRoute(builder: (_) =>EmailValidationScreen());
        //     case '/user/signup/':
        //     print('asd');
        //     Navigator.of(context).pushNamed('/user/signup/');
        //       return MaterialPageRoute(builder: (_) => LogInPage1());
        //     default:
        //       return MaterialPageRoute(builder: (_) => LogInPage1());
        //   }
        // },
      ),
      
    );
  }
}


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Sign Up'),
//           onPressed: () {
//             // Navigate to the deep link destination
//             Navigator.pushNamed(context, '/user/signup/');
//           },
//         ),
//       ),
//     );
//   }
// }
@override
void initState() {
  initState();

  // Retrieve and store the token
  final token = _token;
  if (token != null) {
    // TODO: Implement your storage logic here
  }
}
void gotochoose()
{
  
}