
Future<File?> pickImageFromGallery(BuildContext context) async {
  File? image;
  try {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      image = File(pickedImage.path);
    }
  } catch (e) {
    print(e.toString());
  }
  return image;
}


Future<File?> pickVideoFromGallery(BuildContext context) async {
  File? video;
  try {
    final pickedVideo =
        await ImagePicker().pickVideo(source: ImageSource.gallery);

    if (pickedVideo != null) {
      video = File(pickedVideo.path);
    }
  } catch (e) {
  print(e.toString());
  }
  return video;
}



Future<GiphyGif?> pickGIF(BuildContext context) async {
  GiphyGif? gif;
  try {
    // ======== use Giphy Service . 
    gif = await Giphy.getGif(
      context: context,
      apiKey: 'put your key here',
    );
  } catch (e) {
  print(e.toString());
  }
  return gif;

  /// Display Gif

                //     showDialog(
                //     context: context,
                //     builder: (context) => AlertDialog(
                //         title: Text(gif.title),
                //         content: GiphyImageView(
                //             gif: gif,
                //         ),
                //     ),
                // );  
}



