// import 'dart:typed_data';
// import 'package:disease_prediction_app/screens/disease_details_page.dart';
// import 'package:disease_prediction_app/utils/utils.dart';
// import 'package:disease_prediction_app/widgets/cards.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// Uint8List? _file;

// _selectImage(BuildContext context) async {
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return SimpleDialog(
//           title: const Text('Choose an Image'),
//           children: [
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: const Text('Take a Photo'),
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 Uint8List? file = await pickImage(ImageSource.camera);
//                 _file = file;
//               },
//             ),
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: const Text('Choose From Gallery'),
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 Uint8List? file = await pickImage(ImageSource.gallery);
//                 _file = file;
//               },
//             ),
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: const Text('Cancel'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             )
//           ],
//         );
//       });
//   }


// class ConfirmImageScreen extends StatefulWidget {
//   final Uint8List? file;

//   const ConfirmImageScreen({super.key, required this.file});

//   @override
//   State<ConfirmImageScreen> createState() => _ConfirmImageScreenState();
// }

// class _ConfirmImageScreenState extends State<ConfirmImageScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

