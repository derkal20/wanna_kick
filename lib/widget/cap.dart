import 'package:flutter/material.dart';
import 'package:wanna_kick/themes/constain_color.dart';
import 'package:camera/camera.dart';

class CapturePage extends StatefulWidget {
  const CapturePage({Key? key}) : super(key: key);

  @override
  _CaptureState createState() => _CaptureState();
}

class _CaptureState extends State<CapturePage> {

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  CameraController? cameraController;

  Future<void> initCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    // Khởi tạo camera
    cameraController = CameraController(firstCamera, ResolutionPreset.medium);

    // Khởi tạo camera controller
    await cameraController?.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    cameraController?.dispose(); // Đóng camera controller khi không cần thiết
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController == null || !cameraController!.value.isInitialized) {
      return Container(); // Hoặc hiển thị một widget thay thế nếu camera chưa sẵn sàng
    }

    return Scaffold(
      body: Center(
        child: CameraPreview(cameraController!),
      ),
    );
  }
}
