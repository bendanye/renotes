# Useful Bash syntax

## Get line number in a file

```shell
rep -Fn "pattern" file.log | cut -d: -f1
```

## Get total lines in a file without space

```shell
wc -l < file.log | sed -e 's/^[[:space:]]*//'
```

## Get lines not equal

```shell
cat file.log | awk '!/pattern/'
```