local HttpService = game:GetService("HttpService")
local URL = "https://raw.githubusercontent.com/jippeg/HttpService-Test/master/external/test.json"

local response = HttpService:GetAsync(URL)

local data = HttpService:JSONDecode(response)

if data.message == "success" then
    for i, v in pairs(data.data) do
        print(i, v)
    end
end