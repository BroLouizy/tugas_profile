import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 60),
                // Bagian atas: profil
                Column(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/img.jpg'),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "@ ey.andii_",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Column(
                          children: [
                            Text("76", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text("Following", style: TextStyle(color: Colors.white70, fontSize: 12)),
                          ],
                        ),
                        SizedBox(width: 24),
                        Column(
                          children: [
                            Text("56.7K", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text("Followers", style: TextStyle(color: Colors.white70, fontSize: 12)),
                          ],
                        ),
                        SizedBox(width: 24),
                        Column(
                          children: [
                            Text("1.2M", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text("Likes", style: TextStyle(color: Colors.white70, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
                          child: const Text("Edit profile"),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
                          child: const Text("Share profile"),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
                          child: const Icon(Icons.person_add_alt_1, size: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Add bio",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Tab bar icon bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.grid_view, color: Colors.white),
                    Icon(Icons.lock_outline, color: Colors.white54),
                    Icon(Icons.repeat, color: Colors.white54),
                    Icon(Icons.bookmark_border, color: Colors.white54),
                    Icon(Icons.favorite_border, color: Colors.white54),
                  ],
                ),
                const SizedBox(height: 8),
      // Grid konten video
      Expanded(
        child: GridView.builder(
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            final images = [
              'images/poto 1.jpg',
              'images/poto 2.jpg',
              'images/poto 3.jpg',
              'images/poto 4.jpg',
              'images/poto 5.jpg',
              'images/poto 6.jpg',
              'images/poto 7.jpg',
              'images/poto 8.jpg',
              'images/poto 9.jpg',
            ];
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[800],
              ),
            );
          },
        ),
      ),
              ],
    ),
          ),
        ],
      ),
    );
  }
}
