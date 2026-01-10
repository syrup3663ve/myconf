#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")/dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup/$(date +%Y%m%d_%H%M%S)"

# 色付き出力
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

backup_and_link() {
    local src="$1"
    local dest="$2"

    # 親ディレクトリを作成
    mkdir -p "$(dirname "$dest")"

    # 既存ファイル/リンクの処理
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        if [ -L "$dest" ] && [ "$(readlink -f "$dest")" = "$(readlink -f "$src")" ]; then
            info "既にリンク済み: $dest"
            return 0
        fi
        mkdir -p "$BACKUP_DIR"
        warn "バックアップ: $dest -> $BACKUP_DIR/"
        mv "$dest" "$BACKUP_DIR/"
    fi

    ln -s "$src" "$dest"
    info "リンク作成: $dest -> $src"
}

main() {
    info "dotfilesのインストールを開始します..."
    info "dotfilesディレクトリ: $DOTFILES_DIR"

    # .bashrc
    if [ -f "$DOTFILES_DIR/.bashrc" ]; then
        backup_and_link "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
    fi

    # .config 以下のディレクトリ
    if [ -d "$DOTFILES_DIR/.config" ]; then
        for config_dir in "$DOTFILES_DIR/.config"/*/; do
            if [ -d "$config_dir" ]; then
                dir_name=$(basename "$config_dir")
                backup_and_link "$config_dir" "$HOME/.config/$dir_name"
            fi
        done
    fi

    info "インストール完了!"

    if [ -d "$BACKUP_DIR" ]; then
        warn "バックアップは $BACKUP_DIR に保存されました"
    fi
}

main "$@"
