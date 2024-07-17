import 'package:flutter/material.dart';

class HomeTransportasi extends StatelessWidget {
  const HomeTransportasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/container.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: const Text("Profile"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                  child: Text("About"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                width: 200,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/transportasi');
                  },
                  child: Text("Transportasi"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
