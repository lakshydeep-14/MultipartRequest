
import 'package:http/http.dart' as http;
import 'dart:convert';
class Home {
  multipartProdecudre() async {
   

    //for multipartrequest
    var request = http.MultipartRequest('POST', Uri.parse('YOUR URL'));

    //for token
    request.headers.addAll({"Authorization": "Bearer token"});

    //for image and videos and files

    request.files.add(await http.MultipartFile.fromPath("key_value_from_api", "image_path/video/path"));

    //for completeing the request
    var response =await request.send();

    //for getting and decoding the response into json format
    var responsed = await http.Response.fromStream(response);
    final responseData = json.decode(responsed.body);


     if (response.statusCode==200) {
        print("SUCCESS");
        print(responseData);
      }
     else {
      print("ERROR");
    }
  }}