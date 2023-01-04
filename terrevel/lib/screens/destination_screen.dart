import 'package:flutter/material.dart';
import 'package:terrevel/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({required this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
  // const DestinationScreen({super.key, required this.destination});

  // @override
  // State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(
                  image: AssetImage(widget.destination.imageUrl),
                  fit: BoxFit.cover,
                  //boxfit.cover buat supaya gambar nyesuain sama ukuran mediaquery yang udah kita buat diatas
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
