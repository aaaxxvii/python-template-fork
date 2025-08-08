# python-template

Pythonプロジェクト用のテンプレートリポジトリ

## ファイル構成

```
.
├── .github
│   └── workflows
│       ├── claude-review.yml
│       ├── ruff.yml
│       └── type-check.yml
├── src
│   ├── __init__.py
│   └── sample.py
├── tests
│   ├── __init__.py
│   └── test_sample.py
├── .gitignore
├── .pre-commit-config.yaml
├── Makefile
├── README.md
├── pyproject.toml
└── uv.lock
```

## Setup

1. [Installation | uv](https://docs.astral.sh/uv/getting-started/installation/) を参考にして、 `uv` コマンドをインストールする

```bash
# macOS and Linux
curl -LsSf https://astral.sh/uv/install.sh | less
```

2. 依存関係のインストール

```bash
uv sync
```

3. pre-commitの設定

```bash
uv run pre-commit install
```

4. Claude Code用に API Key を設定する

- 以下のコマンドを実行すると `~/.claude/settings.json` に Claude API Key が設定されます。
- **すでに設定されている場合は上書きされます。**

```bash
make setup-claude-api-key
```

```diff
- "env": {
-   "ANTHROPIC_API_KEY": "sk-ant-api03-...-...-..."
- }
+ "env": {
+   "ANTHROPIC_API_KEY": "sk-ant-api03-...-...-..."
+ }
```

## Pull Request で Claude によるコードレビューを実行する

- Pull Request 内で @claude とメンションするとレビューが実行されます。

> \[!IMPORTANT\]
>
> - AnthropicのAPIキーが必要です。GitHub Secretsに `ANTHROPIC_API_KEY` を設定してください。
> - [GitHub App](https://github.com/organizations/athenatech-jp/settings/installations/68033881)ページで、リポジトリアクセスを許可してください。
