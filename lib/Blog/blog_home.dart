import 'package:farmingo/Blog/post_details_page.dart';
import 'package:farmingo/Blog/bottom_bar_widget.dart';
import 'package:farmingo/Blog/post_cell_widget.dart';
import 'package:flutter/material.dart';

class Post {
  final String title;
  final String image;
  final String author;
  final String date;

  Post({required this.title, required this.image, required this.author, required this.date});
}

class bloghome extends StatelessWidget {
  final data = [
    Post(
      image: 'images/tt.jpg',
      title: 'Need Onions On a Large Scale',
      author: 'National Agriculture Exchange',
      date: '25 Mar 2021',
    ),
    Post(
      image: 'images/slogan.jpg',
      title: 'Need Wheat On a Large Scale',
      author: 'Farm foods',
      date: '24 Mar 2021',
    ),
    Post(
      image: 'images/gri.jpg',
      title: 'Want tomatos and potatos on large scale',
      author: 'Reliance Fresh',
      date: '15 Mar 2020',
    ),
    Post(
      image: 'images/farm.jpg',
      title: 'Want Honey on large Scale',
      author: 'Patanjali Market',
      date: '11 Mar 2020',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Daily Prompt',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/example.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    top: 6,
                    right: 0,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBarWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.book),
        backgroundColor: Color(0xFFFFD810),
        elevation: 0,
        onPressed: () {},
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for articles, author, and tags',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Read About More Tendors Upcoming',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final post = data[index];
                    return PostCellWidget(
                        title: post.title,
                        image: post.image,
                        author: post.author,
                        date: post.date,
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => PostDetailsPage(
                                title: post.title,
                                image: post.image,
                                author: post.author,
                                date: post.date,
                              ),
                            ),
                          );
                        });
                  },
                  separatorBuilder: (context, index) => Divider(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'More Raw Products Exports',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 130,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'images/africa.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'images/agrifarm.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'images/Agro.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'images/com.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'images/ssss.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}