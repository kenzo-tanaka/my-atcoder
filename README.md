[AtCoderの問題を分類しました - Qiita](https://qiita.com/KoyanagiHitoshi/items/32dc42d8c5ee75339e54)を参考にAtcoderの問題を解きながら、Pythonの文法を学んだりする。

- [B - Two Anagrams](https://atcoder.jp/contests/abc082/tasks/abc082_b)

## Python文法

[15 Extended Slices](https://docs.python.org/2.3/whatsnew/section-slices.html)

> Negative values also work to make a copy of the same list in reverse order:

```py
s = 'aaaeee'
print(s[::-1])
# -> eeeaaa
```

`lambda`: 無名関数

[Pythonのlambda（ラムダ）式の書き方と使い方まとめ | HEADBOOST](https://www.headboost.jp/python-lambda/)

```py
# lambda 引数1, 引数2, ..., 引数n : 式
square = lambda n : n**2
```


`for`文で辞書を定義:

```py
submissions = {i + 1: '' for i in range(3)}
# {1: '', 2: '', 3: ''}
```
