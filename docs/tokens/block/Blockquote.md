# Blockquote

| 項目   | 値                                                                                                             |
| ------ | -------------------------------------------------------------------------------------------------------------- |
| 子要素 | code, delete, emphasis, horizontal line, image, link, strong, blockquote, bullet list, ordered list, paragraph |

## 終端判定

-   最後の`> `から一行以上空行があった場合

## 例

### 書式例1

**入力**

```
> hoge
> piyo
```

**出力**

```html
<blockquote>
hoge
piyo
</blockquote>
```

### 書式例2

**入力**

```
> hoge
piyo

aaaa
```

**出力**

```html
<blockquote>
hoge
piyo
</blockquote>

<p>aaaa</p>
```
