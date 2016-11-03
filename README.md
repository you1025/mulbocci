# フィボナッチ数列
通常のフィボナッチ数列 {0, 1, 1, 2, 3...}

* Fib::at(n)
* Fib::at2(n)

## 再帰版 Fib::at
教科書通りだけどとても遅い

```ruby
# 1番目の値
Fib.at 1  # 0

# 2番目の値
Fib.at 2  # 1

# n番目の値
Fib.at n

# 自然数でないときは例外が発生
Fib.at 0    # RuntimeError: invalid index: argument must be a natural number
Fib.at -1   # RuntimeError: invalid index: argument must be a natural number
Fib.at 1.0  # RuntimeError: invalid index: argument must be a natural number
```

## 再帰じゃない版 Fib::at2
再帰だと遅いので改良してみた

```ruby
# 1番目の値
Fib.at2 1

# 2番目の値
Fib.at2 2

# n番目の値
Fib.at2 n
```

# 3項フィボナッチ数列
3項によるフィボナッチ数列の拡張版 {0, 0, 1, 1, 2, 4...}
* Tri::at(n)

```ruby
# 1番目の値
Tri.at 1

# 2番目の値
Tri.at 2

# n番目の値
Tri.at n

# 自然数でないときは例外が発生
Tri.at 0    # RuntimeError: invalid index: argument must be a natural number
Tri.at -1   # RuntimeError: invalid index: argument must be a natural number
Tri.at 1.0  # RuntimeError: invalid index: argument must be a natural number
```

# Mulbocci
N 項による拡張フィボナッチ数列  
N+1 項間の漸化式

* Mulbocci::new(initials): 数列の初期値となる配列を引数に指定(デフォルトは [0, 1])
* Mulbocci::new_with_size(size): 数列のサイズを引数に指定(デフォルトは2)

## 初期値の配列を指定する方法

```ruby
# フィボナッチ数列
fib = Mulbocci.new            # Mulbocci.new([0, 1]) と同じ
fib.size                      # 2
fib.initials                  # [0, 1]
fib.at 10                     # 34

# 3項フィボナッチ数列 その１
tri = Mulbocci.new [0, 0, 1]  # 初期値を指定
tri.size                      # 3
tri.initials                  # [0, 0, 1]
tri.at 10                     # 44

# 3項フィボナッチ数列 その２
tri2 = Mulbocci.new [1, 2, 3] # 初期値を指定
tri2.size                     # 3
tri2.initials                 # [1, 2, 3]
tri2.at 10                    # 230
```

## サイズを指定する方法

初期値 initials は下記に従って自動で設定される
* initials[0] 〜 initials[N-2]: 0
* initials[N-1]: 1

```ruby
# フィボナッチ数列
fib = Mulbocci.new_with_size    # Mulbocci.new_with_size(2) と同じ
fib.size                        # 2
fib.initials                    # [0, 1]
fib.at 10                       # 34

# 3項フィボナッチ数列
tri = Mulbocci.new_with_size 3
tri.size                        # 3
tri.initials                    # [0, 0, 1]
tri.at 10                       # 44

# 4項フィボナッチ数列
Mulbocci.new_with_size(4).at 10 # 29

# 5項フィボナッチ数列
Mulbocci.new_with_size(5).at 10 # 16
```

# テスト
test/unit と rspec で書いてみた

```ruby
# fib
$ bundle exec ruby fib_test.rb

# tri
$ bundle exec ruby tri_test.rb

# mulbocci
$ bundle exec ruby mulbocci_test.rb
$ bundle exec rspec mulbocci_spqc.rb
```
