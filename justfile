_list:
    @just --list

[private]
non_linux_all_features_list := ```
    echo '[{"name":"JSON", "good":true}, {"name":"XML", "good":false}]' | jq '.[1]'
```

all_crate_features := if os() == "linux" {
    "--all-features"
} else {
    "--features='" + non_linux_all_features_list + "'"
}

test toolchain="":
    echo {{ toolchain }}
    echo {{ all_crate_features }}

what-shell:
    @echo "The command used to launch this shell is: {{ just }}"
    @echo "The default shell set in the Justfile is determined by 'set shell'"
    # 这会调用 shell 来执行 ‘echo $0’，从而显示自己
    echo "But the actual shell process running this recipe is: $0"
