import json
import os

# File sách gốc (bạn đã có)
INPUT_FILE = "enchanted_books.json"

# Nơi xuất loot table
OUTPUT_FILE = "/home/huy/.minecraft/saves/SkyAttack/datapacks/CCTK/data/cctk/loot_table/item/enchant_book.json"

def load_books(path=INPUT_FILE):
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)

    entries = []
    for e in data["pools"][0]["entries"]:
        book = e.copy()

        # Mặc định level = 1
        level = 1
        try:
            comp = book["functions"][0]["components"]["minecraft:stored_enchantments"]
            for _, v in comp.items():
                if isinstance(v, int):
                    level = v
                    break
        except Exception:
            pass

        # Gán weight theo level
        if level == 1:
            weight = 8
        elif level == 2:
            weight = 5
        elif level == 3:
            weight = 3
        elif level == 4:
            weight = 2
        else:  # level 5+
            weight = 1

        book["weight"] = weight
        entries.append(book)

    return entries

def main():
    entries = load_books(INPUT_FILE)
    loot_table = {
        "pools": [
            {
                "rolls": 1,
                "entries": entries
            }
        ]
    }

    os.makedirs(os.path.dirname(OUTPUT_FILE), exist_ok=True)
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(loot_table, f, indent=2, ensure_ascii=False)

    print(f"✅ Đã tạo loot table riêng cho sách enchant: {OUTPUT_FILE}")
    print(f"   Tổng cộng {len(entries)} sách.")

if __name__ == "__main__":
    main()
