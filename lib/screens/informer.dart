import 'package:flutter/material.dart';
import '../screens/descrition.dart';

class InformerPage extends StatelessWidget {
  const InformerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          title: Center(
            // ignore: prefer_const_constructors
            child: Text(
              'What do you want to throw away?',
              style: const TextStyle(color: Colors.teal),
              maxLines: 3,
            ),
          )),
      body: Padding(
          padding: const EdgeInsets.all(24),
          child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Descristion()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFFFFFFF)),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://img.freepik.com/premium-vector/damaged-cardboard-box-wet-broken-parcel-puddle-floor-isometric-vector-illustration_168129-1447.jpg?w=2000',
                              scale: 0.5,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://elements-cover-images-0.imgix.net/a609cc45-1267-4625-a560-654d92f56ba8?auto=compress%2Cformat&fit=max&w=1170&s=cf9ffab6325f42d6f492b3585f2058f2',
                      scale: 0.5,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://elements-cover-images-0.imgix.net/afafb5b1-e205-49d1-b21b-a1c6614ed4a6?auto=compress%2Cformat&fit=max&w=1170&s=fb5e2d62ca0c981b57efc80d7515d347',
                      scale: 0.5,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://elements-cover-images-0.imgix.net/4ec2102f-3f0a-439e-9406-bc688d954223?auto=compress%2Cformat&fit=max&w=1170&s=a367f2e5b20ff42cddadc3fd552be011',
                      scale: 0.5,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://elements-cover-images-0.imgix.net/d91a186e-cdf4-401b-8550-bce87434ce43?auto=compress%2Cformat&fit=max&w=1170&s=99ba9b4a1dfdc1e6dd494e79c10cf53e',
                      scale: 0.5,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://elements-cover-images-0.imgix.net/e758aeca-038c-4460-b6a2-ea1507de5cc5?auto=compress%2Cformat&fit=max&w=1170&s=c900d559dac10876cc0a57824f5fae4b',
                      scale: 0.5,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://elements-cover-images-0.imgix.net/10025acd-22d2-4944-b1ef-b85b4219f97b?auto=compress%2Cformat&fit=max&w=1170&s=1137a65e22f47d7d514dd7631783b4e7',
                      scale: 0.5,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://elements-cover-images-0.imgix.net/938ec75a-c299-4ca6-b98a-5fb36c2181f7?auto=compress%2Cformat&fit=max&w=1170&s=d04a761d0d497f60bd8f6ad606d2d89c',
                      scale: 0.5,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}