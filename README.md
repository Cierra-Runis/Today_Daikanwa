<div align="center">
  <img id="Today_Daikanwa" width="400" alt="Today_Daikanwa" src="https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/master/.github/icon.svg">
  <p>『 Today_Daikanwa - 今日大汉和！』</p>
</div>

`最后更新于：2023-07-17 15:55:47`

[📚 简介](#-简介)

[📸 示例](#-示例)

[📦 使用方式](#-使用方式)

[⏳ 进度](#-进度)

[📌 注意事项](#-注意事项)

[🧑‍💻 贡献者](#-贡献者)

[🔦 声明](#-声明)

---

# 📚 简介

<ruby>今日の大漢和<rt>きょうのだいかんわ</rt></ruby> 由 [<ruby>漢字文化資料館<rt>かんじぶんかしりょうかん</rt></ruby>](https://kanjibunka.com/) 从『大汉和辞典』中每天选择一个字进行发布

本项目与『[一言 HiToKoTo](https://hitokoto.cn/)』一样，可随机调出一个字进行展示

# 📸 示例

请在 [Release 界面](https://github.com/Cierra-Runis/Today_Daikanwa/releases) 下载 Demo 软件进行预览

![screenshot_1](https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/master/.github/screenshot_1.png)
![screenshot_2](https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/master/.github/screenshot_2.png)

# 📦 使用方式

使用 `https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/main/data/data.json` 作为数据源
其返回一个列表，其元素结构如下：

```json
{
  "uuid": "8c954e42", # uuid 字符串，不为空
  "raw_preview_img_url": "https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/main/data/raw/8c954e42_preview.jpg", # 未经处理的预览图片链接字符串，不为空，格式为 jpg
  "processed_preview_img_url": "https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/main/data/processed/8c954e42_preview.png", # 经过处理的预览图片链接字符串，不为空，格式为 png
  "preview_width": 150, # 预览图片宽度，不为空
  "preview_height": 281, # 预览图片高度，不为空
  "raw_detail_img_url": "https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/main/data/raw/8c954e42_detail.jpg", # 未经处理的详情图片链接字符串，不为空，格式为 jpg
  "processed_detail_img_url": "https://raw.githubusercontent.com/Cierra-Runis/Today_Daikanwa/main/data/processed/8c954e42_detail.png", # 经过处理的详情图片链接字符串，不为空，格式为 png
  "detail_width": 1508, # 详情图片宽度，不为空
  "detail_height": 924 # 详情图片高度，不为空
}
```

# ⏳ 进度

已完成，按需修改

# 📌 注意事项

无

# 🧑‍💻 贡献者

<a href="https://github.com/Cierra-Runis/Today_Daikanwa/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Cierra-Runis/Today_Daikanwa" />
</a>

# 🔦 声明

[![License](https://img.shields.io/github/license/Cierra-Runis/Today_Daikanwa)](https://github.com/Cierra-Runis/Today_Daikanwa/blob/master/LICENSE)

该项目采用 `MIT` 许可协议，查看 [LICENSE](https://github.com/Cierra-Runis/Today_Daikanwa/blob/master/LICENSE) 以获得更多信息
