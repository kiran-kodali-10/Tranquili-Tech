import 'package:flutter/material.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  List<Article> articles = [
    Article(title: 'Article 1', content: 'When our bodies have mobilized and are responding to threats, it can feel like someone else is in our head,someone who takes actions we would never choose in our right minds. We can stop this feeling and get backto our true selves faster by learning to interrupt the stress response. '),
    Article(title: 'Article 2', content: 'However, our bodies get overwhelmed when we stay stressed all the time, especially when there are manystressors at the same time.'),
    Article(title: 'Article 3', content: 'Your body’s stress response is completely normal. It’s your subconscious looking out for you – but this backfireswhen you never get back to a relaxed state3'),
    Article(title: 'Article 4', content: 'When our bodies have mobilized and are responding to threats, it can feel like someone else is in our head,someone who takes actions we would never choose in our right minds. We can stop this feeling and get backto our true selves faster by learning to interrupt the stress response. '),
    Article(title: 'Article 5', content: 'However, our bodies get overwhelmed when we stay stressed all the time, especially when there are manystressors at the same time.'),
    Article(title: 'Article 6', content: 'Your body’s stress response is completely normal. It’s your subconscious looking out for you – but this backfireswhen you never get back to a relaxed state3'),
  ];

  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                // Your other widgets can go here

                SizedBox(height: 20,),
                Image(
                    height: 180,
                    width: 180,
                    image: AssetImage('assets/logo.png')
                ),

                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Text(articles[index].title,style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Qwigley',),),
                        onExpansionChanged: (isExpanded) {
                          setState(() {
                            selectedIndex = isExpanded ? index : -1;
                          });
                        },
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(

                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.9),
                                width: 3.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 10,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),

                            padding: EdgeInsets.all(16.0),

                            child: Text(articles[index].content, style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, ),),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String content;

  Article({required this.title, required this.content});
}
