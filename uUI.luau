--[[
███████╗██╗   ██╗██╗██╗         █████╗ ██╗  ██╗███████╗
██╔════╝██║   ██║██║██║        ██╔══██╗╚██╗██╔╝██╔════╝
█████╗  ██║   ██║██║██║        ███████║ ╚███╔╝ █████╗
██╔══╝  ╚██╗ ██╔╝██║██║        ██╔══██║ ██╔██╗ ██╔══╝
███████╗ ╚████╔╝ ██║███████╗   ██║  ██║██╔╝ ██╗███████╗
╚══════╝  ╚═══╝  ╚═╝╚══════╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

        STUDIOS V2 OBFUSCATOR By MAX
        https://eaxe.net

        Sponsored by
        https://BloxDen.com
--]]

game:GetService("MarketplaceService");
local Z = game:GetService("UserInputService");
local X = game:GetService("TweenService");
local G = game:GetService("HttpService");
local V = game:GetService("RunService");
local r = game:GetService("CoreGui");
local m = (game:GetService("Players")).LocalPlayer;
m:GetMouse();
local o = {
		Themes = { BlackWhite = {
				["Color Hub 1"] = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(.5, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) }),
				["Color Hub 2"] = Color3.fromRGB(10, 10, 10),
				["Color Stroke"] = Color3.fromRGB(255, 255, 255),
				["Color Theme"] = Color3.fromRGB(255, 255, 255),
				["Color Text"] = Color3.fromRGB(255, 255, 255),
				["Color Dark Text"] = Color3.fromRGB(190, 190, 190),
			} },
		Info = { Version = "1.1.0" },
		Save = { UISize = { 500, 280 }, TabSize = 160, Theme = "BlackWhite" },
		Settings = {},
		Connection = {},
		Instances = {},
		Elements = {},
		Options = {},
		Flags = {},
		Tabs = {},
		Icons = (loadstring(game:HttpGet("https://pastebin.com/raw/EnEUH9b2")))(),
	};
local N = workspace.CurrentCamera.ViewportSize;
local k = N.Y / 450;
local a = o.Settings;
local i = o.Flags;
local function p(Z)
	return string.format("#%02X%02X%02X", math.floor(Z.R * 255), math.floor(Z.G * 255), math.floor(Z.B * 255));
end;
local function R(Z)
	Z = Z:gsub("#", "");
	if #Z == 6 then
		local X = tonumber(Z:sub(1, 2), 16);
		local G = tonumber(Z:sub(3, 4), 16);
		local V = tonumber(Z:sub(5, 6), 16);
		if X and (G and V) then
			return Color3.fromRGB(X, G, V);
		end;
	end;
	return nil;
end;
local function u(Z, X)
	table.insert(o.Instances, { Instance = Z, Type = X });
	return Z;
end;
local function K(Z, X)
	if X then
		table.foreach(X, function(X, G)
			G.Parent = Z;
		end);
	end;
	return Z;
end;
local function s(Z, X)
	if X then
		table.foreach(X, function(X, G)
			Z[X] = G;
		end);
	end;
	return Z;
end;
local function n(...)
	local Z = { ... };
	if type(Z) == "table" then
		local X = Instance.new(Z[1]);
		if type(Z[2]) ~= "table" then
			if typeof(Z[2]) == "Instance" then
				X.Parent = Z[2];
				s(X, Z[3]);
				K(X, Z[4]);
				local G = Z[4];
			end;
		else
			s(X, Z[2]);
			K(X, Z[3]);
			local G = Z[3];
		end;
		return X;
	end;
end;
local e = "bruton_lib-Notification";
local t = "NotifContainer";
local j = "brutonNotif_lib";
local l = 70;
function o.CreateNotification(Z, G)
	local m = G.Title or "Notification";
	local o = G.Content or "";
	local N = G.Icon or "rbxassetid://10709775560";
	local k = G.Callback or function()
 
		end;
	local a = G.Duration or 5;
	local i = r:FindFirstChild(e);
	if i then
		i.DisplayOrder = 999;
	else
		i = Instance.new("ScreenGui");
		i.Name = e;
		i.ResetOnSpawn = false;
		i.DisplayOrder = 999;
		i.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		i.Parent = r;
		local Z = Instance.new("Frame");
		Z.Name = t;
		Z.Size = UDim2.new(0, 240, 1, 0);
		Z.Position = UDim2.new(1, -260, .05, 0);
		Z.BackgroundTransparency = 1;
		Z.Parent = i;
	end;
	local p = i[t];
	local function R()
		local Z = p;
		local G, V, r = ipairs(Z:GetChildren());
		local m = 0;
		while true do
			local Z;
			r, Z = G(V, r);
			if r == nil then
				break;
			end;
			if Z.Name == j then
				m = m + 1;
				local G = X;
				local V = { Position = UDim2.new(0, 0, 0, ((m - 1)) * l) };
				(G:Create(Z, TweenInfo.new(.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), V)):Play();
			end;
		end;
	end;
	local u = Instance.new("Frame");
	u.Name = j;
	u.Size = UDim2.new(0, 220, 0, 60);
	u.Position = UDim2.new(1, 0, 0, 0);
	u.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	u.BorderSizePixel = 0;
	u.ClipsDescendants = true;
	local K = Instance.new("UICorner");
	K.CornerRadius = UDim.new(0, 8);
	K.Parent = u;
	local s = Instance.new("UIGradient");
	s.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 128, 255)), ColorSequenceKeypoint.new(.5, Color3.fromRGB(102, 0, 204)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 128)) });
	s.Rotation = 45;
	s.Parent = u;
	local n = Instance.new("UIStroke");
	n.Color = Color3.fromRGB(255, 255, 255);
	n.Thickness = 1;
	n.Transparency = .7;
	n.Parent = u;
	local O = Instance.new("ImageLabel");
	O.Size = UDim2.new(0, 20, 0, 20);
	O.Position = UDim2.new(0, 8, 0, 20);
	O.BackgroundTransparency = 1;
	O.Image = N;
	O.Parent = u;
	local v = Instance.new("TextLabel");
	v.Size = UDim2.new(1, -50, 0, 16);
	v.Position = UDim2.new(0, 36, 0, 4);
	v.BackgroundTransparency = 1;
	v.Text = m;
	v.Font = Enum.Font.GothamBold;
	v.TextSize = 13;
	v.TextColor3 = Color3.fromRGB(255, 255, 255);
	v.TextXAlignment = Enum.TextXAlignment.Left;
	v.TextWrapped = true;
	v.Parent = u;
	local I = Instance.new("TextLabel");
	I.Size = UDim2.new(1, -50, 0, 28);
	I.Position = UDim2.new(0, 36, 0, 22);
	I.BackgroundTransparency = 1;
	I.Text = o;
	I.Font = Enum.Font.Gotham;
	I.TextSize = 12;
	I.TextColor3 = Color3.fromRGB(255, 255, 255);
	I.TextWrapped = true;
	I.TextXAlignment = Enum.TextXAlignment.Left;
	I.TextYAlignment = Enum.TextYAlignment.Top;
	I.Parent = u;
	local Q = Instance.new("TextButton");
	Q.Size = UDim2.new(0, 18, 0, 18);
	Q.Position = UDim2.new(1, -24, 0, 4);
	Q.BackgroundTransparency = 1;
	Q.Text = "X";
	Q.Font = Enum.Font.GothamBold;
	Q.TextSize = 14;
	Q.TextColor3 = Color3.fromRGB(255, 150, 150);
	Q.Parent = u;
	local S = Instance.new("Frame");
	S.Size = UDim2.new(1, -6, 0, 3);
	S.Position = UDim2.new(0, 3, 1, -6);
	S.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	S.BackgroundTransparency = .35;
	S.BorderSizePixel = 0;
	S.Parent = u;
	local d = Instance.new("UICorner");
	d.CornerRadius = UDim.new(0, 2);
	d.Parent = S;
	u.Parent = p;
	R();
	Q.MouseButton1Click:Connect(function()
		(X:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Position = UDim2.new(1, 0, u.Position.Y.Scale, u.Position.Y.Offset) })):Play();
		task.wait(.4);
		u:Destroy();
		R();
		k();
	end);
	task.spawn(function()
		local Z = tick();
		while tick() - Z < a do
			if not u.Parent then
				return;
			end;
			local X = 1 - ((tick() - Z)) / a;
			S.Size = UDim2.new(X, -6, 0, 3);
			V.RenderStepped:Wait();
		end;
		if u.Parent then
			(X:Create(u, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Position = UDim2.new(1, 0, u.Position.Y.Scale, u.Position.Y.Offset) })):Play();
			task.wait(.4);
			u:Destroy();
			R();
			k();
		end;
	end);
end;
local function O(Z)
	if readfile and ((isfile and isfile(Z))) then
		local X = G:JSONDecode(readfile(Z));
		if type(X) == "table" then
			if rawget(X, "UISize") then
				o.Save.UISize = X.UISize;
			end;
			if rawget(X, "TabSize") then
				o.Save.TabSize = X.TabSize;
			end;
			if rawget(X, "Theme") and VerifyTheme(X.Theme) then
				o.Save.Theme = X.Theme;
			end;
		end;
	end;
end;
pcall(O, "bruton hub with bruton library.json");
local v = {
		InsertCallback = function(Z, X, G)
			if type(G) == "function" then
				table.insert(X, G);
			end;
			return G;
		end,
		FireCallback = function(Z, X, ...)
			local G, V, r = ipairs(X);
			while true do
				local Z;
				r, Z = G(V, r);
				if r == nil then
					break;
				end;
				if type(Z) == "function" then
					task.spawn(Z, ...);
				end;
			end;
		end,
		ToggleVisible = function(Z, X, G)
			if G == nil or not G then
				G = X.Visible;
			end;
			X.Visible = G;
		end,
		ToggleParent = function(Z, X, G)
			if Bool == nil then
				if X.Parent then
					G = false;
				end;
				X.Parent = G;
			else
				X.Parent = Bool;
			end;
		end,
		GetConnectionFunctions = function(Z, X, G)
			return {
				Function = G,
				Connected = true,
				Disconnect = function(Z)
					if Z.Connected then
						table.remove(X, table.find(X, Z.Function));
						Z.Connected = false;
					end;
				end,
				Fire = function(Z, ...)
					if Z.Connected then
						task.spawn(Z.Function, ...);
					end;
				end,
			};
		end,
		GetCallback = function(Z, X, G)
			local V = X[G] or X.Callback or function()
 
				end;
			return type(V) ~= "table" and { V } or { function(Z)
					V[1][V[2]] = Z;
				end };
		end,
	};
local I = {};
local Q = o.Connection;
local function S(Z)
	if type(Z) == "table" then
		local X, G, V = ipairs(Z);
		while true do
			local Z;
			V, Z = X(G, V);
			if V == nil then
				break;
			end;
			local r = {};
			local m = {};
			Q[Z] = m;
			I[Z] = r;
			m.Name = Z;
			function m.Connect(Z, X)
				if type(X) == "function" then
					table.insert(r, X);
					local Z = v.GetConnectionFunctions;
				end;
			end;
			function m.Once(Z, X)
				if type(X) == "function" then
					local Z = nil;
					Z = v:GetConnectionFunctions(r, function(...)
							task.spawn(X, ...);
							Z:Disconnect();
						end);
					return Z;
				end;
			end;
		end;
	end;
end;
function Q.FireConnection(Z, X, ...)
	local G = type(X) == "string" and I[X] or I[X.Name];
	local V, r, m = pairs(G);
	while true do
		local Z;
		m, Z = V(r, m);
		if m == nil then
			break;
		end;
		task.spawn(Z, ...);
	end;
end;
S({
	"FlagsChanged",
	"ThemeChanged",
	"FileSaved",
	"ThemeChanging",
	"OptionAdded",
});
local function d(Z)
	return type(Z) == "string" and i[Z] ~= nil;
end;
local function L(Z)
	local X;
	if type(Z) ~= "string" then
		X = false;
	else
		X = i[Z];
	end;
	return X;
end;
local function Y(Z, X)
	if Z and ((X ~= i[Z] or type(X) == "table")) then
		i[Z] = X;
		Q:FireConnection("FlagsChanged", Z, X);
	end;
end;
local w = nil;
Q.FlagsChanged:Connect(function(Z, X)
	local V = a.ScriptFile;
	if not w and ((V and writefile)) then
		w = true;
		task.wait(.1);
		w = false;
		local Z, X = pcall(function()
				return G:JSONEncode(i);
			end);
		if Z and pcall(writefile, V, X) then
			Q:FireConnection("FileSaved", "Script-Flags", V, X);
		end;
	end;
end);
local C = n("ScreenGui", r, { Name = "bruton hub with bruton library" }, { n("UIScale", { Scale = k, Name = "Scale" }) });
local W = r;
local P = r.FindFirstChild(W, C.Name);
if P and P ~= C then
	P:Destroy();
end;
local function y(Z)
	local X = type(Z) ~= "function";
	return Z;
end;
local function F(X, G)
	X.InputBegan:Connect(function(X)
		if X.UserInputType == Enum.UserInputType.MouseButton1 or X.UserInputType == Enum.UserInputType.Touch then
			while Z:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
				task.wait();
			end;
		end;
		G();
	end);
end;
local function b(Z)
	local G = Z[1] or Z.Instance;
	local V = Z[2] or Z.Prop;
	local r = Z[3] or Z.NewVal;
	local m = Z[4] or (Z.Time or .5);
	local o = Z[5] or (Z.wait or false);
	local N = X:Create(G, TweenInfo.new(m, Enum.EasingStyle.Quint), { [V] = r });
	N:Play();
	if o then
		N.Completed:Wait();
	end;
	return N;
end;
local function x(X)
	task.spawn(function()
		s(X, { Active = true, AutoButtonColor = false });
		local G = nil;
		local r = nil;
		local m = nil;
		local function o(Z)
			local V = Z.Position - G;
			b({
				X,
				"Position",
				UDim2.new(r.X.Scale, r.X.Offset + V.X / k, r.Y.Scale, r.Y.Offset + V.Y / k),
				.35,
			});
		end;
		X.MouseButton1Down:Connect(function()
			m = true;
		end);
		X.InputBegan:Connect(function(N)
			if N.UserInputType == Enum.UserInputType.MouseButton1 or N.UserInputType == Enum.UserInputType.Touch then
				r = X.Position;
				G = N.Position;
				while Z:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					V.Heartbeat:Wait();
					if m then
						o(N);
					end;
				end;
				m = false;
			end;
		end);
	end);
	return X;
end;
local function f(Z)
	local X, G, V = pairs(o.Themes);
	while true do
		local r;
		V, r = X(G, V);
		if V == nil then
			break;
		end;
		if V == Z then
			return true;
		end;
	end;
end;
local function g(Z, X)
	if writefile then
		local V = G:JSONEncode(X);
		writefile(Z, V);
	end;
end;
local h = o.Themes[o.Save.Theme];
local function H(Z, X)
	o.Elements[Z] = X;
end;
local function T(Z, X, G, ...)
	return o.Elements[Z](X, G, ...);
end;
H("Corner", function(Z, X)
	return s(n("UICorner", Z, { CornerRadius = X or UDim.new(0, 15) }), props);
end);
H("Stroke", function(Z, X, ...)
	local G = { ... };
	return u(s(n("UIStroke", Z, { Color = G[1] or h["Color Stroke"], Thickness = G[2] or 1, ApplyStrokeMode = "Border" }), X), "Stroke");
end);
H("Button", function(Z, X, ...)
	local G = { ... };
	local V = u(s(n("TextButton", Z, {
			Text = "",
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = h["Color Hub 2"],
			AutoButtonColor = false,
		}), X), "Frame");
	V.MouseEnter:Connect(function()
		V.BackgroundTransparency = .4;
	end);
	V.MouseLeave:Connect(function()
		V.BackgroundTransparency = 0;
	end);
	if G[1] then
		V.Activated:Connect(G[1]);
	end;
	return V;
end);
H("Gradient", function(Z, X, ...)
	return u(s(n("UIGradient", Z, { Color = h["Color Hub 1"] }), X), "Gradient");
end);
local function D(Z, X, G, V)
	local r = u(n("TextLabel", {
			Font = Enum.Font.GothamMedium,
			TextColor3 = h["Color Text"],
			Size = UDim2.new(1, -20),
			AutomaticSize = "Y",
			Position = UDim2.new(0, 0, .5),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundTransparency = 1,
			TextTruncate = "AtEnd",
			TextSize = 10,
			TextXAlignment = "Left",
			Text = "",
			RichText = true,
		}), "Text");
	local m = u(n("TextLabel", {
			Font = Enum.Font.Gotham,
			TextColor3 = h["Color Dark Text"],
			Size = UDim2.new(1, -20),
			AutomaticSize = "Y",
			Position = UDim2.new(0, 12, 0, 15),
			BackgroundTransparency = 1,
			TextWrapped = true,
			TextSize = 8,
			TextXAlignment = "Left",
			Text = "",
			RichText = true,
		}), "DarkText");
	local o = T("Button", Z, { Size = UDim2.new(1, 0, 0, 25), AutomaticSize = "Y", Name = "Option" });
	T("Corner", o, UDim.new(0, 6));
	local N = n("Frame", o, {
			AutomaticSize = "Y",
			BackgroundTransparency = 1,
			Size = V,
			Position = UDim2.new(0, 10, 0),
			AnchorPoint = Vector2.new(0, 0),
		}, {
			n("UIListLayout", { SortOrder = "LayoutOrder", VerticalAlignment = "Center", Padding = UDim.new(0, 2) }),
			n("UIPadding", { PaddingBottom = UDim.new(0, 5), PaddingTop = UDim.new(0, 5) }),
			r,
			m,
		});
	local k = { SetTitle = function(Z, X)
				if type(X) == "string" and (X:gsub(" ", "")):len() > 0 then
					r.Text = X;
				end;
			end, SetDesc = function(Z, X)
				if type(X) ~= "string" or (X:gsub(" ", "")):len() <= 0 then
					m.Visible = false;
					m.Text = "";
					N.Position = UDim2.new(0, 10, .5);
					N.AnchorPoint = Vector2.new(0, .5);
				else
					m.Visible = true;
					m.Text = X;
					N.Position = UDim2.new(0, 10, 0);
					N.AnchorPoint = Vector2.new(0, 0);
				end;
			end };
	k:SetTitle(X);
	k:SetDesc(G);
	return o, k;
end;
local function E(Z)
	return Z:IsA("Frame") and "BackgroundColor3" or (Z:IsA("ImageLabel") and "ImageColor3" or (Z:IsA("TextLabel") and "TextColor3" or (Z:IsA("ScrollingFrame") and "ScrollBarImageColor3" or (Z:IsA("UIStroke") and "Color" or ""))));
end;
function o.GetIcon(Z, X)
	if X:find("rbxassetid://") or X:len() < 1 then
		return X;
	end;
	local G = ((X:lower()):gsub("lucide", "")):gsub("-", "");
	local V, r, m = pairs(o.Icons);
	while true do
		local Z;
		m, Z = V(r, m);
		if m == nil then
			break;
		end;
		if (m:gsub("lucide", "")):gsub("-", "") == G then
			return Z;
		end;
	end;
	local N, k, a = pairs(o.Icons);
	while true do
		local Z;
		a, Z = N(k, a);
		if a == nil then
			break;
		end;
		if ((a:gsub("lucide", "")):gsub("-", "")):find(G) then
			return Z;
		end;
	end;
	return G;
end;
function o.SetTheme(Z, X)
	if f(X) then
		o.Save.Theme = X;
		g("bruton hub with bruton library.json", o.Save);
		h = o.Themes[X];
		Comnection:FireConnection("ThemeChanged", X);
		table.foreach(o.Instances, function(Z, X)
			if X.Type ~= "Gradient" then
				if X.Type ~= "Frame" then
					if X.Type ~= "Stroke" then
						if X.Type ~= "Theme" then
							if X.Type ~= "Text" then
								if X.Type ~= "DarkText" then
									if X.Type == "ScrollBar" then
										X.Instance[E(X.Instance)] = h["Color Theme"];
									end;
								else
									X.Instance[E(X.Instance)] = h["Color Dark Text"];
								end;
							else
								X.Instance[E(X.Instance)] = h["Color Text"];
							end;
						else
							X.Instance[E(X.Instance)] = h["Color Theme"];
						end;
					else
						X.Instance[E(X.Instance)] = h["Color Stroke"];
					end;
				else
					X.Instance.BackgroundColor3 = h["Color Hub 2"];
				end;
			else
				X.Instance.Color = h["Color Hub 1"];
			end;
		end);
	end;
end;
function o.SetScale(Z, X)
	local G = N.Y / math.clamp(X, 300, 2000);
	C.Scale.Scale = G;
	k = G;
end;
function o.MakeWindow(V, r)
	local N = r[1] or r.Name or (r.Title or "bruton hub with bruton library");
	local i = r[2] or (r.SubTitle or "by : bruton_Team");
	a.ScriptFile = r[3] or (r.SaveFolder or false);
	local e, t = unpack(o.Save.UISize);
	local j = u(n("ImageButton", C, {
			Size = UDim2.fromOffset(e, t),
			Position = UDim2.new(.5, -e / 2, .5, -t / 2),
			BackgroundTransparency = .15,
			Name = "Hub",
		}), "Main");
	T("Gradient", j, { Rotation = 45 });
	u(n("UIStroke", j, {
		Color = h["Color Stroke"],
		Thickness = 1.5,
		ApplyStrokeMode = "Border",
		Transparency = .3,
	}), "Stroke");
	x(j);
	local l = T("Corner", j);
	local O = n("Folder", j, { Name = "Components" });
	local I = n("Folder", C, { Name = "Dropdown" });
	local Q = n("Frame", O, { Size = UDim2.new(1, 0, 0, 28), BackgroundTransparency = 1, Name = "Top Bar" });
	local S = u(n("TextLabel", Q, {
			Position = UDim2.new(0, 15, 0, 5),
			AutomaticSize = "XY",
			Text = N,
			TextXAlignment = "Left",
			TextSize = 12,
			TextColor3 = h["Color Text"],
			BackgroundTransparency = 1,
			Font = Enum.Font.GothamBold,
			Name = "Title",
		}), "Text");
	local w = u(n("TextLabel", Q, {
			Position = UDim2.new(0, 15, 0, S.TextBounds.Y + 7),
			AutomaticSize = "XY",
			Text = i,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			TextXAlignment = "Left",
			TextSize = 8,
			Font = Enum.Font.Gotham,
			Name = "SubTitle",
		}), "DarkText");
	local W = u(n("ScrollingFrame", O, {
			Size = UDim2.new(0, o.Save.TabSize, 1, -Q.Size.Y.Offset),
			ScrollBarImageColor3 = h["Color Theme"],
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			ScrollBarThickness = 1.5,
			BackgroundTransparency = 1,
			ScrollBarImageTransparency = .2,
			CanvasSize = UDim2.new(),
			AutomaticCanvasSize = "Y",
			ScrollingDirection = "Y",
			BorderSizePixel = 0,
			Name = "Tab Scroll",
		}, { n("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10),
			}), n("UIListLayout", { Padding = UDim.new(0, 5) }) }), "ScrollBar");
	local P = n("Frame", O, {
			Size = UDim2.new(1, -W.Size.X.Offset, 1, -Q.Size.Y.Offset),
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Name = "Containers",
		});
	local f = x(n("ImageButton", j, {
			Size = UDim2.new(0, 35, 0, 35),
			Position = j.Size,
			Active = true,
			AnchorPoint = Vector2.new(.8, .8),
			BackgroundTransparency = 1,
			Name = "Control Hub Size",
		}));
	local H = x(n("ImageButton", j, {
			Size = UDim2.new(0, 20, 1, -30),
			Position = UDim2.new(0, W.Size.X.Offset, 1, 0),
			AnchorPoint = Vector2.new(.5, 1),
			Active = true,
			BackgroundTransparency = 1,
			Name = "Control Tab Size",
		}));
	local function E()
		local Z = f.Position;
		local X = H.Position;
		f.Position = UDim2.fromOffset(math.clamp(Z.X.Offset, 430, 1000), math.clamp(Z.Y.Offset, 200, 500));
		H.Position = UDim2.new(0, math.clamp(X.X.Offset, 135, 250), 1, 0);
		W.Size = UDim2.new(0, H.Position.X.Offset, 1, -Q.Size.Y.Offset);
		P.Size = UDim2.new(1, -W.Size.X.Offset, 1, -Q.Size.Y.Offset);
		j.Size = f.Position;
	end;
	local U = f;
	(f.GetPropertyChangedSignal(U, "Position")):Connect(E);
	local M = H;
	(H.GetPropertyChangedSignal(M, "Position")):Connect(E);
	F(f, function()
		if not Minimized then
			o.Save.UISize = { j.Size.X.Offset, j.Size.Y.Offset };
			g("bruton hub with bruton library.json", o.Save);
		end;
	end);
	F(H, function()
		o.Save.TabSize = W.Size.X.Offset;
		g("bruton hub with bruton library.json", o.Save);
	end);
	local c = n("Folder", Q, { Name = "Buttons" });
	local q = n("ImageButton", {
			Size = UDim2.new(0, 14, 0, 14),
			Position = UDim2.new(1, -10, .5),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundTransparency = 1,
			Image = "rbxassetid://10747384394",
			AutoButtonColor = false,
			Name = "Close",
		});
	local J = s(q:Clone(), { Position = UDim2.new(1, -35, .5), Image = "rbxassetid://10734896206", Name = "Minimize" });
	K(c, { q, J });
	local B = nil;
	local A = nil;
	local z = nil;
	local Z5 = {};
	local X5 = false;
	function Z5.CloseBtn(Z)
		Z5:Dialog({ Title = "LOC4T HUB", Text = "Tem certeza de que o script est\195\161 fechado?  ", Options = { { "sim", function()
						C:Destroy();
					end }, { "n\195\163o" } } });
	end;
	function Z5.MinimizeBtn(Z)
		if not z then
			z = true;
			if B then
				J.Image = "rbxassetid://10734896206";
				b({
					j,
					"Size",
					A,
					.25,
					true,
				});
				f.Visible = true;
				H.Visible = true;
				B = false;
			else
				J.Image = "rbxassetid://10734924532";
				A = j.Size;
				f.Visible = false;
				H.Visible = false;
				b({
					j,
					"Size",
					UDim2.fromOffset(j.Size.X.Offset, 28),
					.25,
					true,
				});
				B = true;
			end;
			z = false;
		end;
	end;
	function Z5.Minimize(Z)
		j.Visible = not j.Visible;
	end;
	function Z5.AddMinimizeButton(Z, X)
		local G = x(n("ImageButton", C, {
				Size = UDim2.fromOffset(50, 50),
				Position = UDim2.fromScale(.15, .15),
				BackgroundTransparency = 1,
				BackgroundColor3 = h["Color Hub 2"],
				AutoButtonColor = false,
			}));
		local V = nil;
		local r;
		if X.Corner then
			r = T("Corner", G);
			s(r, X.Corner);
		else
			r = nil;
		end;
		if X.Stroke then
			V = T("Stroke", G);
			s(V, X.Corner);
		end;
		s(G, X.Button);
		G.Activated:Connect(Z5.Minimize);
		return { Stroke = V, Corner = r, Button = G };
	end;
	function Z5.Set(Z, X, G, V, r, m)
		if type(X) == "string" then
			S.Text = X;
		end;
		if type(G) == "string" then
			w.Text = G;
		end;
	end;
	function Z5.Dialog(Z, X)
		if not j:FindFirstChild("Dialog") then
			if B then
				Z5:MinimizeBtn();
			end;
			local Z = X[1] or (X.Title or "Dialog");
			local G = X[2] or (X.Text or "This is a Dialog");
			local V = X[3] or (X.Options or {});
			local r = n("Frame", {
					Active = true,
					Size = UDim2.fromOffset(270, 162),
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
				}, { u(n("TextLabel", {
						Font = Enum.Font.GothamBold,
						Size = UDim2.new(1, 0, 0, 20),
						Text = Z,
						TextXAlignment = "Left",
						TextColor3 = h["Color Text"],
						TextSize = 15,
						Position = UDim2.fromOffset(15, 5),
						BackgroundTransparency = 1,
					}), "Text"), u(n("TextLabel", {
						Font = Enum.Font.GothamMedium,
						Size = UDim2.new(1, -25),
						AutomaticSize = "Y",
						Text = G,
						TextXAlignment = "Left",
						TextColor3 = h["Color Dark Text"],
						TextSize = 12,
						Position = UDim2.fromOffset(15, 25),
						BackgroundTransparency = 1,
						TextWrapped = true,
					}), "DarkText") });
			T("Gradient", r, { Rotation = 270 });
			T("Corner", r);
			local m = n("Frame", r, {
					Size = UDim2.fromScale(1, .35),
					Position = UDim2.fromScale(0, 1),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundColor3 = h["Color Hub 2"],
					BackgroundTransparency = 1,
				}, { n("UIListLayout", {
						Padding = UDim.new(0, 10),
						VerticalAlignment = "Center",
						FillDirection = "Horizontal",
						HorizontalAlignment = "Center",
					}) });
			local o = u(n("Frame", j, {
					BackgroundTransparency = .6,
					Active = true,
					BackgroundColor3 = h["Color Hub 2"],
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = h["Color Stroke"],
					Name = "Dialog",
				}), "Stroke");
			(l:Clone()).Parent = o;
			r.Parent = o;
			b({
				r,
				"Size",
				UDim2.fromOffset(250, 150),
				.2,
			});
			b({
				r,
				"Transparency",
				0,
				.15,
			});
			b({
				o,
				"Transparency",
				.3,
				.15,
			});
			local N = 1;
			local k = { Button = function(Z, X)
						local G = X[1] or X.Name or (X.Title or "");
						local V = X[2] or (X.Callback or function()
 
							end);
						N = N + 1;
						local r = T("Button", m);
						T("Corner", r);
						s(r, {
							Text = G,
							Font = Enum.Font.GothamBold,
							TextColor3 = h["Color Text"],
							TextSize = 12,
						});
						local o = m;
						local k, a, i = pairs(o:GetChildren());
						while true do
							local Z;
							i, Z = k(a, i);
							if i == nil then
								break;
							end;
							if Z:IsA("TextButton") then
								Z.Size = UDim2.new(1 / N, -(((((N - 1)) * 20) / N)), 0, 32);
							end;
						end;
						r.Activated:Connect(dialogApi.Close);
						r.Activated:Connect(V);
					end, Close = function(Z)
						b({
							r,
							"Size",
							UDim2.fromOffset(270, 162),
							.2,
						});
						b({
							o,
							"Transparency",
							1,
							.15,
						});
						b({
							r,
							"Transparency",
							1,
							.15,
							true,
						});
						o:Destroy();
					end };
			table.foreach(V, function(Z, X)
				k:Button(X);
			end);
			return k;
		end;
	end;
	function Z5.SelectTab(Z, X)
		if type(X) ~= "number" then
			local Z, G, V = pairs(o.Tabs);
			while true do
				local r;
				V, r = Z(G, V);
				if V == nil then
					break;
				end;
				if r.Cont == X.Cont then
					r.func:Enable();
				end;
			end;
		else
			o.Tabs[X].func:Enable();
		end;
	end;
	function Z5.LoadTab(Z, X)
		local G, V = pcall(function()
				return game:HttpGet(X);
			end);
		if not G or not V or V == "" then
			o:CreateNotification({ Title = "Load Tab Failed", Content = "Could not reach the provided tab link.", Duration = 6 });
			return nil;
		end;
		local r, m = loadstring(V);
		if not r then
			o:CreateNotification({ Title = "Load Tab Failed", Content = "The remote tab script failed to compile: " .. tostring(m), Duration = 6 });
			return nil;
		end;
		local N, k = pcall(r, Z5, o);
		if not N then
			o:CreateNotification({ Title = "Load Tab Failed", Content = "The remote tab script raised an error while running.", Duration = 6 });
			return nil;
		end;
		return k;
	end;
	function Z5.LoadTabs(Z, X)
		local G = {};
		table.foreach(X, function(Z, X)
			table.insert(G, Z5:LoadTab(X));
		end);
		return G;
	end;
	local G5 = {};
	function Z5.MakeTab(V, r, N)
		if type(r) == "table" then
			N = r;
		end;
		local a = N[1] or (N.Title or "Tab!");
		local i = o:GetIcon(N[2] or (N.Icon or ""));
		if i:find("rbxassetid://") then
			if (i:gsub("rbxassetid://", "")):len() < 6 then
				i = false;
			end;
		else
			i = false;
		end;
		local K = T("Button", W, { Size = UDim2.new(1, 0, 0, 24) });
		T("Corner", K);
		local s = u(n("TextLabel", K, {
				Size = UDim2.new(1, i and -25 or -15, 1),
				Position = UDim2.fromOffset(i and 25 or 15),
				BackgroundTransparency = 1,
				Font = Enum.Font.GothamMedium,
				Text = a,
				TextColor3 = h["Color Text"],
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTransparency = X5 and .3 or 0,
				TextTruncate = "AtEnd",
			}), "Text");
		local e = u(n("ImageLabel", K, {
				Position = UDim2.new(0, 8, .5),
				Size = UDim2.new(0, 13, 0, 13),
				AnchorPoint = Vector2.new(0, .5),
				Image = i or "",
				BackgroundTransparency = 1,
				ImageTransparency = X5 and .3 or 0,
			}), "Text");
		local t = u(n("Frame", K, {
				Size = X5 and UDim2.new(0, 4, 0, 4) or UDim2.new(0, 4, 0, 13),
				Position = UDim2.new(0, 1, .5),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = h["Color Theme"],
				BackgroundTransparency = X5 and 1 or 0,
			}), "Theme");
		T("Corner", t, UDim.new(.5, 0));
		local l = u(n("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 1),
				AnchorPoint = Vector2.new(0, 1),
				ScrollBarThickness = 1.5,
				BackgroundTransparency = 1,
				ScrollBarImageTransparency = .2,
				ScrollBarImageColor3 = h["Color Theme"],
				AutomaticCanvasSize = "Y",
				ScrollingDirection = "Y",
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(),
				Name = (("Container %i [ %s ]")):format(#G5 + 1, a),
			}, { n("UIPadding", {
					PaddingLeft = UDim.new(0, 10),
					PaddingRight = UDim.new(0, 10),
					PaddingTop = UDim.new(0, 10),
					PaddingBottom = UDim.new(0, 10),
				}), n("UIListLayout", { Padding = UDim.new(0, 5) }) }), "ScrollBar");
		table.insert(G5, l);
		if not X5 then
			l.Parent = P;
		end;
		local function O()
			if not l.Parent then
				local Z, X, G = pairs(G5);
				while true do
					local V;
					G, V = Z(X, G);
					if G == nil then
						break;
					end;
					if V:IsA("ScrollingFrame") and V ~= l then
						V.Parent = nil;
					end;
				end;
				l.Parent = P;
				l.Size = UDim2.new(1, 0, 1, 150);
				table.foreach(o.Tabs, function(Z, X)
					if X.Cont ~= l then
						X.func:Disable();
					end;
				end);
				b({
					l,
					"Size",
					UDim2.new(1, 0, 1, 0),
					.3,
				});
				b({
					s,
					"TextTransparency",
					0,
					.35,
				});
				b({
					e,
					"ImageTransparency",
					0,
					.35,
				});
				b({
					t,
					"Size",
					UDim2.new(0, 4, 0, 13),
					.35,
				});
				b({
					t,
					"BackgroundTransparency",
					0,
					.35,
				});
			end;
		end;
		K.Activated:Connect(O);
		X5 = true;
		local Q = {};
		table.insert(o.Tabs, { TabInfo = { Name = a, Icon = i }, func = Q, Cont = l });
		Q.Cont = l;
		function Q.Disable(Z)
			l.Parent = nil;
			b({
				s,
				"TextTransparency",
				.3,
				.35,
			});
			b({
				e,
				"ImageTransparency",
				.3,
				.35,
			});
			b({
				t,
				"Size",
				UDim2.new(0, 4, 0, 4),
				.35,
			});
			b({
				t,
				"BackgroundTransparency",
				1,
				.35,
			});
		end;
		function Q.Enable(Z)
			O();
		end;
		function Q.Visible(Z, X)
			v:ToggleVisible(K, X);
			v:ToggleParent(l, X, P);
		end;
		function Q.Destroy(Z)
			K:Destroy();
			l:Destroy();
		end;
		function Q.AddSection(Z, X)
			local G;
			if type(X) ~= "string" or not X then
				G = X[1] or X.Name or (X.Title or X.Section);
			else
				G = X;
			end;
			local V = X.Icon or nil;
			local r = n("Frame", l, { Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1, Name = "Option" });
			local m = n("Frame", r, { Size = UDim2.new(1, 0, 1, 0), BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 0) });
			local N;
			if V then
				local Z = n;
				local X = {
						Size = UDim2.new(0, 14, 0, 14),
						Position = UDim2.new(0, 5, 0, 3),
						BackgroundTransparency = 1,
						Image = o:GetIcon(V),
						ImageColor3 = h["Color Text"],
						Name = "SectionIcon",
					};
				N = Z("ImageLabel", m, X);
			else
				N = nil;
			end;
			local k = V and UDim2.new(0, 24, 0, 0) or UDim2.new(0, 5, 0, 0);
			local a = u(n("TextLabel", m, {
					Font = Enum.Font.GothamBold,
					Text = G,
					TextColor3 = h["Color Text"],
					Size = UDim2.new(1, -25, 1, 0),
					Position = k,
					BackgroundTransparency = 1,
					TextTruncate = "AtEnd",
					TextSize = 14,
					TextXAlignment = "Left",
				}), "Text");
			local i = {};
			table.insert(o.Options, { type = "Section", Name = G, func = i });
			function i.Visible(Z, X)
				if X == nil then
					r.Visible = not r.Visible;
				else
					r.Visible = X;
				end;
			end;
			function i.Destroy(Z)
				r:Destroy();
			end;
			function i.Set(Z, X)
				if X then
					a.Text = y(X);
				end;
			end;
			function i.SetIcon(Z, X)
				if X then
					local Z = o:GetIcon(X);
					if N then
						N.Image = Z;
					else
						N = n("ImageLabel", m, {
								Size = UDim2.new(0, 14, 0, 14),
								Position = UDim2.new(0, 5, 0, 3),
								BackgroundTransparency = 1,
								Image = Z,
								ImageColor3 = h["Color Text"],
								Name = "SectionIcon",
							});
						a.Position = UDim2.new(0, 24, 0, 0);
					end;
				end;
			end;
			return i;
		end;
		function Q.AddParagraph(Z, X)
			local G = X[1] or (X.Title or "Paragraph");
			local V = X[2] or (X.Text or "");
			local r = X.Icon or nil;
			local m = n("Frame", l, {
					Size = UDim2.new(1, 0, 0, 25),
					AutomaticSize = "Y",
					BackgroundTransparency = 1,
					Name = "Option",
				});
			local N = n("Frame", m, {
					Size = UDim2.new(1, -20, 0, 0),
					AutomaticSize = "Y",
					Position = UDim2.new(0, 10, 0, 0),
					BackgroundTransparency = 1,
				});
			local k;
			if r then
				local Z = n;
				local X = {
						Size = UDim2.new(0, 16, 0, 16),
						BackgroundTransparency = 1,
						Image = o:GetIcon(r),
						ImageColor3 = h["Color Text"],
						Name = "ParagraphIcon",
					};
				k = Z("ImageLabel", N, X);
			else
				k = nil;
			end;
			local a = r and 20 or 0;
			local i = n("Frame", N, {
					Size = UDim2.new(1, -a, 0, 0),
					AutomaticSize = "Y",
					Position = UDim2.new(0, a, 0, 0),
					BackgroundTransparency = 1,
				}, { n("UIListLayout", { SortOrder = "LayoutOrder", Padding = UDim.new(0, 2) }) });
			local p = u(n("TextLabel", i, {
					Font = Enum.Font.GothamMedium,
					TextColor3 = h["Color Text"],
					Size = UDim2.new(1, 0, 0, 16),
					AutomaticSize = "Y",
					BackgroundTransparency = 1,
					TextTruncate = "AtEnd",
					TextSize = 10,
					TextXAlignment = "Left",
					Text = G,
					RichText = true,
					LayoutOrder = 1,
				}), "Text");
			local R = u(n("TextLabel", i, {
					Font = Enum.Font.Gotham,
					TextColor3 = h["Color Dark Text"],
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = "Y",
					BackgroundTransparency = 1,
					TextWrapped = true,
					TextSize = 8,
					TextXAlignment = "Left",
					Text = V,
					RichText = true,
					LayoutOrder = 2,
				}), "DarkText");
			local function K()
				if k then
					if V and V ~= "" then
						k.Position = UDim2.new(0, 0, 0, 4);
					else
						k.Position = UDim2.new(0, 0, .5, 0);
						k.AnchorPoint = Vector2.new(0, .5);
					end;
				end;
			end;
			local s = {
					Visible = function(Z, ...)
						m.Visible = ...;
					end,
					Destroy = function(Z)
						m:Destroy();
					end,
					SetTitle = function(Z, X)
						p.Text = y(X);
						K();
					end,
					SetDesc = function(Z, X)
						V = X;
						R.Text = y(X);
						local G = R;
						if X then
							X = X ~= "";
						end;
						G.Visible = X;
						K();
					end,
					Set = function(Z, X, G)
						if X and G then
							Z:SetTitle(X);
							Z:SetDesc(G);
						elseif X then
							Z:SetDesc(X);
						end;
					end,
					SetIcon = function(Z, X)
						if X then
							local Z = o:GetIcon(X);
							if k then
								k.Image = Z;
							else
								k = n("ImageLabel", N, {
										Size = UDim2.new(0, 16, 0, 16),
										BackgroundTransparency = 1,
										Image = Z,
										ImageColor3 = h["Color Text"],
										Name = "ParagraphIcon",
									});
								i.Position = UDim2.new(0, 20, 0, 0);
								i.Size = UDim2.new(1, -20, 0, 0);
							end;
							K();
						end;
					end,
				};
			s:SetDesc(V);
			K();
			return s;
		end;
		function Q.AddButton(Z, X)
			local G = X[1] or X.Name or (X.Title or "Button!");
			local V = X.Desc or (X.Description or "");
			local r = v:GetCallback(X, 2);
			local m, o = D(l, G, V, UDim2.new(1, -20));
			n("ImageLabel", m, {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(1, -10, .5),
				AnchorPoint = Vector2.new(1, .5),
				BackgroundTransparency = 1,
				Image = "rbxassetid://10723396107",
			});
			m.Activated:Connect(function()
				v:FireCallback(r);
			end);
			return {
				Visible = function(Z, ...)
					v:ToggleVisible(m, ...);
				end,
				Destroy = function(Z)
					m:Destroy();
				end,
				Callback = function(Z, ...)
					v:InsertCallback(r, ...);
				end,
				Set = function(Z, X, G)
					if type(X) ~= "string" or type(G) ~= "string" then
						if type(X) ~= "string" then
							if type(X) == "function" then
								r = X;
							end;
						else
							o:SetTitle(X);
						end;
					else
						o:SetTitle(X);
						o:SetDesc(G);
					end;
				end,
			};
		end;
		function Q.AddToggle(Z, X)
			local G = X[1] or X.Name or (X.Title or "Toggle");
			local V = X.Desc or (X.Description or "");
			local r = v:GetCallback(X, 3);
			local m = X[4] or (X.Flag or false);
			local o = X[2] or (X.Default or false);
			if d(m) then
				o = L(m);
			end;
			local N, k = D(l, G, V, UDim2.new(1, -38));
			local a = u(n("Frame", N, {
					Size = UDim2.new(0, 35, 0, 18),
					Position = UDim2.new(1, -10, .5),
					AnchorPoint = Vector2.new(1, .5),
					BackgroundColor3 = h["Color Stroke"],
				}), "Stroke");
			T("Corner", a, UDim.new(.5, 0));
			local i = u(n("Frame", n("Frame", a, {
					BackgroundTransparency = 1,
					Size = UDim2.new(.8, 0, .8, 0),
					Position = UDim2.new(.5, 0, .5, 0),
					AnchorPoint = Vector2.new(.5, .5),
				}), {
					Size = UDim2.new(0, 12, 0, 12),
					Position = UDim2.new(0, 0, .5),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = h["Color Theme"],
				}), "Theme");
			T("Corner", i, UDim.new(.5, 0));
			local p = nil;
			local function R(Z)
				if not p then
					o = Z;
					p = true;
					Y(m, o);
					v:FireCallback(r, o);
					if o then
						b({
							i,
							"Position",
							UDim2.new(1, 0, .5),
							.25,
						});
						b({
							i,
							"BackgroundTransparency",
							0,
							.25,
						});
						b({
							i,
							"AnchorPoint",
							Vector2.new(1, .5),
							.25,
							Wait or false,
						});
					else
						b({
							i,
							"Position",
							UDim2.new(0, 0, .5),
							.25,
						});
						b({
							i,
							"BackgroundTransparency",
							.8,
							.25,
						});
						b({
							i,
							"AnchorPoint",
							Vector2.new(0, .5),
							.25,
							Wait or false,
						});
					end;
					p = false;
				end;
			end;
			task.spawn(R, o);
			N.Activated:Connect(function()
				R(not o);
			end);
			return {
				Visible = function(Z, ...)
					v:ToggleVisible(N, ...);
				end,
				Destroy = function(Z)
					N:Destroy();
				end,
				Callback = function(Z, ...)
					(v:InsertCallback(r, ...))();
				end,
				Set = function(Z, X, G)
					if type(X) ~= "string" or type(G) ~= "string" then
						if type(X) ~= "string" then
							if type(X) ~= "boolean" then
								if type(X) == "function" then
									r = X;
								end;
							else
								if p and G then
									repeat
										task.wait();
									until not p;
								end;
								task.spawn(R, X);
							end;
						else
							k:SetTitle(X, false, true);
						end;
					else
						k:SetTitle(X);
						k:SetDesc(G);
					end;
				end,
			};
		end;
		function Q.AddDropdown(Z, X)
			local G = X[1] or X.Name or (X.Title or "Dropdown");
			local V = X.Desc or (X.Description or "");
			local r = X[2] or (X.Options or {});
			local m = X[3] or (X.Default or {});
			local o = X[5] or (X.Flag or false);
			local N = X.MultiSelect or false;
			local a = v:GetCallback(X, 4);
			local i, p = D(l, G, V, UDim2.new(1, -180));
			local R = u(n("Frame", i, {
					Size = UDim2.new(0, 150, 0, 18),
					Position = UDim2.new(1, -10, .5),
					AnchorPoint = Vector2.new(1, .5),
					BackgroundColor3 = h["Color Stroke"],
				}), "Stroke");
			T("Corner", R, UDim.new(0, 4));
			local K = u(n("TextLabel", R, {
					Size = UDim2.new(.85, 0, .85, 0),
					AnchorPoint = Vector2.new(.5, .5),
					Position = UDim2.new(.5, 0, .5, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.GothamBold,
					TextScaled = true,
					TextColor3 = h["Color Text"],
					Text = "...",
				}), "Text");
			local s = n("ImageLabel", R, {
					Size = UDim2.new(0, 15, 0, 15),
					Position = UDim2.new(0, -5, .5),
					AnchorPoint = Vector2.new(1, .5),
					Image = "rbxassetid://10709791523",
					BackgroundTransparency = 1,
				});
			local e = n("TextButton", I, {
					Name = "AntiClick",
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Visible = false,
					Text = "",
				});
			local t = n("Frame", e, {
					Size = UDim2.new(R.Size.X, 0, 0),
					BackgroundTransparency = .1,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					AnchorPoint = Vector2.new(0, 1),
					Name = "DropdownFrame",
					ClipsDescendants = true,
					Active = true,
				});
			T("Corner", t);
			T("Stroke", t);
			T("Gradient", t, { Rotation = 60 });
			local O = u(n("ScrollingFrame", t, {
					ScrollBarImageColor3 = h["Color Theme"],
					Size = UDim2.new(1, 0, 1, 0),
					ScrollBarThickness = 1.5,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					CanvasSize = UDim2.new(),
					ScrollingDirection = "Y",
					AutomaticCanvasSize = "Y",
					Active = true,
				}, { n("UIPadding", {
						PaddingLeft = UDim.new(0, 8),
						PaddingRight = UDim.new(0, 8),
						PaddingTop = UDim.new(0, 5),
						PaddingBottom = UDim.new(0, 5),
					}), n("UIListLayout", { Padding = UDim.new(0, 4) }) }), "ScrollBar");
			local Q = 5;
			local S = nil;
			local function w()
				S = true;
				b({
					s,
					"Rotation",
					0,
					.2,
				});
				b({
					t,
					"Size",
					UDim2.new(0, 152, 0, 0),
					.2,
					true,
				});
				b({
					s,
					"ImageColor3",
					Color3.fromRGB(255, 255, 255),
					.2,
				});
				s.Image = "rbxassetid://10709791523";
				e.Visible = false;
				S = false;
			end;
			local function W()
				return UDim2.fromOffset(152, Q);
			end;
			local function P()
				local Z = O;
				local X, G, V = pairs(Z:GetChildren());
				local r = 0;
				while true do
					local Z;
					V, Z = X(G, V);
					if V == nil then
						break;
					end;
					if Z:IsA("Frame") or Z.Name == "Option" then
						r = r + 1;
					end;
				end;
				Q = math.clamp(r, 0, 10) * 25 + 10;
				if e.Visible then
					e.Visible = true;
					b({
						t,
						"Size",
						W(),
						.2,
						true,
					});
				end;
			end;
			local function y()
				if not S then
					S = true;
					if e.Visible then
						s.Image = "rbxassetid://10709791523";
						b({
							s,
							"ImageColor3",
							Color3.fromRGB(255, 255, 255),
							.2,
						});
						b({
							t,
							"Size",
							UDim2.new(0, 152, 0, 0),
							.2,
							true,
						});
						e.Visible = false;
					else
						e.Visible = true;
						s.Image = "rbxassetid://10709790948";
						b({
							s,
							"ImageColor3",
							h["Color Theme"],
							.2,
						});
						b({
							t,
							"Size",
							W(),
							.2,
							true,
						});
					end;
					S = false;
				end;
			end;
			local function F()
				local Z = R.AbsolutePosition;
				local X = C.AbsoluteSize;
				local G = math.clamp(Z.X / k, 0, X.X / k - t.Size.X.Offset);
				local V = math.clamp(Z.Y / k, 0, X.Y / k);
				local r = UDim2.fromOffset(G, V);
				local m = Z.Y > X.Y / 1.4 and 1 or (Q > 80 and .5 or 0);
				t.AnchorPoint = Vector2.new(0, m);
				b({
					t,
					"Position",
					r,
					.1,
				});
			end;
			local x = type(m) ~= "table" and (({ m } or m)) or m;
			local f = N;
			local g = {};
			local H = f and {} or (d(o) and L(o) or x[1]);
			if f then
				local Z = pairs;
				if d(o) then
					x = L(o) or x;
				end;
				local X, G, V = Z(x);
				while true do
					local Z, m = X(G, V);
					if Z == nil then
						break;
					end;
					V = Z;
					if type(Z) ~= "string" or not ((r[Z] or table.find(r, Z))) then
						if r[m] then
							H[m] = true;
						end;
					else
						H[Z] = m;
					end;
				end;
			end;
			local function E()
				Y(o, f and H or tostring(H));
				v:FireCallback(a, H);
			end;
			local function U()
				if f then
					local Z, X, G = pairs(H);
					local V = {};
					while true do
						local r;
						G, r = Z(X, G);
						if G == nil then
							break;
						end;
						if r then
							table.insert(V, G);
						end;
					end;
					K.Text = #V > 0 and table.concat(V, ", ") or "...";
				else
					K.Text = tostring(H or "...");
				end;
			end;
			local function M()
				if f then
					local Z, X, G = pairs(g);
					while true do
						local V;
						G, V = Z(X, G);
						if G == nil then
							break;
						end;
						local r = V.nodes;
						local m = V.Stats;
						b({
							r[2],
							"BackgroundTransparency",
							m and 0 or .8,
							.35,
						});
						b({
							r[2],
							"Size",
							m and UDim2.fromOffset(4, 12) or UDim2.fromOffset(4, 4),
							.35,
						});
						b({
							r[3],
							"TextTransparency",
							m and 0 or .4,
							.35,
						});
					end;
				else
					local Z, X, G = pairs(g);
					while true do
						local V;
						G, V = Z(X, G);
						if G == nil then
							break;
						end;
						local r = V.Value == H;
						local m = V.nodes;
						b({
							m[2],
							"BackgroundTransparency",
							r and 0 or 1,
							.35,
						});
						b({
							m[2],
							"Size",
							r and UDim2.fromOffset(4, 14) or UDim2.fromOffset(4, 4),
							.35,
						});
						b({
							m[3],
							"TextTransparency",
							r and 0 or .4,
							.35,
						});
					end;
				end;
				U();
			end;
			local function c(Z)
				if f then
					Z.Stats = not Z.Stats;
					Z.LastCB = tick();
					H[Z.Name] = Z.Stats;
					E();
				else
					Z.LastCB = tick();
					H = Z.Value;
					E();
				end;
				M();
			end;
			local function q(Z, X)
				local G = tostring;
				local V;
				if type(Z) ~= "string" or not Z then
					V = X;
				else
					V = Z;
				end;
				local r = G(V);
				if not g[r] then
					g[r] = {
							index = Z,
							Value = X,
							Name = r,
							Stats = false,
							LastCB = 0,
						};
					if f then
						local Z = H[r];
						H[r] = Z or false;
						g[r].Stats = Z;
					end;
					local G = T("Button", O, {
							Name = "Option",
							Size = UDim2.new(1, 0, 0, 21),
							Position = UDim2.new(0, 0, .5),
							AnchorPoint = Vector2.new(0, .5),
						});
					T("Corner", G, UDim.new(0, 4));
					local V = u(n("Frame", G, {
							Position = UDim2.new(0, 1, .5),
							Size = UDim2.new(0, 4, 0, 4),
							BackgroundColor3 = h["Color Theme"],
							BackgroundTransparency = 1,
							AnchorPoint = Vector2.new(0, .5),
						}), "Theme");
					T("Corner", V, UDim.new(.5, 0));
					local m = u(n("TextLabel", G, {
							Size = UDim2.new(1, 0, 1),
							Position = UDim2.new(0, 10),
							Text = r,
							TextColor3 = h["Color Text"],
							Font = Enum.Font.GothamBold,
							TextXAlignment = "Left",
							BackgroundTransparency = 1,
							TextTransparency = .4,
						}), "Text");
					G.Activated:Connect(function()
						c(g[r]);
					end);
					g[r].nodes = { G, V, m };
				end;
			end;
			local function J(Z, X)
				local G = tostring;
				if type(Z) == "string" and Z then
					X = Z;
				end;
				local V = G(X);
				if g[V] then
					if f then
						H[V] = nil;
					else
						H = nil;
					end;
					g[V].nodes[1]:Destroy();
					table.clear(g[V]);
					g[V] = nil;
				end;
			end;
			local function B()
				return g;
			end;
			local function A(Z, X)
				if X then
					table.foreach(g, J);
				end;
				table.foreach(Z, q);
				E();
				M();
			end;
			table.foreach(r, q);
			E();
			M();
			i.Activated:Connect(y);
			e.MouseButton1Down:Connect(w);
			e.MouseButton1Click:Connect(w);
			(j:GetPropertyChangedSignal("Visible")):Connect(w);
			local z = R;
			(R.GetPropertyChangedSignal(z, "AbsolutePosition")):Connect(F);
			i.Activated:Connect(P);
			O.ChildAdded:Connect(P);
			O.ChildRemoved:Connect(P);
			F();
			P();
			return {
				Visible = function(Z, ...)
					v:ToggleVisible(i, ...);
				end,
				Destroy = function(Z)
					i:Destroy();
				end,
				Callback = function(Z, ...)
					(v:InsertCallback(a, ...))(H);
				end,
				Add = function(Z, ...)
					local X = { ... };
					if type(X[1]) ~= "table" then
						table.foreach(X, function(Z, X)
							q(X);
						end);
					else
						table.foreach(Option, function(Z, X)
							q(X);
						end);
					end;
				end,
				Remove = function(Z, X)
					local G, V, r = pairs(B());
					while true do
						local Z;
						r, Z = G(V, r);
						if r == nil then
							break;
						end;
						if type(X) == "number" and r == X or Z.Name == "Option" then
							J(r, Z.Value);
						end;
					end;
				end,
				Select = function(Z, X)
					if type(X) ~= "string" then
						if type(X) == "number" then
							local Z, G, V = pairs(Options);
							while true do
								local r;
								V, r = Z(G, V);
								if V == nil then
									break;
								end;
								if V == X then
									r.Active();
								end;
							end;
						end;
					else
						local Z, G, V = pairs(Options);
						while true do
							local r;
							V, r = Z(G, V);
							if V == nil then
								break;
							end;
							if r.Name == X then
								r.Active();
							end;
						end;
					end;
				end,
				Set = function(Z, X, G)
					if type(X) ~= "table" then
						if type(X) == "function" then
							a = X;
						end;
					else
						A(X, not G);
					end;
				end,
			};
		end;
		function Q.AddSlider(X, G)
			local V = G[1] or G.Name or (G.Title or "Slider!");
			local r = G.Desc or (G.Description or "");
			local o = G[2] or G.MinValue or (G.Min or 10);
			local N = G[3] or G.MaxValue or (G.Max or 100);
			local k = G[4] or (G.Increase or 1);
			local a = v:GetCallback(G, 6);
			local i = G[7] or (G.Flag or false);
			local p = G[5] or (G.Default or 25);
			if d(i) then
				p = L(i);
			end;
			local R = o / k;
			local K = N / k;
			local s = R;
			local e, t = D(l, V, r, UDim2.new(1, -180));
			local j = n("TextButton", e, {
					Size = UDim2.new(.45, 0, 1),
					Position = UDim2.new(1),
					AnchorPoint = Vector2.new(1, 0),
					AutoButtonColor = false,
					Text = "",
					BackgroundTransparency = 1,
				});
			local O = u(n("Frame", j, {
					BackgroundColor3 = h["Color Stroke"],
					Size = UDim2.new(1, -20, 0, 6),
					Position = UDim2.new(.5, 0, .5),
					AnchorPoint = Vector2.new(.5, .5),
				}), "Stroke");
			T("Corner", O);
			local I = u(n("Frame", O, { BackgroundColor3 = h["Color Theme"], Size = UDim2.fromScale(.3, 1), BorderSizePixel = 0 }), "Theme");
			T("Corner", I);
			local Q = n("Frame", O, {
					Size = UDim2.new(0, 6, 0, 12),
					BackgroundColor3 = Color3.fromRGB(220, 220, 220),
					Position = UDim2.fromScale(.3, .5),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundTransparency = .2,
				});
			T("Corner", Q);
			local S = u(n("TextLabel", j, {
					Size = UDim2.new(0, 14, 0, 14),
					AnchorPoint = Vector2.new(1, .5),
					Position = UDim2.new(0, 0, .5),
					BackgroundTransparency = 1,
					TextColor3 = h["Color Text"],
					Font = Enum.Font.FredokaOne,
					TextSize = 12,
				}), "Text");
			local w = n("UIScale", S);
			local C = n("Frame", O, { Position = UDim2.new(0, 0, .5, 0), Visible = false });
			local function W(Z)
				local X = tonumber(Z * k);
				local G = math.floor(X * 100) / 100;
				S.Text = tostring(G);
				p = G;
				v:FireCallback(a, p);
			end;
			local function P()
				local Z = (((m:GetMouse()).X - C.AbsolutePosition.X)) / O.AbsoluteSize.X;
				Q.Position = UDim2.new(math.clamp(Z, 0, 1), 0, .5, 0);
			end;
			local function y()
				I.Size = UDim2.new(Q.Position.X.Scale, 0, 1, 0);
				local Z = Q.Position.X.Scale;
				W((math.floor(((Z * K) / K) * ((K - s)) + s)));
			end;
			j.MouseButton1Down:Connect(function()
				b({
					Q,
					"Transparency",
					0,
					.3,
				});
				l.ScrollingEnabled = false;
				while Z:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					task.wait();
					P();
				end;
				b({
					Q,
					"Transparency",
					.2,
					.3,
				});
				l.ScrollingEnabled = true;
				Y(i, p);
			end);
			local F = S;
			(S.GetPropertyChangedSignal(F, "Text")):Connect(function()
				w.Scale = .3;
				b({
					w,
					"Scale",
					1.2,
					.1,
				});
				b({
					S,
					"Rotation",
					math.random(-1, 1) * 5,
					.15,
					true,
				});
				b({
					w,
					"Scale",
					1,
					.2,
				});
				b({
					S,
					"Rotation",
					0,
					.1,
				});
			end);
			function SetSlider(Z)
				if type(Z) == "number" then
					local X = s * k;
					local G = K * k;
					local V = ((Z - X)) / ((G - X));
					Y(i, Z);
					b({
						Q,
						"Position",
						UDim2.fromScale(math.clamp(V, 0, 1), .5),
						.3,
						true,
					});
				end;
			end;
			SetSlider(p);
			local x = Q;
			(Q.GetPropertyChangedSignal(x, "Position")):Connect(y);
			y();
			return {
				Set = function(Z, X, G)
					if X and G then
						t:SetTitle(X);
						t:SetDesc(G);
					elseif type(X) ~= "string" then
						if type(X) ~= "function" then
							if type(X) == "number" then
								SetSlider(X);
							end;
						else
							a = X;
						end;
					else
						t:SetTitle(X);
					end;
				end,
				Callback = function(Z, ...)
					(v:InsertCallback(a, ...))(tonumber(p));
				end,
				Visible = function(Z, ...)
					v:ToggleVisible(e, ...);
				end,
				Destroy = function(Z)
					e:Destroy();
				end,
			};
		end;
		function Q.AddTextBox(Z, X)
			local G = X[1] or X.Name or (X.Title or "Text Box");
			local V = X.Desc or (X.Description or "");
			local r = X[2] or (X.Default or "");
			local m = X[5] or (X.PlaceholderText or "LOC4T");
			local o = X[3] or (X.ClearText or false);
			local N = v:GetCallback(X, 4);
			if type(r) == "string" then
				local Z = (r:gsub(" ", "")):len() >= 1;
			end;
			local k, a = D(l, G, V, UDim2.new(1, -38));
			local i = u(n("Frame", k, {
					Size = UDim2.new(0, 150, 0, 18),
					Position = UDim2.new(1, -10, .5),
					AnchorPoint = Vector2.new(1, .5),
					BackgroundColor3 = h["Color Stroke"],
				}), "Stroke");
			T("Corner", i, UDim.new(0, 4));
			local p = u(n("TextBox", i, {
					Size = UDim2.new(.85, 0, .85, 0),
					AnchorPoint = Vector2.new(.5, .5),
					Position = UDim2.new(.5, 0, .5, 0),
					BackgroundTransparency = 1,
					Font = Enum.Font.GothamBold,
					TextScaled = true,
					TextColor3 = h["Color Text"],
					ClearTextOnFocus = o,
					PlaceholderText = m,
					Text = "",
				}), "Text");
			local R = n("ImageLabel", i, {
					Size = UDim2.new(0, 12, 0, 12),
					Position = UDim2.new(0, -5, .5),
					AnchorPoint = Vector2.new(1, .5),
					Image = "rbxassetid://15637081879",
					BackgroundTransparency = 1,
				});
			local K = {};
			local function s()
				local Z = p.Text;
				if (Z:gsub(" ", "")):len() > 0 then
					if type(K.OnChanging) == "function" then
						Z = K.OnChanging(Z) or Z;
					end;
					v:FireCallback(N, Z);
					p.Text = Z;
				end;
			end;
			p.FocusLost:Connect(s);
			s();
			p.FocusLost:Connect(function()
				b({
					R,
					"ImageColor3",
					Color3.fromRGB(255, 255, 255),
					.2,
				});
			end);
			p.Focused:Connect(function()
				b({
					R,
					"ImageColor3",
					h["Color Theme"],
					.2,
				});
			end);
			K.OnChanging = false;
			function K.Visible(Z, ...)
				v:ToggleVisible(k, ...);
			end;
			function K.Destroy(Z)
				k:Destroy();
			end;
			return K;
		end;
		function Q.AddColorPicker(G, V)
			local r = V[1] or V.Name or (V.Title or "Color Picker");
			local o = V.Desc or (V.Description or "");
			local N = v:GetCallback(V, 3);
			local a = V[4] or (V.Flag or false);
			local i = V[2] or (V.Default or Color3.fromRGB(57, 255, 106));
			if d(a) then
				i = L(a);
			end;
			local K, s = D(l, r, o, UDim2.new(1, -60));
			local e = n("Frame", K, {
					Size = UDim2.new(0, 38, 0, 18),
					Position = UDim2.new(1, -10, .5),
					AnchorPoint = Vector2.new(1, .5),
					BackgroundTransparency = 1,
				});
			T("Corner", e, UDim.new(0, 5));
			u(n("UIStroke", e, { Thickness = 1, ApplyStrokeMode = "Border" }), "Stroke");
			local t = n("Frame", e, {
					Size = UDim2.new(1, -4, 1, -4),
					Position = UDim2.fromScale(.5, .5),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundColor3 = i,
					BorderSizePixel = 0,
				});
			T("Corner", t, UDim.new(0, 4));
			local O = n("TextButton", e, {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "",
					AutoButtonColor = false,
				});
			local Q = n("TextButton", I, {
					Name = "AntiClick",
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Visible = false,
					Text = "",
				});
			local S = n("Frame", Q, {
					Size = UDim2.new(0, 190, 0, 0),
					BackgroundTransparency = .08,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					AnchorPoint = Vector2.new(0, 1),
					Name = "ColorPickerFrame",
					ClipsDescendants = true,
					Active = true,
				});
			T("Corner", S);
			T("Stroke", S);
			T("Gradient", S, { Rotation = 60 });
			local w = n("Frame", S, {
					Size = UDim2.new(1, -16, 1, -16),
					Position = UDim2.new(.5, 0, 0, 8),
					AnchorPoint = Vector2.new(.5, 0),
					BackgroundTransparency = 1,
				}, { n("UIListLayout", { SortOrder = "LayoutOrder", Padding = UDim.new(0, 8) }) });
			local W = n("Frame", w, { Size = UDim2.new(1, 0, 0, 26), BackgroundTransparency = 1, LayoutOrder = 1 });
			local P = n("Frame", W, { Size = UDim2.new(0, 26, 0, 26), BackgroundColor3 = i, BorderSizePixel = 0 });
			T("Corner", P, UDim.new(0, 6));
			n("UIStroke", P, {
				Color = Color3.fromRGB(255, 255, 255),
				Thickness = 1,
				Transparency = .4,
				ApplyStrokeMode = "Border",
			});
			local y = u(n("TextBox", W, {
					Size = UDim2.new(1, -34, 1, 0),
					Position = UDim2.new(0, 34, 0, 0),
					BackgroundColor3 = h["Color Stroke"],
					Font = Enum.Font.GothamBold,
					TextColor3 = h["Color Text"],
					TextScaled = true,
					ClearTextOnFocus = false,
					Text = p(i),
				}), "Stroke");
			T("Corner", y, UDim.new(0, 6));
			local F = n("TextButton", w, {
					Size = UDim2.new(1, 0, 0, 100),
					BackgroundColor3 = Color3.fromRGB(255, 0, 0),
					AutoButtonColor = false,
					Text = "",
					LayoutOrder = 2,
					ClipsDescendants = true,
				});
			T("Corner", F, UDim.new(0, 6));
			n("Frame", F, { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.fromRGB(255, 255, 255), BorderSizePixel = 0 }, { n("UIGradient", { Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1) }) }) });
			n("Frame", F, { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.fromRGB(0, 0, 0), BorderSizePixel = 0 }, { n("UIGradient", { Rotation = 90, Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0) }) }) });
			local x = n("Frame", F, {
					Size = UDim2.fromOffset(10, 10),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = 0,
					ZIndex = 5,
				});
			T("Corner", x, UDim.new(.5, 0));
			n("UIStroke", x, { Color = Color3.fromRGB(20, 20, 20), Thickness = 1.5, ApplyStrokeMode = "Border" });
			local f = n("TextButton", w, {
					Size = UDim2.new(1, 0, 0, 16),
					AutoButtonColor = false,
					Text = "",
					LayoutOrder = 3,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				}, { n("UIGradient", { Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
							ColorSequenceKeypoint.new(.167, Color3.fromRGB(255, 255, 0)),
							ColorSequenceKeypoint.new(.333, Color3.fromRGB(0, 255, 0)),
							ColorSequenceKeypoint.new(.5, Color3.fromRGB(0, 255, 255)),
							ColorSequenceKeypoint.new(.667, Color3.fromRGB(0, 0, 255)),
							ColorSequenceKeypoint.new(.833, Color3.fromRGB(255, 0, 255)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
						}) }) });
			T("Corner", f, UDim.new(0, 6));
			local g = n("Frame", f, {
					Size = UDim2.new(0, 4, 1, 4),
					Position = UDim2.new(0, 0, .5, 0),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = 0,
					ZIndex = 5,
				});
			T("Corner", g, UDim.new(0, 2));
			n("UIStroke", g, { Color = Color3.fromRGB(20, 20, 20), Thickness = 1.25, ApplyStrokeMode = "Border" });
			local H = n("Frame", w, { Size = UDim2.new(1, 0, 0, 44), BackgroundTransparency = 1, LayoutOrder = 4 }, { n("UIGridLayout", { CellSize = UDim2.fromOffset(18, 18), CellPadding = UDim2.fromOffset(4, 4), SortOrder = "LayoutOrder" }) });
			local E = {
					Color3.fromRGB(255, 255, 255),
					Color3.fromRGB(0, 0, 0),
					Color3.fromRGB(120, 120, 120),
					Color3.fromRGB(255, 0, 0),
					Color3.fromRGB(255, 128, 0),
					Color3.fromRGB(255, 220, 0),
					Color3.fromRGB(60, 255, 90),
					Color3.fromRGB(57, 255, 106),
					Color3.fromRGB(0, 200, 120),
					Color3.fromRGB(0, 255, 242),
					Color3.fromRGB(0, 140, 255),
					Color3.fromRGB(60, 90, 255),
					Color3.fromRGB(140, 60, 255),
					Color3.fromRGB(200, 0, 255),
					Color3.fromRGB(255, 0, 200),
					Color3.fromRGB(255, 0, 120),
					Color3.fromRGB(150, 90, 40),
					Color3.fromRGB(255, 180, 200),
				};
			local U, M, c = i:ToHSV();
			local function q(Z)
				t.BackgroundColor3 = Z;
				P.BackgroundColor3 = Z;
				y.Text = p(Z);
			end;
			local function J(Z)
				local X = Color3.fromHSV(U, M, c);
				q(X);
				F.BackgroundColor3 = Color3.fromHSV(U, 1, 1);
				Y(a, X);
				if Z ~= false then
					v:FireCallback(N, X);
				end;
				return X;
			end;
			local function B()
				x.Position = UDim2.new(M, 0, 1 - c, 0);
				g.Position = UDim2.new(U, 0, .5, 0);
			end;
			local function A()
				local Z = m:GetMouse();
				M = math.clamp(((Z.X - F.AbsolutePosition.X)) / F.AbsoluteSize.X, 0, 1);
				c = 1 - math.clamp(((Z.Y - F.AbsolutePosition.Y)) / F.AbsoluteSize.Y, 0, 1);
				x.Position = UDim2.new(M, 0, 1 - c, 0);
				J();
			end;
			local function z()
				local Z = m:GetMouse();
				U = math.clamp(((Z.X - f.AbsolutePosition.X)) / f.AbsoluteSize.X, 0, 1);
				g.Position = UDim2.new(U, 0, .5, 0);
				J();
			end;
			F.MouseButton1Down:Connect(function()
				l.ScrollingEnabled = false;
				A();
				while Z:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					task.wait();
					A();
				end;
				l.ScrollingEnabled = true;
			end);
			f.MouseButton1Down:Connect(function()
				l.ScrollingEnabled = false;
				z();
				while Z:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
					task.wait();
					z();
				end;
				l.ScrollingEnabled = true;
			end);
			y.FocusLost:Connect(function()
				local Z = R(y.Text);
				if Z then
					U, M, c = Z:ToHSV();
					B();
					J();
				else
					y.Text = p(Color3.fromHSV(U, M, c));
				end;
			end);
			for Z, X in ipairs(E) do
				local G = n("TextButton", H, {
						BackgroundColor3 = X,
						AutoButtonColor = false,
						Text = "",
						LayoutOrder = Z,
						Size = UDim2.fromOffset(18, 18),
					});
				T("Corner", G, UDim.new(0, 4));
				n("UIStroke", G, {
					Color = Color3.fromRGB(255, 255, 255),
					Thickness = 1,
					Transparency = .5,
					ApplyStrokeMode = "Border",
				});
				G.MouseEnter:Connect(function()
					b({
						G,
						"Size",
						UDim2.fromOffset(21, 21),
						.12,
					});
				end);
				G.MouseLeave:Connect(function()
					b({
						G,
						"Size",
						UDim2.fromOffset(18, 18),
						.12,
					});
				end);
				G.Activated:Connect(function()
					U, M, c = X:ToHSV();
					B();
					J();
				end);
			end;
			local Z5 = false;
			local function X5()
				local Z = e.AbsolutePosition;
				local X = C.AbsoluteSize;
				local G = math.clamp(Z.X / k, 0, X.X / k - S.Size.X.Offset);
				local V = math.clamp(Z.Y / k, 0, X.Y / k);
				S.AnchorPoint = Vector2.new(0, Z.Y > X.Y / 1.4 and 1 or 0);
				b({
					S,
					"Position",
					UDim2.fromOffset(G, V),
					.1,
				});
			end;
			local function G5()
				if Z5 then
					return;
				end;
				Z5 = true;
				b({
					S,
					"Size",
					UDim2.new(0, 190, 0, 0),
					.22,
					true,
				});
				Q.Visible = false;
				Z5 = false;
			end;
			local function V5()
				if Z5 then
					return;
				end;
				Z5 = true;
				X5();
				Q.Visible = true;
				(X:Create(S, TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 190, 0, 235) })):Play();
				Z5 = false;
			end;
			O.Activated:Connect(function()
				if Q.Visible then
					G5();
				else
					V5();
				end;
			end);
			Q.MouseButton1Down:Connect(G5);
			Q.MouseButton1Click:Connect(G5);
			(j:GetPropertyChangedSignal("Visible")):Connect(G5);
			(e:GetPropertyChangedSignal("AbsolutePosition")):Connect(X5);
			B();
			J(false);
			local r5 = {};
			function r5.Visible(Z, ...)
				v:ToggleVisible(K, ...);
			end;
			function r5.Destroy(Z)
				K:Destroy();
			end;
			function r5.Callback(Z, ...)
				(v:InsertCallback(N, ...))(Color3.fromHSV(U, M, c));
			end;
			function r5.Set(Z, X)
				if typeof(X) == "Color3" then
					U, M, c = X:ToHSV();
					B();
					J();
				end;
			end;
			return r5;
		end;
		function Q.AddDiscordInvite(Z, X)
			local V = X[1] or X.Name or (X.Title or "Discord Server");
			local r = X[2] or (X.Desc or (X.Description or ""));
			local m = X[3] or (X.Icon or (X.Logo or ""));
			local o = X[4] or (X.Invite or (X.Link or ""));
			local N = o:match("discord%.gg/([%w%-]+)") or o:match("discord%.com/invite/([%w%-]+)") or o;
			local k = n("Frame", l, { Size = UDim2.new(1, 0, 0, 75), Name = "Option", BackgroundTransparency = 1 });
			local a = u(n("Frame", k, { Size = UDim2.new(1, 0, 1, 0), BackgroundColor3 = h["Color Hub 2"], ClipsDescendants = true }), "Frame");
			T("Corner", a, UDim.new(0, 8));
			T("Stroke", a);
			local i = n("ImageLabel", a, {
					Size = UDim2.new(0, 52, 0, 52),
					Position = UDim2.new(0, 10, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					Image = m,
					BackgroundTransparency = m == "" and 0 or 1,
					BackgroundColor3 = Color3.fromRGB(88, 101, 242),
				});
			T("Corner", i, UDim.new(0, 10));
			local p = n("Frame", a, {
					Size = UDim2.new(1, -165, 1, -16),
					Position = UDim2.new(0, 72, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundTransparency = 1,
				});
			local R = u(n("TextLabel", p, {
					Size = UDim2.new(1, 0, 0, 16),
					Position = UDim2.new(0, 0, 0, 0),
					TextXAlignment = "Left",
					BackgroundTransparency = 1,
					TextSize = 13,
					Text = V,
					Font = Enum.Font.GothamBold,
					TextColor3 = h["Color Text"],
					TextTruncate = "AtEnd",
				}), "Text");
			local K = u(n("TextLabel", p, {
					Size = UDim2.new(1, 0, 0, 14),
					Position = UDim2.new(0, 0, 0, 18),
					TextXAlignment = "Left",
					BackgroundTransparency = 1,
					TextSize = 10,
					Text = r,
					Font = Enum.Font.Gotham,
					TextColor3 = h["Color Dark Text"],
					TextTruncate = "AtEnd",
				}), "DarkText");
			local s = n("Frame", p, { Size = UDim2.new(1, 0, 0, 14), Position = UDim2.new(0, 0, 0, 36), BackgroundTransparency = 1 }, { n("UIListLayout", { FillDirection = "Horizontal", SortOrder = "LayoutOrder", Padding = UDim.new(0, 10) }) });
			local e = n("Frame", s, {
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = "X",
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				});
			local t = n("Frame", e, {
					Size = UDim2.new(0, 6, 0, 6),
					Position = UDim2.new(0, 0, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = Color3.fromRGB(67, 181, 129),
				});
			T("Corner", t, UDim.new(1, 0));
			local j = u(n("TextLabel", e, {
					Size = UDim2.new(0, 0, 1, 0),
					Position = UDim2.new(0, 10, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					AutomaticSize = "X",
					BackgroundTransparency = 1,
					TextSize = 10,
					Text = "0 Online",
					Font = Enum.Font.GothamMedium,
					TextColor3 = h["Color Text"],
				}), "Text");
			local O = n("Frame", s, {
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = "X",
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				});
			local I = n("Frame", O, {
					Size = UDim2.new(0, 6, 0, 6),
					Position = UDim2.new(0, 0, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = Color3.fromRGB(180, 180, 180),
				});
			T("Corner", I, UDim.new(1, 0));
			local Q = u(n("TextLabel", O, {
					Size = UDim2.new(0, 0, 1, 0),
					Position = UDim2.new(0, 10, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					AutomaticSize = "X",
					BackgroundTransparency = 1,
					TextSize = 10,
					Text = "0 Members",
					Font = Enum.Font.GothamMedium,
					TextColor3 = h["Color Text"],
				}), "Text");
			local S = u(n("TextButton", a, {
					Position = UDim2.new(1, -10, .5, 0),
					Size = UDim2.new(0, 75, 0, 28),
					AnchorPoint = Vector2.new(1, .5),
					Text = "Join",
					Font = Enum.Font.GothamBold,
					TextSize = 11,
					BackgroundColor3 = Color3.fromRGB(67, 181, 129),
					TextColor3 = Color3.fromRGB(255, 255, 255),
				}), "Text");
			T("Corner", S, UDim.new(0, 6));
			local d = true;
			local function L()
				if not N or N == "" then
					return;
				end;
				pcall(function()
					local Z = (syn and syn.request) or (http and http.request) or http_request or request;
					local X;
					if Z then
						local V = Z({ Url = "https://discord.com/api/v10/invites/" .. (N .. "?with_counts=true"), Method = "GET" });
						if V and V.Body then
							X = G:JSONDecode(V.Body);
						end;
					elseif game.HttpGet then
						local Z = game:HttpGet("https://discord.com/api/v10/invites/" .. (N .. "?with_counts=true"));
						if Z then
							X = G:JSONDecode(Z);
						end;
					end;
					if X then
						if X.approximate_presence_count then
							j.Text = tostring(X.approximate_presence_count) .. " Online";
						end;
						if X.approximate_member_count then
							Q.Text = tostring(X.approximate_member_count) .. " Members";
						end;
						if X.guild and (X.guild.name and V == "Discord Server") then
							R.Text = X.guild.name;
						end;
						if X.guild and (X.guild.icon and m == "") then
							i.Image = "https://cdn.discordapp.com/icons/" .. (X.guild.id .. ("/" .. (X.guild.icon .. ".png")));
							i.BackgroundTransparency = 1;
						end;
					end;
				end);
			end;
			task.spawn(function()
				while d and (k and k.Parent) do
					L();
					task.wait(20);
				end;
			end);
			local Y = 0;
			S.Activated:Connect(function()
				if tick() - Y < 3 then
					return;
				end;
				Y = tick();
				local Z = S.Text;
				S.Text = "Copied!";
				if setclipboard then
					setclipboard(o);
				end;
				task.wait(2);
				if S and S.Parent then
					S.Text = Z;
				end;
			end);
			return { Destroy = function(Z)
					d = false;
					k:Destroy();
				end, Visible = function(Z, ...)
					v:ToggleVisible(k, ...);
				end, Set = function(Z, X, G, V)
					if X then
						R.Text = X;
					end;
					if G then
						K.Text = G;
					end;
					if V then
						o = V;
						N = o:match("discord%.gg/([%w%-]+)") or o:match("discord%.com/invite/([%w%-]+)") or o;
						task.spawn(L);
					end;
				end };
		end;
		return Q;
	end;
	q.Activated:Connect(Z5.CloseBtn);
	J.Activated:Connect(Z5.MinimizeBtn);
	return Z5;
end;
return o;