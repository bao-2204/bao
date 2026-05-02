-- Script Path: game:GetService("ReplicatedStorage").Modules.WeaponClassification
-- Took 0s to decompile.
-- Executor: Ronix (1.3.8.0)

local v_u_12 = {
    ["Tools"] = {
        ["Combat"] = "Melee",
        ["Fists"] = "Melee",
        ["Brass Knuckles"] = "Melee",
        ["Fighting Style"] = "Melee",
        ["Gauntlets"] = "Melee",
        ["Dragon Gauntlets"] = "Melee",
        ["Gojo"] = "Melee",
        ["Sukuna"] = "Melee",
        ["Qin Shi"] = "Melee",
        ["Yuji"] = "Melee",
        ["Alucard"] = "Melee",
        ["StrongestOfToday"] = "Melee",
        ["Strongest Of Today"] = "Melee",
        ["StrongestInHistory"] = "Melee",
        ["Strongest In History"] = "Melee",
        ["Sword"] = "Sword",
        ["Katana"] = "Sword",
        ["KatanaSword"] = "Sword",
        ["Cutlass"] = "Sword",
        ["Longsword"] = "Sword",
        ["Dual Katana"] = "Sword",
        ["Dark Blade"] = "Sword",
        ["Saber"] = "Sword",
        ["Jinwoo"] = "Sword",
        ["Ragna"] = "Sword",
        ["Aizen"] = "Sword",
        ["Shadow"] = "Sword",
        ["Ichigo"] = "Sword",
        ["Rimuru"] = "Sword",
        ["Madoka"] = "Melee",
        ["Gilgamesh"] = "Melee",
        ["Anos"] = "Melee",
        ["ShadowMonarch"] = "Sword",
        ["Shadow Monarch"] = "Sword",
        ["Escanor"] = "Sword",
        ["TrueAizen"] = "Sword",
        ["True Aizen"] = "Sword",
        ["Yamato"] = "Sword",
        ["BlessedMaiden"] = "Melee",
        ["Blessed Maiden"] = "Melee",
        ["SaberAlter"] = "Melee",
        ["Saber Alter"] = "Melee",
        ["Gryphon"] = "Sword",
        ["Atomic"] = "Sword",
        ["AbyssalEmpress"] = "Sword",
        ["Abyssal Empress"] = "Sword",
        ["StrongestShinobi"] = "Melee",
        ["Strongest Shinobi"] = "Melee",
        ["MoonSlayer"] = "Melee",
        ["Moon Slayer"] = "Melee",
        ["CosmicBeing"] = "Melee",
        ["Cosmic Being"] = "Melee",
        ["IceQueen"] = "Sword",
        ["Ice Queen"] = "Sword",
        ["GreatMage"] = "Sword",
        ["Great Mage"] = "Sword",
        ["TheWorld"] = "Melee",
        ["The World"] = "Melee",
        ["DragonGoddess"] = "Sword",
        ["Dragon Goddess"] = "Sword",
        ["AntiMagic"] = "Sword",
        ["Anti Magic"] = "Sword",
        ["Flame"] = "Power",
        ["Flame Fruit"] = "Power",
        ["Ice"] = "Power",
        ["Ice Fruit"] = "Power",
        ["Light"] = "Power",
        ["Light Fruit"] = "Power",
        ["Dark"] = "Power",
        ["Dark Fruit"] = "Power",
        ["Magma"] = "Power",
        ["Magma Fruit"] = "Power",
        ["Quake"] = "Power",
        ["Quake Fruit"] = "Power",
        ["Invisible"] = "Power",
        ["Invisible Fruit"] = "Power",
        ["Bomb"] = "Power",
        ["Bomb Fruit"] = "Power",
        ["Dragon Fruit"] = "Power",
        ["Bandana"] = "Accessory",
        ["Cape"] = "Accessory",
        ["Crown"] = "Accessory",
        ["Halo"] = "Accessory"
    },
    ["Abilities"] = {
        ["GroundSmash"] = "Melee",
        ["Uppercut"] = "Melee",
        ["RapidPunch"] = "Melee",
        ["SwordSlash"] = "Sword",
        ["KatanaSlash"] = "Sword",
        ["AirSlash"] = "Sword",
        ["SpinSlash"] = "Sword",
        ["Fireball"] = "Power",
        ["IceSpike"] = "Power",
        ["Lightning"] = "Power"
    },
    ["GetToolStatType"] = function(self, p1)
        -- upvalues: (copy) v_u_12
        return self.Tools[p1] or "Melee"
    end,
    ["GetAbilityStatType"] = function(self, p2)
        -- upvalues: (copy) v_u_12
        return self.Abilities[p2] or "Melee"
    end,
    ["IsAccessory"] = function(self, p3)
        -- upvalues: (copy) v_u_12
        return self.Tools[p3] == "Accessory"
    end,
    ["GetStatDamageBonus"] = function(p4, p5)
        return not _G.GetPlayerStat and 0 or _G.GetPlayerStat(p4, p5) * 10
    end,
    ["CalculateDamageWithStats"] = function(self, p6, p7, p8, p9)
        -- upvalues: (copy) v_u_12
        local v10
        if p9 then
            v10 = self.GetAbilityStatType(p8)
        else
            v10 = self.GetToolStatType(p8)
        end
        if v10 == "Accessory" then
            return p7, 0, v10
        end
        local v11 = self.GetStatDamageBonus(p6, v10)
        return p7 + v11, v11, v10
    end
}
return v_u_12
