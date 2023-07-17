import 'dart:async';
import 'package:example/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '今日の大漢和',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.orange,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodayDaiKanWa> data = [];
  late EasyRefreshController _controller;

  @override
  void initState() {
    super.initState();
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<List<TodayDaiKanWa>> _fetch() async {
    const String url =
        'https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/main/data/data.json';
    try {
      final response = await Dio().get(url);
      List data = jsonDecode(response.data);
      return data.map((e) => TodayDaiKanWa.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> _refresh() async {
    data = await _fetch();
    setState(() => data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('今日の大漢和'),
      ),
      body: EasyRefresh(
        refreshOnStart: true,
        onRefresh: _refresh,
        child: getBodyByData(data),
      ),
    );
  }

  Widget getBodyByData(List<TodayDaiKanWa> data) {
    if (data.isEmpty) {
      return Center(
        child: TextButton(
          onPressed: _refresh,
          child: const Text('请检查网络'),
        ),
      );
    }
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: data.length,
      itemBuilder: (context, index) => TodayDaiKanWaCardWidget(
        todayDaiKanWa: data[index],
      ),
    );
  }
}

class TodayDaiKanWaCardWidget extends StatelessWidget {
  const TodayDaiKanWaCardWidget({
    super.key,
    required this.todayDaiKanWa,
  });

  final TodayDaiKanWa todayDaiKanWa;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        child: InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: TodayDaiKanWaImage(
                url: todayDaiKanWa.processedDetailImgUrl,
                width: todayDaiKanWa.detailWidth.toDouble(),
                height: todayDaiKanWa.detailHeight.toDouble(),
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          child: TodayDaiKanWaImage(
            url: todayDaiKanWa.processedPreviewImgUrl,
            width: todayDaiKanWa.previewWidth.toDouble(),
            height: todayDaiKanWa.previewHeight.toDouble(),
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}

class TodayDaiKanWaImage extends StatelessWidget {
  const TodayDaiKanWaImage({
    super.key,
    required this.url,
    required this.width,
    required this.height,
    required this.color,
  });

  final String url;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 2,
      height: height / 2,
      child: Image.network(
        url,
        color: color,
        width: width,
        height: height,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress != null) {
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          }
          return child;
        },
      ),
    );
  }
}
