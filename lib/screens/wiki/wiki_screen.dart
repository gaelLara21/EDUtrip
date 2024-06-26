import 'package:flutter/material.dart';
import 'package:wikipedia/wikipedia.dart';

class WikiScreen extends StatefulWidget {
  const WikiScreen({super.key});

  @override
  State<WikiScreen> createState() => _WikiScreenState();
}

class _WikiScreenState extends State<WikiScreen> {
  late TextEditingController _controller;

  bool _loading = false;
  List<WikipediaSearch> _data = [];

  @override
  void initState() {
    _controller = TextEditingController(text: "");
    getLandingData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          controller: _controller,
          decoration: InputDecoration(
              hintText: "Search...",
              suffixIcon: InkWell(
                child: const Icon(Icons.search, color: Colors.black),
                onTap: () {
                  getLandingData();
                },
              )),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: _data.length,
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) => InkWell(
              onTap: () async {
                Wikipedia instance = Wikipedia();
                setState(() {
                  _loading = true;
                });
                var pageData = await instance.searchSummaryWithPageId(
                    pageId: _data[index].pageid!);
                setState(() {
                  _loading = false;
                });
                if (pageData == null) {
                  const snackBar = SnackBar(
                    content: Text('Data Not Found'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        Scaffold(
                      body: ListView(
                        padding: const EdgeInsets.all(10),
                        children: [
                          Text(
                            pageData!.title!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            pageData.description!,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(height: 8),
                          Text(pageData.extract!)
                        ],
                      ),
                    ),
                  );
                }
              },
              child: Card(
                elevation: 5,
                margin: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        _data[index].title!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Text(_data[index].snippet!),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: _loading,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future getLandingData() async {
    try {
      setState(() {
        _loading = true;
      });
      Wikipedia instance = Wikipedia();
      var result =
          await instance.searchQuery(searchQuery: _controller.text, limit: 10);
      setState(() {
        _loading = false;
        _data = result!.query!.search!;
      });
    } catch (e) {
      print(e);
      setState(() {
        _loading = false;
      });
    }
  }
}
