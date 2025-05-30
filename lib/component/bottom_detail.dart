import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/component/color_icon.dart';

class BottomDetail extends StatelessWidget {
  const BottomDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Urban Soft AL 10.0", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Spacer(),
                Text("\$699", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Spacer(),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 18),
                    children: [
                      TextSpan(text: "review"),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: "(26)",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Color Options"),
            SizedBox(height: 10),
            Row(
              children: [
                ColorIcon(rGap: 10, color: Colors.black),
                ColorIcon(rGap: 10, color: Colors.green),
                ColorIcon(rGap: 10, color: Colors.orange),
                ColorIcon(rGap: 10, color: Colors.grey),
                ColorIcon(),
              ],
            ),
            SizedBox(height: 20),
            Align(
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
