## iOS作業1


###測試環境
- iOS7 simulator
- Mac OSX 10.9

###資料
- API位置:  
`http://*********/data/get_update.php?function_code=Intro&store=livebricks&version=0&language=TW`
- JSON格式
- image資料:  
image_url
- text資料:  
description


###功能
1. App啟動以後會先去API取得資料,再產生畫面
2. 畫面layout:全版面的scrollview,裡面包含1/2畫面高的imageview,1/2畫面高的textview
3. scrollview要可以依照API資料個數左右移動
4. imageview的比例要對,等比例放大縮小
5. textview要可以偵測link,phone,email

###加分題 (就...多做有飲料喝)
1. 取得API資料要用非同步的方式
2. image資料要cache在local folder (/Library/Caches/)
3. scrollview動起來不會卡卡的
4. 圖片點了以後會滿版顯示

###其他說明
1. 可以使用3rd元件,但是用了要跟我解釋他是在幹嘛跟怎麼運作跟你為什麼用?!
2. 要使用github,建立專案以後要把我(AlioCHIU)加到member

###參考資料
1. iNDEX 線上版的intro功能
2. Apple官方文件 `https://developer.apple.com/library/ios/navigation/`
3. Alio,Andy,Phinix,Henry
