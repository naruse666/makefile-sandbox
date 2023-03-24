# makefile-sandbox
# 基礎
targetを省略すると最初に書かれているターゲットが実行される。
```make [target]```

### `.PHONY`
以下のように`.PHONY`を指定することで`clean`ファイル等が存在した場合でもちゃんと実行される。
```
.PHONY: clean
clean:
      rm -f hoge.o
```

### `.DEFAULT_GOAL`
`make`のみで実行した場合に設定されているターゲットを実行する。
```
#Makefile
.DEFAULT_GOAL: hello
all:
	hoge

hello:
	echo "hello"
```

### サフィックスルール
`.o`のファイルは`.c`から変えたファイルに依存しているという意味。
```
#Makefile
.o.c:
	gcc -c $<
```

### @について
```
#Makefile
target:
	@pwd # 実行時プロンプトに出ない
	pwd  # 実行時プロンプトに出る
```


# 記法
### 依存関係
```
#Makefile
target: [depends]
	gcc hoge.c
```
### マクロ
```
#Makefile
FOO = bar

hoge:
	echo $(FOO)
```
全部ではないが簡単に。
```
$@ : ターゲット名
$< : 依存ファイルの先頭のファイル
$^ : 依存ファイルのリスト
```
