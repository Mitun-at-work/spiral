import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sih24/utils/constants.dart';

class OnBoardController extends GetxController {
  final ImagePicker picker = ImagePicker();

  RxString pickedImage = "".obs;
  String userName = "";

  Future<void> updateProfilePicture() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      pickedImage.value = image.path;
      update();
    }
  }

  Future<void> updateUserDetails() async {
    await hiveManager.initializeHive("userDetails");
    await hiveManager.readFromHive("userDetails", 'userProfile');

    hiveManager.writeToHive(
      "userDetails",
      'userProfile',
      {
        'name': userName,
        'profilePic': pickedImage.value,
      },
    );

    await dependedncyInjection.injectAdvanced();
  }
}
