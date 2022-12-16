import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../Declarations/Constants/Images/image_files.dart';

class QRWidget extends StatelessWidget {
  const QRWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data.isNotEmpty ? true : false,
      child: QrImage(
        data: data,
        version: QrVersions.auto,
        eyeStyle:
            const QrEyeStyle(eyeShape: QrEyeShape.square, color: Colors.black),
        dataModuleStyle: const QrDataModuleStyle(
            dataModuleShape: QrDataModuleShape.square, color: Colors.black),
        embeddedImage: AssetImage(imagePath[0]),
        embeddedImageStyle: QrEmbeddedImageStyle(size: const Size(150, 150)),
        size: 300.0,
      ),
    );
  }
}
