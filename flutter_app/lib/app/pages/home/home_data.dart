import 'package:meta/meta.dart';

class HomeData {
  final String avater;
  final String title;

  const HomeData({@required this.avater, @required this.title})
      : assert(avater != null, title != null);
}

class HomePagetData {
  final List<HomeData> list = [
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: 'common'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: 'dart'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
    const HomeData(
        avater:
            'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',
        title: '测试1'),
  ];

  static HomePagetData mock() {
    return HomePagetData();
  }
}
