-- ใส่ key ของคุณตรงนี้
if not script_key then
	warn("❌ กรุณาใส่ script_key ก่อนรันสคริปต์นี้")
	return
end

-- ดึง Key ที่ถูกต้องจาก Pastebin
local correctKey = game:HttpGet("https://pastebin.com/raw/cqUf9H1F") -- เปลี่ยนลิงก์นี้

-- ดึง HWID จากผู้ใช้ (ClientId)
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

-- ดึง HWID ที่ได้รับอนุญาตจาก Pastebin
local whitelistedHWIDs = game:HttpGet("https://pastebin.com/raw/C6NbcSDg")

-- แปลง HWID เป็น table
local hwidList = {}
for line in whitelistedHWIDs:gmatch("[^\r\n]+") do
	hwidList[line] = true
end

-- ตรวจสอบ Key และ HWID พร้อมกัน
if script_key == correctKey then
	if hwidList[hwid] then
		print("✅ Key และ HWID ถูกต้อง กำลังโหลด Script จริง...")
		
		-- โหลด script จริง
		print("NIGGA")
	else
		warn("❌ HWID นี้ไม่ได้รับอนุญาต")
	end
else
	warn("❌ Key ไม่ถูกต้อง")
end
