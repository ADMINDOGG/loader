-- ⚙️ โหลดค่าคีย์จากตัวแปรภายนอก (ผู้ใช้ต้องมี script_key = "..."; ไว้ก่อน)
local key = _G.script_key or script_key
if not key then
	warn("❌ ไม่พบตัวแปร script_key")
	return
end

-- 🎯 ดึง HWID ของผู้เล่น
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

-- 🌐 ดึงข้อมูลจาก Pastebin (Key:HWID)
local success, data = pcall(function()
	return game:HttpGet("https://pastebin.com/raw/JR3CMRg7")
end)

if not success then
	warn("❌ ดึงข้อมูลคีย์ไม่ได้: " .. tostring(data))
	return
end

-- 🔍 แปลงข้อมูลเป็นตาราง key -> hwid
local validKeys = {}
for line in data:gmatch("[^\r\n]+") do
	local k, v = line:match("([^:]+):(.+)")
	if k and v then
		validKeys[k] = v
	end
end

-- ✅ ตรวจสอบว่า key นี้ตรงกับ HWID หรือไม่
if validKeys[key] == hwid then
	print("✅ Key และ HWID ถูกต้อง กำลังโหลดสคริปต์จริง...")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ADMINDOGG/loader/refs/heads/main/YA%20%3A%5C"))()
else
	warn("❌ Key หรือ HWID ไม่ถูกต้อง")
end
