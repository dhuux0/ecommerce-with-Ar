import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';

class ARViewPage extends StatefulWidget {
  final String modelPath;

  const ARViewPage({Key? key, required this.modelPath}) : super(key: key);

  @override
  _ARViewPageState createState() => _ARViewPageState();
}

class _ARViewPageState extends State<ARViewPage> {
  late ArCoreController arCoreController;

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AR View Page'),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
        enableTapRecognizer: true,
      ),
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
      //scale: Vector3(0.1, 0.1, 0.1),
      // Adjust scale as needed
    );
    arCoreController.addArCoreNode(node);
  }
}
