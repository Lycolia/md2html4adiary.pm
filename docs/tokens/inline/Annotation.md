# Annotation

| 項目   | 値                                          |
| ------ | ------------------------------------------- |
| 子要素 | code, delete, emphasis, image, link, strong |

## 例

**入力**

```
ほげ[^1]

[^1]: ぴよ
```

**出力**

該当行に

```
ほげ<a href="#1" id="ref-1">^1</a>
```

ページの末端に

```html
<ul>
  <li id="^1">1: ぴよ <a href="#ref-1">^</a></li>
</ul>
```
