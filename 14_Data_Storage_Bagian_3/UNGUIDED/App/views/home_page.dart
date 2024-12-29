// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pertemuan14/App/controllers/api_controller.dart';

// import '../API/api_service.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//   ApiController controller = Get.put(ApiController());
//   final ApiService api = ApiService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('HTTP request response'),
//         centerTitle: true,
//         backgroundColor: Colors.amber,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Obx(
//             () {
//               return Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   controller.isLoading.value
//                       ? const Center(child: CircularProgressIndicator())
//                       : controller.posts.isEmpty
//                       ? const Text(
//                     "Tekan tombol GET untuk mengambil data",
//                     style: TextStyle(fontSize: 12),
//                   )
//                       : Expanded(
//                     child: ListView.builder(
//                       itemCount: controller.posts.length,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.only(bottom: 12.0),
//                           child: Card(
//                             elevation: 4,
//                             child: ListTile(
//                               title: Text(
//                                 controller.posts[index]['title'],
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20),
//                               ),
//                               subtitle: Text(
//                                 controller.posts[index]['body'],
//                                 style: const TextStyle(fontSize: 16),
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () => controller.fetchPosts(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//                     child: const Text('GET'),
//                   ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () => controller.createPost(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//                     child: const Text('POST'),
//                   ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () => controller.updatePost(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                     child: const Text('UPDATE'),
//                   ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () => controller.deletePost(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                     child: const Text('DELETE'),
//                   ),
//                 ],
//               );
//             }
//         ),
//       ),
//     );
//   }
// }
