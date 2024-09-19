import 'package:disease_prediction_app/screens/ecommerce_page.dart';
import 'package:disease_prediction_app/widgets/cards.dart';
import 'package:flutter/material.dart';

class DiseaseDetailsPage extends StatefulWidget {
  const DiseaseDetailsPage({super.key});

  @override
  State<DiseaseDetailsPage> createState() => _DiseaseDetailsPageState();
}

class _DiseaseDetailsPageState extends State<DiseaseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return ProductPage();
                            }));

                          },
                          child: const Icon(
                            Icons.shopping_bag,
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
      body: SingleChildScrollView(
        child: Padding(
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
                        'Result',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
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

              SizedBox(height: 10),

              MainBody(),

              SizedBox(height: 20),

              // RecommendationSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey[900],
              ),
              child: MyDieseaseTile(
                  color: Colors.white,
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShtAQlNhpGebJgNH01lB3UiKFPCdOr9Db5fw&s',
                  name: 'Tomato Leaf Blight',
                  tagline: 'Tomato'),
            ),
            SizedBox(height: 20),
            Text(
              'Tomato Blight',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
                'Tomato blight is a disease that attacks the foliage and fruit of tomatoes, causing rotting. It is most common in warm, wet weather, and in some years can cause almost total yield loss, particularly of susceptible tomato cultivars grown outdoors. The same pathogen also affects potatoes.'),
            SizedBox(height: 20),
            Text(
              'Quick facts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildText(context, 'Common Name:', 'Tomato blight, late blight'),
            _buildText(context, 'Scientific Name:', 'Phytophthora infestans'),
            _buildText(context, 'Plants Affected:', 'Tomatoes'),
            _buildText(context, 'Main Symptoms:',
                'Brown & rotting, shriveled leaves. Decay of fruit'),
            _buildText(
                context, 'Caused By:', 'Fungus-like (Oomycete) organism'),
            _buildText(context, 'Timing:', 'Early summer onwards'),
            SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  height: 90,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FFF5),
                    border: Border.all(color: Colors.green, width: 1.2),
                    borderRadius:
                        BorderRadius.circular(12.0), // Adjust radius as needed
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Risk Life Prediction',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.lightGreen[100],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: LinearProgressIndicator(
                            value: 0.7,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.green),
                            backgroundColor: Colors.transparent,
                            minHeight: 5.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Low',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            'High',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ],
                  )),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.green, width: 1.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                      ),
                      child: const Text(
                        'Re-scan',
                        style: TextStyle(fontSize: 18.0, color: Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9BBA92),
                        side: BorderSide(color: Color(0xFF9BBA92), width: 1.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                      ),
                      child: const Text(
                        'Share',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Widget _buildText(BuildContext context, String heading, String content) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            heading,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
