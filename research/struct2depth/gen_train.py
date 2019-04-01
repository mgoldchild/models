from pathlib import Path

result = list(Path("./preprocessing_out").rglob("**/*.png"))
result.sort()

lines = []
for i, o in enumerate(result):
    full_path = str(o.parent.resolve())
    file_name = o.stem
    line = "%s %s" % (full_path, file_name)
    lines.append(line)

with open("train.txt", "w", encoding="utf-8") as f:
    f.write("\n".join(lines))
