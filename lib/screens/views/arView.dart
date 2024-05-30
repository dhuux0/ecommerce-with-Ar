// // import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
// // import 'package:ar_flutter_plugin/datatypes/node_types.dart';
// // import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
// // import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
// // import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
// // import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
// // import 'package:flutter/material.dart';
// // import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
// // import 'package:ar_flutter_plugin/models/ar_node.dart';
// // import 'package:vector_math/vector_math_64.dart';

// // class ARViewPage extends StatefulWidget {
// //   final String modelPath;

// //   ARViewPage({required this.modelPath});

// //   @override
// //   _ARViewPageState createState() => _ARViewPageState();
// // }

// // class _ARViewPageState extends State<ARViewPage> {
// //   late ARSessionManager arSessionManager;
// //   late ARObjectManager arObjectManager;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('AR View'),
// //       ),
// //       body: ARView(
// //         onARViewCreated: _onARViewCreated,
// //         planeDetectionConfig: PlaneDetectionConfig.horizontalAndVertical,
// //       ),
// //     );
// //   }

// //   void _onARViewCreated(ARSessionManager arSessionManager, ARObjectManager arObjectManager) {
// //     this.arSessionManager = arSessionManager;
// //     this.arObjectManager = arObjectManager;

// //     // Initialize AR session
// //     arSessionManager.onInitialize(
// //       showFeaturePoints: false,
// //       showPlanes: true,
// //       showWorldOrigin: true,
// //       handleTaps: false,
// //     );

// //     // Initialize AR object manager
// //     arObjectManager.onInitialize();

// //     // Add the 3D model to the scene
// //     _addModel(widget.modelPath);
// //   }

// //   Future<void> _addModel(String modelPath) async {
// //     // Define the position and scale of the model
// //     final node = ARNode(
// //       type: NodeType.localGLTF2,
// //       uri: modelPath,
// //       scale: Vector3(0.2, 0.2, 0.2),
// //       position: Vector3(0, 0, -1),
// //     );

// //     // Add the node to the scene
// //     bool? didAddNode = await arObjectManager.addNode(node);
// //     if (didAddNode) {
// //       print('Model added successfully');
// //     } else {
// //       print('Failed to add model');
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     arSessionManager.dispose();
// //     arObjectManager.dispose();
// //   }
// // }
// // void myFunction(
// //   ARSessionManager sessionManager,
// //   ARObjectManager objectManager,
// //   ARAnchorManager anchorManager,
// //   ARLocationManager locationManager
// // ) {
// //   // Your function implementation here
// // }

// import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
// import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
// import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
// import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
// import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
// import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
// import 'package:flutter/material.dart';

// class WearableARView extends StatefulWidget {
//   final String wearableModelPath;

//   const WearableARView({required this.wearableModelPath});

//   @override
//   _WearableARViewState createState() => _WearableARViewState();
// }

// class _WearableARViewState extends State<WearableARView> {
//   ARSessionManager? arSessionManager;
//   ARObjectManager? arObjectManager;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AR Wearable'),
//       ),
//       body: ARView(
//         onARViewCreated: _onARViewCreated,
//         planeDetectionConfig: PlaneDetectionConfig
//             .horizontal, // Focus on horizontal planes for wearables
//       ),
//     );
//   }

//   // void _onARViewCreated(ARSessionManager sessionManager, ARObjectManager objectManager) {
//   //   this.arSessionManager = sessionManager;
//   //   this.arObjectManager = objectManager;

//   //   // Initialize AR session
//   //   arSessionManager!.onInitialize(
//   //     showFeaturePoints: false,
//   //     showPlanes: true,
//   //     handleTaps: false, // Disable taps for now
//   //   );

//   //   // Initialize AR object manager
//   //   arObjectManager?.onInitialize();

//   //   // Add the wearable model to the scene (replace with your logic)
//   //   // ... (code to load and add the wearable model using ARNode)
//   // }

//   void _onARViewCreated(
//       ARSessionManager arSessionManager,
//       ARObjectManager arObjectManager,
//       ARAnchorManager anchorManager,
//       ARLocationManager locationManager) {
//     this.arSessionManager = arSessionManager;
//     this.arObjectManager = arObjectManager;

//     // Initialize AR session
//     arSessionManager.onInitialize(
//       showFeaturePoints: false,
//       showPlanes: true,
//       handleTaps: false,
//     );

//     // Initialize AR object manager
//     arObjectManager.onInitialize();

//     // Call the wrapper function with all arguments
//     handleARViewCreated(
//         arSessionManager, arObjectManager, anchorManager, locationManager);

//     // ... (rest of your code)
//   }

//   void handleARViewCreated(
//       ARSessionManager sessionManager,
//       ARObjectManager objectManager,
//       ARAnchorManager anchorManager,
//       ARLocationManager locationManager) {
//     myFunction(sessionManager, objectManager);
//   }

//   void myFunction(
//       ARSessionManager sessionManager, ARObjectManager objectManager) {}
// }
