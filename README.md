# notion 定期自动备份到 google drive

## 简介

利用 notion API 的 export 功能，将 workspace 内容定期保存为 zip 文件，并上传到 google drive 备份。

在 [notion-up](https://github.com/kaedea/notion-up) 的项目基础上，衔接 [gdrive](https://github.com/glotlabs/gdrive) 项目。

database 和图片有些问题，文本类尚可。

目前只是备份，没有做 diff 分析，应该也不太需要，我自己的 notion 结构太复杂，没什么分析必要。

### 从零开始的 pipline

```mermaid
flowchart LR
    A0[[浏览器按F12 在Applications的Cookies中]] --> A
    A[(Notion token_v2)] --> A1(修改 '.config_file.json')
    B(gdrive 下载解压) --> B1>gdrive 账户授权] --> B2(google drive 文件夹ID) -->B3(修改 pipline.sh 中 GFOLDID)
    C(python 虚拟环境) --> C1[/执行 create_python_env_in_new_machine.sh/]
    A1 & B3 & C1 --> D[/执行 pipline.sh/]

    style A0 fill:#ecdfb6

```

## 日常维护

notion_v2 每**三个月**失效，需要再次获取

### 依赖

- notion API（可能会变动）
- google OAuth 客户端

## 贡献

- notion-up - [https://github.com/kaedea/notion-up](https://github.com/kaedea/notion-up)
- gdrive 3.x -[https://github.com/glotlabs/gdrive](https://github.com/glotlabs/gdrive)
