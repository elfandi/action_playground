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
