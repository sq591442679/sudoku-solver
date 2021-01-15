1.  运行sudoku.mlapp，进入“选择数独”页面。点击“选择图片”，选择一张包含数独的图片，要求格式为.jpg或.png；

2. 选择完毕后“所选图片”被自动置为用户选择的图片，“处理后图片”为图像处理部分自动识别的数独轮廓蒙版；

3. 
    若用户认为自动识别的数独轮廓蒙版不准确，可点击“识别不准”手动标注所选图片中的数独轮廓；

4. 点击“确定选择”，界面自动跳转到“求解数独”页面。此页面中“所选图片”为用户选择的图片，右侧9×9的方格已被自动填入了图像识别部分识别出的数独初始内容；

5. 若用户发现图像识别部分识别出的数独初始内容不准，可在右侧九宫格中手动输入正确数字；

6. 点击“逐步求解”按钮或“直接求解”按钮，九宫格下方会分别显示两种方法解数独所花时间。若点击“逐步求解”按钮，九宫格中会每隔1.2秒填入一个数字，表示按照解数独的方法当前步骤需在此位置填入此数字。若点击“直接求解”按钮，九宫格中会直接显示此数独的解。若该数独无解，界面会显示“数独无解！”；

7. 若数独有多个解，点击“下一组解”按钮，九宫格中会直接显示此数独的下一组解；

8. 若想要选择新的图片继续求解，点击“重新选择”按钮会清空九宫格与图片内容，同时跳转到“选择数独”页面以供用户重新选择一张图片。