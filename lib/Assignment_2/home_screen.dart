import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: const BoxDecoration(
                color: Color(0xFFF0F2F5),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.add, color: Colors.black, size: 22),
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: const BoxDecoration(
                color: Color(0xFFF0F2F5),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.search, color: Colors.black, size: 22),
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 12),
              decoration: const BoxDecoration(
                color: Color(0xFFF0F2F5),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.message, color: Colors.black, size: 22),
                onPressed: () {},
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xFF1877F2),
            indicatorWeight: 3,
            labelColor: Color(0xFF1877F2),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home, size: 26)),
              Tab(icon: Icon(Icons.ondemand_video, size: 26)),
              Tab(icon: Icon(Icons.storefront, size: 26)),
              Tab(icon: Icon(Icons.account_circle_outlined, size: 26)),
              Tab(icon: Icon(Icons.notifications_none, size: 26)),
              Tab(icon: Icon(Icons.menu, size: 26)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(height: 1, thickness: 0.5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "What's on your mind?",
                        style: TextStyle(color: Colors.grey[600], fontSize: 15),
                      ),
                    ),
                    const Icon(Icons.photo_library, color: Colors.green),
                  ],
                ),
              ),
              Container(height: 8, color: const Color(0xFFF0F2F5)),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        width: 110,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.person, size: 40, color: Colors.grey),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 8.0),
                                      child: Text(
                                        'Create a\n Story',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 105,
                              left: 35,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Color(0xFF1877F2),
                                  child: Icon(Icons.add, color: Colors.white, size: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return Container(
                      width: 110,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[400],
                      ),
                      child: Stack(
                        children: [
                          const Center(
                            child: Icon(Icons.image, size: 50, color: Colors.white),
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: Color(0xFF1877F2),
                                shape: BoxShape.circle,
                              ),
                              child: const CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.person, size: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(height: 8, color: const Color(0xFFF0F2F5)),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        title: const Text(
                          'Route',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            const Text('8h • '),
                            Icon(Icons.public, size: 14, color: Colors.grey[600]),
                          ],
                        ),
                        trailing: const Icon(Icons.more_horiz),
                      ),
                      Container(
                        height: 250,
                        width: double.infinity,
                        color: Colors.grey[300],
                        child: const Center(
                          child: Text(
                            'Route',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Row(
                          children: [
                            Icon(Icons.thumb_up, size: 16, color: Color(0xFF1877F2)),
                            SizedBox(width: 4),
                            Text('12'),
                            Spacer(),
                            Text('2 comments'),
                          ],
                        ),
                      ),
                      const Divider(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.thumb_up_alt_outlined, color: Colors.grey),
                            label: const Text('Like', style: TextStyle(color: Colors.grey)),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.chat_bubble_outline, color: Colors.grey),
                            label: const Text('Comment', style: TextStyle(color: Colors.grey)),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.share_outlined, color: Colors.grey),
                            label: const Text('Share', style: TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                      Container(height: 8, color: const Color(0xFFF0F2F5)),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}