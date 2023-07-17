'''
process.py
'''

import os
import threading
from PIL import Image


class Task(threading.Thread):
    '''
    process a task
    '''

    def __init__(self, image_path: list):
        self.image_path = image_path
        super().__init__()

    def run(self):
        for i in self.image_path:
            process_image(i)


def process_image(image_path: str) -> None:
    '''
    process
    '''
    image_path = './img/' + image_path
    print(image_path)
    # 打开图像
    image = Image.open(image_path)

    # 将图片转换为RGBA模式
    image = image.convert("RGBA")

    # 获取图像的像素数据
    pixel_data = image.load()

    # 遍历每个像素
    for i in range(image.width):
        for j in range(image.height):
            # 获取像素的RGBA值
            r, g, b, _ = pixel_data[i, j]

            # 将白色区域设为透明
            if r > 200 and g > 200 and b > 200:
                pixel_data[i, j] = (0, 0, 0, 0)  # 将白色设置为透明色
            else:
                pixel_data[i, j] = (0, 0, 0, 255)

    # 保存处理后的图像为PNG格式
    image.save(image_path.replace('img', 'out').replace('jpg', 'png'), "PNG")


for root, _, files in os.walk('./img'):
    t1 = Task(files[:len(files) // 2])
    t2 = Task(files[len(files) // 2:])
    t1.start()
    t2.start()
