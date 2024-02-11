// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// class FirebaseDB {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseStorage _storage = FirebaseStorage.instance;

//   // Retrieve the entire collection as a list of maps
//   Future<List<Object?>> getCollectionAsList(String collectionPath) async {
//     QuerySnapshot querySnapshot =
//         await _firestore.collection(collectionPath).get();
//     List<Object?> dataList =
//         querySnapshot.docs.map((doc) => doc.data()).toList();
//     return dataList; // Now returns a Future of the correct type
//   }

//   // Add a document to a collection
//   Future<int> addDocument(
//       String collectionPath, Map<String, dynamic> data) async {
//     try {
//       await _firestore.collection(collectionPath).add(data);
//       return 1;
//     } catch (error) {
//       return 0;
//     }
//   }

//   // Update a document in a collection
//   Future<int> updateDocument(String collectionPath, String documentId,
//       Map<String, dynamic> data) async {
//     try {
//       await _firestore.collection(collectionPath).doc(documentId).update(data);
//       return 1;
//     } catch (error) {
//       return 0;
//     }
//   }

//   // Delete a document in a collection
//   Future<int> deleteDocument(String collectionPath, String documentId) async {
//     try {
//       await _firestore.collection(collectionPath).doc(documentId).delete();
//       return 1;
//     } catch (error) {
//       return 0;
//     }
//   }

//   // Retrieve a document in a collection
//   Future<DocumentSnapshot<Map<String, dynamic>>?> getDocument(
//       String collectionPath, String documentId) async {
//     try {
//       return await _firestore.collection(collectionPath).doc(documentId).get();
//     } catch (error) {
//       return null;
//     }
//   }

//   // Generate a custom document ID
//   String generateDocumentId() {
//     return const Uuid().v4();
//   }

//   // Add a document with a custom ID
//   Future<int> addDocumentWithCustomId(
//       String collectionPath, Map<String, dynamic> data) async {
//     final String docId = generateDocumentId();
//     try {
//       await _firestore.collection(collectionPath).doc(docId).set(data);
//       return 1;
//     } catch (error) {
//       return 0;
//     }
//   }

//   // Upload a document and return the media link
//   Future<String?> uploadDocument(
//       String collectionPath, String documentId, String filePath) async {
//     try {
//       Reference ref = _storage.ref().child(collectionPath).child(documentId);
//       UploadTask uploadTask = ref.putFile(File(filePath));
//       TaskSnapshot snapshot = await uploadTask;
//       String downloadUrl = await snapshot.ref.getDownloadURL();
//       return downloadUrl;
//     } catch (error) {
//       return null;
//     }
//   }
// }
