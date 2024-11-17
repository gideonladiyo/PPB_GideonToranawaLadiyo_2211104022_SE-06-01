// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageFromGalleryEx extends StatefulWidget {
//   final type; 
//   const ImageFromGalleryEx(this.type, {super.key});

//   @override
//   ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
// }

// class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
//   var _image;
//   var imagePicker;
//   var type;

//   ImageFromGalleryExState(this.type);

//   @override
//   void initState() {
//     super.initState();
//     imagePicker = ImagePicker();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(type == ImageSource.camera
//             ? "Image from Camera"
//             : "Image from Gallery"),
//       ),
//       body: Column(
//         children: <Widget>[
//           SizedBox(height: 52),
//           Center(
//             child: GestureDetector(
//               onTap: () async {
//                 var image = await imagePicker.pickImage(
//                   source: type,
//                   imageQuality: 50,
//                   preferredCameraDevice: CameraDevice.front,
//                 );
//                 if (image != null) {
//                   setState(() {
//                     _image = File(image.path);
//                   });
//                 } else {
//                   // Tambahkan log atau pemberitahuan jika diperlukan
//                   print("No image selected.");
//                 }
//               },
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(color: Colors.red[200]),
//                 child: _image != null
//                     ? Image.file(
//                         _image,
//                         width: 200.0,
//                         height: 200.0,
//                         fit: BoxFit.fitHeight,
//                       )
//                     : Container(
//                         decoration: BoxDecoration(color: Colors.red[200]),
//                         width: 200,
//                         height: 200,
//                         child: Icon(
//                           Icons.camera_alt,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }