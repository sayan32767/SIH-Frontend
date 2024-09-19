import 'dart:typed_data';
import 'package:disease_prediction_app/screens/confirm_page.dart';
import 'package:disease_prediction_app/screens/disease_details_page.dart';
import 'package:disease_prediction_app/widgets/cards.dart' as cards;
import 'package:disease_prediction_app/widgets/cards.dart';
import 'package:image_picker/image_picker.dart';
import 'package:disease_prediction_app/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Uint8List? _file;

  _selectImage(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Choose an Image'),
          children: [
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: const Text('Take a Photo'),
              onPressed: () async {
                Navigator.of(context).pop();
                Uint8List? file = await pickImage(ImageSource.camera);
                setState(() {
                  _file = file;
                });
                
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: const Text('Choose From Gallery'),
              onPressed: () async {
                Navigator.of(context).pop();
                Uint8List? file = await pickImage(ImageSource.gallery);
                setState(() {
                  _file = file;
                });
                
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
  }


  @override
  Widget build(BuildContext context) {
    return _file == null ? Scaffold(
      backgroundColor: const Color(0xFFEEF2E0),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey[900],
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: const Color(0xFF9BBA92),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, color: Colors.white),
                        SizedBox(width: 6),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[800],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            
                          },
                          child: const Icon(
                            Icons.camera,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[800],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://cdn.vectorstock.com/i/500p/08/19/gray-photo-placeholder-icon-design-ui-vector-35850819.jpg',
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Soumyaraj Bag',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Welcome Back! 👋',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const cards.CardBanner(),
              const SizedBox(height: 15),
              

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.green, width: 1),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          children: [
                            Text(
                              'Know plant disease with AI',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'This is a line about our solution',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 12),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          
                          await _selectImage(context);

                        },
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(color: Colors.green, width: 1.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                        ),
                        child: const Text(
                          'Scan Now',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.green
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 15),
              const cards.RecentDiagnoses(),
            ],
          ),
        ),
      ),
    )

    :

    Scaffold(
      backgroundColor: const Color(0xFFEEF2E0),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey[900],
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: const Color(0xFF9BBA92),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, color: Colors.white),
                        SizedBox(width: 6),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[800],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            
                          },
                          child: const Icon(
                            Icons.camera,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.grey[800],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                
                Expanded(
                  child: Center(
                    child: Text(
                      'Selected Image',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
        
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            ConfirmPageMainBody(),

            SizedBox(height: 20),

            ConfirmPageRecommendationSection(),
            
          ],
        ),
      ),
    );
  }
}

class ConfirmPageMainBody extends StatefulWidget {
  const ConfirmPageMainBody({super.key});

  @override
  State<ConfirmPageMainBody> createState() => _ConfirmPageMainBodyState();
}

class _ConfirmPageMainBodyState extends State<ConfirmPageMainBody> {
  bool _isLoading = false;

  _uploadImage() async {
    setState(() {
      _isLoading = true;  
    });
    
    await Future.delayed(Duration(seconds: 2));
    
    setState(() {
      _isLoading = false;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Column(
            children: [

              ConfirmPageCardBanner(),

              SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {

                    await _uploadImage();

                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DiseaseDetailsPage();
                    }));
                   
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.green, width: 1.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                  ),
                  child: SizedBox(
                    height: 35,
                    child: !_isLoading ? Center(
                      child: const Text(
                        'Upload Now',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.green
                        ),
                      ),
                    ) : CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  )
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}



class ConfirmPageCardBanner extends StatelessWidget {
  const ConfirmPageCardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjZhbMsvw-xKFS78P0FPEbz9qHEhf1-JjvRQ&s',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}



class ConfirmPageRecommendationSection extends StatelessWidget {
  const ConfirmPageRecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      padding: const EdgeInsets.fromLTRB(14, 24, 14, 14),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
            children: [
              Text(
                'Some Common Diseases',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 4), // Add spacing between the titles
              Text(
                'Click to know more about the diseases',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // List of disease tiles
          MyDieseaseTile(
            url: 'https://www.ontario.ca/files/2022-07/omafra-black-rot-figure-1-en-400x308-2022-07-21-v1.jpg',
            name: 'Apple Black Rot',
            tagline: 'Apple',
          ),
          SizedBox(height: 20),
          MyDieseaseTile(
            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN8cKzm_vlrxKu4HjFyru5SNUIyYmSpUcjVA&s',
            name: 'Northern Leaf Blight',
            tagline: 'Corn',
          ),
          SizedBox(height: 20),
          MyDieseaseTile(
            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShtAQlNhpGebJgNH01lB3UiKFPCdOr9Db5fw&s',
            name: 'Tomato Leaf Blight',
            tagline: 'Tomato',
          ),
        ],
      ),
    );
  }
}

