## iOS作業2


###測試環境
- iOS7 simulator
- Mac OSX 10.9


###資料
- API位置:  
`http://*********/data/get_update.php?function_code=Profile&store=livebricks&version=0&language=TW`
- JSON格式
- catalog資料:
category_description
- catalog image資料:
category_image_url
- title資料:
name_title
- name資料:
name



###功能
1. App啟動以後會先去API取得資料,再產生畫面
2. 畫面layout:全版面的tableview,裡面包含固定高度的cell(100px)
3. 100X100的imageview,靠左對齊,使用category_image_url的圖
4. 1/2畫面高的Label,靠上面對齊,使用category_description資料,根據字數放大縮小,最多兩行
5. 1/2畫面高的Label,靠下面對齊,使用name_title+name資料,根據字數放大縮小,最多兩行
6. imageview的比例要對,等比例放大縮小

###加分題 (就...多做有飲料喝)
1. 取得API資料要用非同步的方式
2. image資料要cache在local folder (/Library/Caches/)
3. tableview動起來不會卡卡的
4. 圖片點了以後會滿版顯示

###其他說明
1. 可以使用3rd元件,但是用了要跟我解釋他是在幹嘛跟怎麼運作跟你為什麼用?!
2. 要使用github,建立專案以後要把我(AlioCHIU)加到member

###參考資料
1. iNDEX 線上版的Profile功能
2. Apple官方文件 `https://developer.apple.com/library/ios/navigation/`
3. Alio,Andy,Phinix,Henry
