import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:balghny/view/screen/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';





class Cam extends StatefulWidget {
  const Cam({Key? key}) : super(key: key);

  @override
  State<Cam> createState() => _CamState();
}

class _CamState extends State<Cam> {
 // String? img;


  File? imageFile;
   String? _imagepath;
 String i = "assets/images/my.jpg";

  @override
  void initState(){
super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Capturing Images'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(imageFile != null)
              Container(
                width: 640,
                height: 480,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: FileImage(imageFile!),
                      fit: BoxFit.cover
                  ),
                  border: Border.all(width: 8, color: Colors.black),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
            else
              Container(
                width: 640,
                height: 480,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(width: 8, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Text('Image should appear here', style: TextStyle(fontSize: 26),),
              ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        getImage(source: ImageSource.camera);

                     // _save();
                   //   save2(imageFile);
                     // s();



                      } ,
                      child: const Text('Capture Image', style: TextStyle(fontSize: 18))
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
  void getImage({required ImageSource source}) async {

    final file = await ImagePicker().pickImage(
      source: source,
        maxWidth: 640,
        maxHeight: 480,
        imageQuality: 70 //0 - 100
    );

    if(file?.path != null){
      setState(() {
        imageFile = File(file!.path);
        print(imageFile);
      });
    }
  }

  _save() async {
    var response = await Dio().get(
        imageFile!.path,
        options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 80,
        name: "hello");
    print(result);
  }

  void pickimage()async{
var image = await ImagePicker().pickImage(source: ImageSource.gallery);
setState(() {
  imageFile = image as File?;
});
  }

  save2(path) async{
    SharedPreferences saveimage = await SharedPreferences.getInstance();
     saveimage.setString("imagepath", path);

  }



   Load() async{
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    setState(() {
      _imagepath = saveimage.getString("imagepath");
    });
  }

  s()async {
    var image = await ImagePicker().pickImage(source:ImageSource.camera);
    if(image == null)

      return;
    GallerySaver.saveImage(image.path);
  }


}



