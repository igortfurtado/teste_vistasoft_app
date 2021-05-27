import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:segundo_vista_app/app/theme/app_colors.dart';
import 'package:segundo_vista_app/app/theme/app_text_theme.dart';
import 'package:segundo_vista_app/home/controller/imovel_detail.controller.dart';

class ImovelDetailsPage extends StatelessWidget {
  final ImovelDetailsController _controller;

  ImovelDetailsPage(this._controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_controller.categoria),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              itemBuilder: (context, index) {
                return CachedNetworkImage(
                  imageUrl:
                      "http://www.vistasoft.com.br/sandbox/vista.imobi/fotos/i_demo_1949_2.jpg",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.0);
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _controller.codigo,
                        style: AppTextTheme.body,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(_controller.valorVenda,
                        style: AppTextTheme.title3),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      _controller.endereco,
                      style: AppTextTheme.subhead.apply(
                        color: AppColors.textColorLight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        _controller.dormitorios,
                        style: AppTextTheme.headline,
                      ),
                      Text(
                        "dormitorio(s)",
                        style: AppTextTheme.footnote,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        _controller.vagas,
                        style: AppTextTheme.headline,
                      ),
                      Text(
                        "vaga(s) na garagem",
                        style: AppTextTheme.footnote,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _controller.areaTotal,
                  style: AppTextTheme.headline,
                ),
                Text(
                  'metros quadrados',
                  style: AppTextTheme.footnote,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
