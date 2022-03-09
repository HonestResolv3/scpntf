
Function FillRoom_Cont_1162(r.Rooms)
	Local d.Doors,it.Items,sc.SecurityCams
	
	d = CreateDoor(r\zone, r\x + 248.0*RoomScale, 0.0, r\z - 736.0*RoomScale, 90, r, False, False, 2)
	r\Objects[0] = CreatePivot()
	PositionEntity r\Objects[0],r\x+1012.0*RoomScale,r\y+128.0*RoomScale,r\z-640.0*RoomScale
	EntityParent r\Objects[0],r\obj
	EntityPickMode r\Objects[0],1
	it = CreateItem("Document SCP-1162", "paper", r\x + 863.227 * RoomScale, r\y + 152.0 * RoomScale, r\z - 953.231 * RoomScale)
	EntityParent(it\collider, r\obj)
	
	sc.SecurityCams = CreateSecurityCam(r\x-192.0*RoomScale, r\y+704.0*RoomScale, r\z+192.0*RoomScale, r)
	sc\angle = 225
	TurnEntity(sc\CameraObj, 20, 0, 0)
	sc\ID = 8
	
End Function

Function UpdateEvent_Cont_1162(e.Events)
	Local it.Items,itt.ItemTemplates,de.Decals
	Local pvt%
	Local i
	
	;e\EventState = A variable to determine the "nostalgia" items
	;- 0.0 = No nostalgia item
	;- 1.0 = Lost key
	;- 2.0 = Disciplinary Hearing DH-S-4137-17092
	;- 3.0 = Coin
	;- 4.0 = Movie Ticket
	;- 5.0 = Old Badge
	;e\EventState2 = Defining which slot from the Inventory should be picked
	;e\EventState3 = A check for if a item should be removed
	;- 0.0 = no item "trade" will happen
	;- 1.0 = item "trade" will happen
	;- 2.0 = the player doesn't has any items in the Inventory, giving him heavily Injuries and giving him a random item
	;- 3.0 = player got a memorial item (to explain a bit D-9341's background)
	;- 3.1 = player got a memorial item + injuries (because he didn't had any item in his inventory before)
	If PlayerRoom = e\room
		
		GrabbedEntity = 0
		
		e\EventState = 0
		
		Local Pick1162% = True
		Local pp% = CreatePivot(e\room\obj)
		PositionEntity pp,976,128,-640,False
		
		For it.Items = Each Items
			If (Not it\Picked)
				If EntityDistanceSquared(it\collider,e\room\Objects[0])<PowTwo(0.75)
					Pick1162% = False
				EndIf
			EndIf
		Next
		
		If EntityDistanceSquared(e\room\Objects[0],Collider)<PowTwo(0.75) And Pick1162%
			DrawHandIcon = True
			If MouseHit1 Then GrabbedEntity = e\room\Objects[0]
		EndIf
		
		If GrabbedEntity <> 0
			e\EventState2 = Rand(0,MaxItemAmount-1)
			If Inventory[e\EventState2]<>Null
				;randomly picked item slot has an item in it, using this slot
				e\EventState3 = 1.0
				DebugLog "pick1"
			Else
				;randomly picked item slot is empty, getting the first available slot
				For i = 0 To MaxItemAmount-1
					Local isSlotEmpty% = (Inventory[(i+e\EventState2) Mod MaxItemAmount] = Null)
					
					If (Not isSlotEmpty) Then
						;successful
						e\EventState2 = (i+e\EventState2) Mod MaxItemAmount
					EndIf
					
					If Rand(8)=1 Then
						If isSlotEmpty Then
							e\EventState3 = 3.1
						Else
							e\EventState3 = 3.0
						EndIf
						
						e\EventState = Rand(1,5)
						
						;Checking if the selected nostalgia item already exists or not
						Local itemName$ = ""
						Select (e\EventState)
							Case 1
								itemName = "Lost Key"
							Case 2
								itemName = "Disciplinary Hearing DH-S-4137-17092"
							Case 3
								itemName = "Coin"
							Case 4
								itemName = "Movie Ticket"
							Case 5
								itemName = "Old Badge"
						End Select
						
						Local itemExists% = False
						For it.Items = Each Items
							If (it\name = itemName) Then
								itemExists = True
								e\EventState3 = 1.0
								e\EventState = 0.0
								Exit
							EndIf
						Next
						
						If ((Not itemExists) And (Not isSlotEmpty)) Exit
						Else
							If isSlotEmpty Then
								e\EventState3 = 2.0
							Else
								e\EventState3 = 1.0
								Exit
							EndIf
						EndIf
					Next
				EndIf
			EndIf
			
			
			;trade successful
			If e\EventState3 = 1.0
				Local shouldCreateItem% = False
				
				For itt.ItemTemplates = Each ItemTemplates
					If (IsItemGoodFor1162(itt)) Then
						Select Inventory[e\EventState2]\itemtemplate\tempname
							Case "key"
								If itt\tempname = "key1" Lor itt\tempname = "key2" And Rand(2)=1
									shouldCreateItem = True
									DebugLog "lostkey"
								EndIf
							Case "paper","oldpaper"
								If itt\tempname = "paper" And Rand(12)=1 Then
									shouldCreateItem = True
									DebugLog "paper"
								EndIf
							Case "gasmask","gasmask3","supergasmask","hazmatsuit","hazmatsuit2","hazmatsuit3"
								If itt\tempname = "gasmask" Lor itt\tempname = "gasmask3" Lor itt\tempname = "supergasmask" Lor itt\tempname = "hazmatsuit" Lor itt\tempname = "hazmatsuit2" Lor itt\tempname = "hazmatsuit3" And Rand(2)=1
									shouldCreateItem = True
									DebugLog "gasmask hazmat"
								EndIf
							Case "key1","key2","key3"
								If itt\tempname = "key1" Lor itt\tempname = "key2" Lor itt\tempname = "key3" Lor itt\tempname = "misc" And Rand(6)=1
									shouldCreateItem = True
									DebugLog "key"
								EndIf
							Case "vest","finevest"
								If itt\tempname = "vest" Lor itt\tempname = "finevest" And Rand(1)=1
									shouldCreateItem = True
									DebugLog "vest"
								EndIf
							Default
								If itt\tempname = "misc" And Rand(6)=1
									shouldCreateItem = True
									DebugLog "default"
								EndIf
						End Select
					EndIf
					
					If (shouldCreateItem) Then
						RemoveItem(Inventory[e\EventState2])
						it=CreateItem(itt\name,itt\tempname,EntityX(pp,True),EntityY(pp,True),EntityZ(pp,True))
						EntityType(it\collider, HIT_ITEM)
						PlaySound_Strict LoadTempSound("SFX\SCP\1162\Exchange"+Rand(0,4)+".ogg")
						e\EventState3 = 0.0
						
						
						GiveAchievement(Achv1162)
						MouseHit1 = False
						Exit
					EndIf
				Next
				;trade not sucessful (player got in return to injuries a new item)
			ElseIf e\EventState3 = 2.0
				;Injuries = Injuries + 5.0
				DamageSPPlayer(50, True)
				pvt = CreatePivot()
				PositionEntity pvt, EntityX(Collider),EntityY(Collider)-0.05,EntityZ(Collider)
				TurnEntity pvt, 90, 0, 0
				EntityPick(pvt,0.3)
				de.Decals = CreateDecal(DECAL_BLOODSPLAT2, PickedX(), PickedY()+0.005, PickedZ(), 90, Rand(360), 0)
				de\Size = 0.75 : ScaleSprite de\obj, de\Size, de\Size
				pvt = FreeEntity_Strict(pvt)
				For itt.ItemTemplates = Each ItemTemplates
					If IsItemGoodFor1162(itt) And Rand(6)=1
						it = CreateItem(itt\name, itt\tempname, EntityX(pp,True),EntityY(pp,True),EntityZ(pp,True))
						EntityType(it\collider, HIT_ITEM)
						GiveAchievement(Achv1162)
						MouseHit1 = False
						e\EventState3 = 0.0
						If (Not IsSPPlayerAlive()) Then
							DeathMSG = GetLocalStringR("Singleplayer", "cont_1162_death", Designation)
							PlaySound_Strict LoadTempSound("SFX\SCP\1162\BodyHorrorExchange"+Rand(1,4)+".ogg")
							LightFlash = 5.0
							Kill()
						Else
							PlaySound_Strict LoadTempSound("SFX\SCP\1162\BodyHorrorExchange"+Rand(1,4)+".ogg")
							LightFlash = 5.0
							Msg = GetLocalString("Singleplayer", "cont_1162_1")
							MsgTimer = 70*5
						EndIf
						Exit
					EndIf
				Next
				;trade with nostalgia item
			ElseIf e\EventState3 >= 3.0
				If e\EventState3 < 3.1
					PlaySound_Strict LoadTempSound("SFX\SCP\1162\Exchange"+Rand(0,4)+".ogg")
					RemoveItem(Inventory[e\EventState2])
				Else
					;Injuries = Injuries + 5.0
					DamageSPPlayer(50, True)
					pvt = CreatePivot()
					PositionEntity pvt, EntityX(Collider),EntityY(Collider)-0.05,EntityZ(Collider)
					TurnEntity pvt, 90, 0, 0
					EntityPick(pvt,0.3)
					de.Decals = CreateDecal(DECAL_BLOODSPLAT2, PickedX(), PickedY()+0.005, PickedZ(), 90, Rand(360), 0)
					de\Size = 0.75 : ScaleSprite de\obj, de\Size, de\Size
					pvt = FreeEntity_Strict(pvt)
					If (Not IsSPPlayerAlive()) Then
						DeathMSG = GetLocalStringR("Singleplayer", "cont_1162_death", Designation)
						PlaySound_Strict LoadTempSound("SFX\SCP\1162\BodyHorrorExchange"+Rand(1,4)+".ogg")
						LightFlash = 5.0
						Kill()
					Else
						PlaySound_Strict LoadTempSound("SFX\SCP\1162\BodyHorrorExchange"+Rand(1,4)+".ogg")
						LightFlash = 5.0
						Msg = GetLocalString("Singleplayer", "cont_1162_2")
						MsgTimer = 70*5
					EndIf
					e\EventState2 = 0.0
				EndIf
				Select e\EventState
					Case 1
						it = CreateItem("Lost Key","key",EntityX(pp,True),EntityY(pp,True),EntityZ(pp,True))
					Case 2
						it = CreateItem("Disciplinary Hearing DH-S-4137-17092","oldpaper",EntityX(pp,True),EntityY(pp,True),EntityZ(pp,True))
					Case 3
						it = CreateItem("Coin","coin",EntityX(pp,True),EntityY(pp,True),EntityZ(pp,True))
					Case 4
						it = CreateItem("Movie Ticket","ticket",EntityX(pp,True),EntityY(pp,True),EntityZ(pp,True))
					Case 5
						it = CreateItem("Old Badge","badge",EntityX(pp,True),EntityY(pp,True),EntityZ(pp,True))
				End Select
				EntityType(it\collider, HIT_ITEM)
				GiveAchievement(Achv1162)
				MouseHit1 = False
				e\EventState3 = 0.0
			EndIf
			pp = FreeEntity_Strict(pp)
		EndIf
	
End Function

;~IDEal Editor Parameters:
;~F#1
;~C#Blitz3D