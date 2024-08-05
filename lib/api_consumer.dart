import 'dart:typed_data';
import 'package:ar_furniture_app/global.dart';
import 'package:http/http.dart' as http;

class ApiConsumer {
  Future<Uint8List> removeImageBackgroundApi(String imagePath) async {
    // Create a multipart request for the API endpoint
    var requestApi = http.MultipartRequest(
      "POST",
      Uri.parse("https://api.remove.bg/v1.0/removebg"),
    );

    // Attach the image file to the request
    requestApi.files.add(
      await http.MultipartFile.fromPath(
        "image_file",
        imagePath,
      ),
    );

    // Add API key to the request headers
    requestApi.headers.addAll({
      "X-API-Key": apiKeyRemoveImageBackground,
    });

    // Send the request and get the response
    final responseFromApi = await requestApi.send();

    // Check if the response status is OK
    if (responseFromApi.statusCode == 200) {
      // Parse the response and return the image bytes
      http.Response getTransparentImageFromResponse = await http.Response.fromStream(responseFromApi);
      return getTransparentImageFromResponse.bodyBytes;
    } else {
      // Throw an exception if an error occurred
      throw Exception("Error Occurred: ${responseFromApi.statusCode}");
    }
  }
}
