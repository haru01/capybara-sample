# language: ja

フィーチャ: Postsを見たい

  シナリオ: Postを１件登録して一覧表示
    前提 Postを登録 (名前 "名前A", タイトル "今日の晩飯", 内容 "晩飯は野菜カレー。辛かった。")
    かつ Postを登録 (名前 "名前B", タイトル "今日の朝飯", 内容 "朝飯たべたっけ？")
    もし Postsにアクセスしている
    ならば 「Listing posts」が表示されること
    かつ 登録されたPostが一覧に表示されること(名前 "名前A", タイトル "今日の晩飯")
    かつ 登録されたPostが一覧に表示されること(名前 "名前B", タイトル "今日の朝飯")
