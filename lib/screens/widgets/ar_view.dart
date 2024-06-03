// import 'package:flutter/material.dart';
// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
// import 'package:permission_handler/permission_handler.dart';

// class ARViewPage extends StatefulWidget {
//   final String modelPath;

//   const ARViewPage({Key? key, required this.modelPath}) : super(key: key);

//   @override
//   _ARViewPageState createState() => _ARViewPageState();
// }

// class _ARViewPageState extends State<ARViewPage> {
//   late ArCoreController arCoreController;

//   @override
//   void initState() {
//     super.initState();
//     Permission.camera.request().then((status) {
//       if (status.isGranted) {
//         // Camera permission granted, proceed with AR view and interaction
//       } else {
//         // Camera permission denied or revoked, handle accordingly
//       }
//     }).catchError((error) {
//       // Handle error requesting permission
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AR View Page'),
//       ),
//       body: ArCoreView(
//         onArCoreViewCreated: _onArCoreViewCreated,
//         enableTapRecognizer: true,
//       ),
//     );
//   }

//   void _onArCoreViewCreated(ArCoreController controller) {
//     arCoreController = controller;
//     _addModel();
//   }

//   void _addModel() {
//     final node = ArCoreReferenceNode(
//       name: 'model',
//       object3DFileName: widget.modelpath,
//       scale: Vector3(0.1, 0.1, 0.1), // Adjust scale as needed
//     );

//     // Wrap the ArCoreReferenceNode with a GestureDetector
//     // final gestureNode = GestureDetector(
//     //   onTap: () {
//     //     // Handle user tap on the 3D model
//     //     print('User tapped the 3D model!');
//     //     // Add your desired interaction logic here
//     //   },
//     //   child: ArCoreNode(
//     //     // Add the ArCoreReferenceNode as a child
//     //     child: node,
//     //   ),
//     // );
//     final gestureNode = GestureDetector(
//       onTap: () {
//         // Handle user tap on the 3D model
//         print('User tapped the 3D model!');
//         // Add your desired interaction logic here
//       },
//       child: ArCoreNode(
//         // Add the ArCoreReferenceNode as a child
//         children: node,
//       ),
//     );

//     arCoreController.addArCoreNode(gestureNode as ArCoreNode);
//   }
// }
// TryOnVirtuallyWidget.dart
// TryOnVirtuallyWidget.dart
// TryOnVirtuallyWidget.dart
// TryOnVirtuallyWidget.dart
import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:permission_handler/permission_handler.dart';

class TryOnVirtuallyWidget extends StatefulWidget {
  final String modelPath;

  const TryOnVirtuallyWidget({Key? key, required this.modelPath})
      : super(key: key);

  @override
  _TryOnVirtuallyWidgetState createState() => _TryOnVirtuallyWidgetState();
}

class _TryOnVirtuallyWidgetState extends State<TryOnVirtuallyWidget> {
  late ArCoreController arCoreController;

  @override
  void initState() {
    super.initState();
    _requestCameraPermission();
  }

  void _requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      // Camera permission granted, proceed with AR view
    } else {
      // Camera permission denied or revoked, handle accordingly
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: Permission.camera.status.isGranted,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!) {
            return ArCoreView(
              onArCoreViewCreated: _onArCoreViewCreated,
              enableTapRecognizer: true,
            );
          } else {
            return const Text('Camera permission required');
          }
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    _addModel();
  }

  void _addModel() {
    final node = ArCoreReferenceNode(
      name: 'model',
      object3DFileName: widget.modelPath,
      scale: Vector3(0.1, 0.1, 0.1), // Adjust scale as needed
    );

    // Wrap the ArCoreReferenceNode with a GestureDetector
    //final gestureNode = GestureDetector(
    // onTap: () {
    //   // Handle user tap on the 3D model
    //   print('User tapped the 3D model!');
    //   // Add your desired interaction logic here
    // },
    //   child: ArCoreNode(
    //     // Add the ArCoreReferenceNode as a child
    //     children: [node],
    //   ),
    // );

    // arCoreController.addArCoreNode(gestureNode as ArCoreNode);
  }
}

Vector3(double d, double e, double f) {}
