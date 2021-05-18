#!/bin/bash
function brew-clean {
    file_count=0
    link_count=0
    incomplete_count=0

    for cask_link in $(find $HOME/Library/Caches/Homebrew/Cask -type l); do
        let link_count++
        rm $link
    done

    for link in $(find $HOME/Library/Caches/Homebrew -type l); do
        let link_count++
        rm $link
    done

    let incomplete_count=$(ls -l $HOME/Library/Caches/Homebrew/downloads/*.incomplete | wc -l)

    rm $HOME/Library/Caches/Homebrew/downloads/*.incomplete

    plural() {
        if [ $1 -gt 1 ]; then
            echo "$1 $2s"
        else
            echo "$1 $2"
        fi
    }

    echo "Pruned $(plural $link_count "symbolic link"), $(plural $file_count "file") and $(plural $incomplete_count "incomplete download") from $HOME/Library/Caches/Homebrew"

    echo 'Running `brew cleanup`'
    brew cleanup
}
