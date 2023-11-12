import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

            }, child: Text("On")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){

            }, child: Text("Off")),
          ],
        ),
      )
      );

  }
}
// import 'package:flutter/material.dart';
//
// import 'package:torch_light/torch_light.dart';
//
// void main() {
//   runApp(TorchApp());
// }
//
// class TorchApp extends StatefulWidget {
//   @override
//   _TorchAppState createState() => _TorchAppState();
// }
//
// class _TorchAppState extends State<TorchApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       supportedLocales: const [Locale('en', '')],
//       localizationsDelegates: const [
//
//       ],
//       home: TorchController(),
//     );
//   }
// }
//
// class TorchController extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('torch_light example app'),
//       ),
//       body: FutureBuilder<bool>(
//         future: _isTorchAvailable(context),
//         builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
//           if (snapshot.hasData && snapshot.data!) {
//             return Column(
//               children: [
//                 Expanded(
//                   child: Center(
//                     child: ElevatedButton(
//                       child: const Text('Enable torch'),
//                       onPressed: () async {
//                         _enableTorch(context);
//                       },
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Center(
//                     child: ElevatedButton(
//                       child: const Text('Disable torch'),
//                       onPressed: () {
//                         _disableTorch(context);
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           } else if (snapshot.hasData) {
//             return const Center(
//               child: Text('No torch available.'),
//             );
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   Future<bool> _isTorchAvailable(BuildContext context) async {
//     try {
//       return await TorchLight.isTorchAvailable();
//     } on Exception catch (_) {
//       _showMessage(
//         'Could not check if the device has an available torch',
//         context,
//       );
//       rethrow;
//     }
//   }
//
//   Future<void> _enableTorch(BuildContext context) async {
//     try {
//       await TorchLight.enableTorch();
//     } on Exception catch (_) {
//       _showMessage('Could not enable torch', context);
//     }
//   }
//
//   Future<void> _disableTorch(BuildContext context) async {
//     try {
//       await TorchLight.disableTorch();
//     } on Exception catch (_) {
//       _showMessage('Could not disable torch', context);
//     }
//   }
//
//   void _showMessage(String message, BuildContext context) {
//     ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text(message)));
//   }
// }