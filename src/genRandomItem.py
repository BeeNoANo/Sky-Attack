import json
import random

# Danh sách item cơ bản
blocks = [
    "oak_planks", "stone", "cobblestone", "sandstone", "dirt",
    "crafting_table", "anvil", "furnace", "blast_furnace",
    "grindstone", "smithing_table", "cartography_table",
    "enchanting_table", "barrel", "chest", "lapis_block"
]

weapons_0 = [
    "wooden_sword", "stone_sword",
    "bow", "crossbow", "trident", "wooden_axe", "stone_axe"
]

weapons_1 = [
     "iron_sword", "diamond_sword",
     "iron_axe", "diamond_axe"
]

weapons_2 = [
    "netherite_sword", "netherite_axe", "mace"
]

tools = [
    "wooden_pickaxe", "stone_pickaxe", "iron_pickaxe", "diamond_pickaxe", "netherite_pickaxe",
    "wooden_shovel", "stone_shovel", "iron_shovel", "diamond_shovel", "netherite_shovel",
    "wooden_hoe", "stone_hoe", "iron_hoe", "diamond_hoe", "netherite_hoe",
    "shears", "flint_and_steel"
]

armors_0 = [
    "leather_helmet", "chainmail_helmet", "iron_helmet",
    "leather_chestplate", "chainmail_chestplate", "iron_chestplate",
    "leather_leggings", "chainmail_leggings", "iron_leggings",
    "leather_boots", "chainmail_boots", "iron_boots"
]

armors_1 = [
    "diamond_helmet", "netherite_helmet",
    "diamond_chestplate", "netherite_chestplate",
    "diamond_leggings", "netherite_leggings",
    "diamond_boots", "netherite_boots"
]

misc_0 = [
    "tnt", "water_bucket", "lava_bucket",
    "shield", "totem_of_undying", "arrow", "spectral_arrow",
    "snowball", "egg", "potion", "experience_bottle", "fishing_rod"
]

misc_1 = [
    "ender_pearl", "golden_apple", "wind_charge"
]



def make_entry(name, ench_count=0, weight=1):
    entry = {
        "type": "minecraft:item",
        "name": f"minecraft:{name}",
        "weight": weight
    }
    # if ench_count > 0:
    #     entry["functions"] = [{
    #         "function": "minecraft:enchant_with_levels",
    #         "levels": random.randint(5, 30),
    #         "treasure": True
    #     }]
    return entry

entries = []

# Thêm block
for b in blocks:
    entries.append(make_entry(b,weight=25))

# Thêm weapons + enchant
for w in weapons_0:
    entries.append(make_entry(w,weight=10))
    entries.append(make_entry(w, ench_count=1, weight=8))
    entries.append(make_entry(w, ench_count=2, weight=5))
    entries.append(make_entry(w, ench_count=3, weight=2))

for w in weapons_1:
    entries.append(make_entry(w,weight=5))
    entries.append(make_entry(w, ench_count=1, weight=3))
    entries.append(make_entry(w, ench_count=2, weight=2))
    entries.append(make_entry(w, ench_count=3, weight=1))

for w in weapons_2:
    entries.append(make_entry(w,weight=1))
    entries.append(make_entry(w, ench_count=1))
    entries.append(make_entry(w, ench_count=2))
    entries.append(make_entry(w, ench_count=3))

# Thêm tools + enchant
for t in tools:
    entries.append(make_entry(t, weight=10))
    entries.append(make_entry(t, ench_count=1, weight=10))
    entries.append(make_entry(t, ench_count=2, weight=2))

# Thêm armor + enchant
for a in armors_0:
    entries.append(make_entry(a,weight=10))
    entries.append(make_entry(a, ench_count=1,weight=8))
    entries.append(make_entry(a, ench_count=2,weight=4))
    entries.append(make_entry(a, ench_count=3,weight=2))

for a in armors_1:
    entries.append(make_entry(a,weight=5))
    entries.append(make_entry(a, ench_count=1, weight=3))
    entries.append(make_entry(a, ench_count=2, weight=2))
    entries.append(make_entry(a, ench_count=3, weight=1))
# Thêm misc
for m in misc_0:
    entries.append(make_entry(m,weight=10))

for m in misc_1:
    entries.append(make_entry(name=m))

# Tạo loot table
loot_table = {
    "pools": [
        {
            "rolls": 1,
            "entries": entries
        }
    ]
}

# Xuất file JSON
with open("/home/huy/.minecraft/saves/SkyAttack/datapacks/CCTK/data/cctk/loot_table/item/random_items.json", "w") as f:
    json.dump(loot_table, f, indent=2)

print("✅ Đã tạo random_items.json với", len(entries), "item entries")
