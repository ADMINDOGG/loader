local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
print("HWID ของคุณคือ:", hwid)

local validHWID = "2cc3efb5-6645-452d-b8ab-68ca78e459b0"
local validKey = "XK39-FJ28-ZLQ1"

if script_key == validKey and hwid == validHWID then
    print("DONE")
else
    warn("Key หรือ HWID ไม่ถูกต้อง")
end
