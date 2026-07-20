################################################################### 
###          2 Ship 2 Harkinian - Texture Pack Updater          ### 
###               Authors: Purple Hato, Archez, and Eblo        ###
### Description: Update texture pack to 2S2H 4.1.0 standard     ###
###################################################################

# This tool is for those who work on Texture Packs and need to update them from 2S2H 4.0.0 onwards.
# In those new versions, texture names and folder will be standardized to use the updated decomp names. 

# 1. Ensure that you can run PowerShell scripts on your computer
# 2. Create a backup of your original texture folder, just to be safe
# 3. Run the script and provide the path to the folder you want to convert
# 4. Copy your newly renamed textures to a freshly extracted Dev Build from Retro, and you're good to go
# 5. Make sure not to include the manifest.json file when copying 

Write-Host "###################################################################`r 
###          2 Ship 2 Harkinian - Texture Pack Updater          ###`r
###               Authors: Purple Hato, Archez, and Eblo        ###`r
### Description: Update texture pack to 2S2H 4.1.0 standard     ###`r
###################################################################" -ForegroundColor DarkCyan

Write-Host "WARNING: THIS TOOL WILL MAKE CHANGES TO THE FILES AND FOLDERS IN YOUR TEXTURE PACK.`nPLEASE MAKE A BACKUP BEFORE USING THIS SCRIPT." -ForegroundColor Red

$folderPath = Read-Host "Enter the root folder path of your texture pack"

if (Test-Path -Path $folderPath -PathType Container) {
    Write-Host "Selected folder: $folderPath"

    $files = Get-ChildItem -Path $folderPath -File -Recurse

    if ($files.Count -eq 0) {
        Write-Host "No files found in the selected folder and its subfolders."
    } else {
        $successCount = 0
        $failureCount = 0
		
		Write-Host "Renaming files." -ForegroundColor Green
		
        foreach ($file in $files) {
            $extension = $file.Extension

            $nameWithoutExtension = $file.BaseName

            switch ($nameWithoutExtension) {
                "object_cs_Anim_001708" { @newName = "gBomberJumpAnim" }
                "object_cs_Anim_001A1C" { @newName = "gBomberHoldCuccoAnim" }
                "object_cs_Anim_002044" { @newName = "gBomberBlowgunAnim" }
                "object_cs_Anim_0026B0" { @newName = "gBomberSaluteAnim" }
                "object_cs_Anim_002930" { @newName = "gBomberClimbAnim" }
                "object_cs_Anim_0031C4" { @newName = "gBomberLookAroundAnim" }
                "object_cs_Anim_00349C" { @newName = "gBomberSurpriseAnim" }
                "object_cs_Anim_0036B0" { @newName = "gBomberRunAnim" }
                "object_cs_Anim_003EE4" { @newName = "gBomberTurnAroundAnim" }
                "object_cs_Anim_00433C" { @newName = "gBomberTalkShowingNumberAnim" }
                "object_cs_Anim_00478C" { @newName = "gBomberShowNumberAnim" }
                "object_cs_Anim_004960" { @newName = "gBomberHideUnderBoxAnim" }
                "object_cs_Anim_004C1C" { @newName = "gBomberSitAnim" }
                "object_cs_Anim_005128" { @newName = "gBomberDazedAnim" }
                "object_cs_Anim_0053F4" { @newName = "gBomberTalkHandsOnHipsAnim" }
                "object_cs_Anim_0057C8" { @newName = "gBomberTalkNormalAnim" }
                "object_cs_Anim_005DC4" { @newName = "gBomberArmSwipeAnim" }
                "object_cs_Anim_0060E8" { @newName = "gBomberTauntAnim" }
                "object_cs_Tex_00C520" { @newName = "gBomberEyeOpenTex" }
                "object_cs_Tex_00CD20" { @newName = "gBomberEyeHalfTex" }
                "object_cs_Tex_00D520" { @newName = "gBomberEyeClosedTex" }
                "object_cs_Tex_00DD20" { @newName = "gBomberNumber4Tex" }
                "object_cs_Tex_00E220" { @newName = "gBomberWhiteShirtBackTex" }
                "object_cs_Tex_00E620" { @newName = "gBomberNumber1Tex" }
                "object_cs_Tex_00EA20" { @newName = "gBomberNumber2Tex" }
                "object_cs_Tex_00EE20" { @newName = "gBomberNumber3Tex" }
                "object_cs_Tex_00F220" { @newName = "gBomberNumber5Tex" }
                "object_cs_Skel_00F82C" { @newName = "gBomberSkel" }
                "object_cs_Anim_00FAF4" { @newName = "gBomberHandsOnHipsAnim" }
                "object_cs_Anim_01007C" { @newName = "gBomberWalkAnim" }
                "object_cs_Anim_010B68" { @newName = "gBomberCaughtAnim" }
                "object_fz_DL_001130" { @newName = "gFreezardBodyIntactDL" }
                "object_fz_DL_0021A0" { @newName = "gFreezardBodyHornBrokenDL" }
                "object_fz_DL_002CA0" { @newName = "gFreezardBodyHeadBrokenDL" }
                "object_fz_Tex_002E70" { @newName = "gFreezardSteamTex" }
                "object_fz_DL_0030A0" { @newName = "gFreezardSteamStartDL" }
                "object_fz_DL_003158" { @newName = "gFreezardSteamDL" }
                "object_fz_DL_003260" { @newName = "gFreezardIceSpikeDL" }
                "object_fz_DL_0033F0" { @newName = "gFreezardIceChunkDL" }
                "object_maruta_DL_002220" { @newName = "gPracticeLogBottomLeftBigChunkDL" }
                "object_maruta_DL_0023D0" { @newName = "gPracticeLogBottomRightBigChunkDL" }
                "object_maruta_DL_002568" { @newName = "gPracticeLogBottomLeftCornerChunkDL" }
                "object_maruta_DL_002660" { @newName = "gPracticeLogBottomRightCornerChunkDL" }
                "object_maruta_DL_002758" { @newName = "gPracticeLogTopLeftCornerChunkDL" }
                "object_maruta_DL_002850" { @newName = "gPracticeLogTopRightCornerChunkDL" }
                "object_maruta_DL_002948" { @newName = "gPracticeLogTopLeftBigChunkDL" }
                "object_maruta_DL_002AE0" { @newName = "gPracticeLogTopRightBigChunkDL" }
                "object_maruta_DL_002EC0" { @newName = "gPracticeLogWholeDL" }
                "object_po_composer_DL_004600" { @newName = "gPoeComposerSoulDL" }
                "object_po_composer_DL_006D80" { @newName = "gPoeComposerBatonDL" }
                "object_po_composer_Tex_007E80" { @newName = "gPoeComposerArmTex" }
                "object_po_composer_Tex_008080" { @newName = "gPoeComposerLanternBaseTex" }
                "object_po_composer_Tex_008280" { @newName = "gPoeComposerCoatTex" }
                "object_po_composer_Tex_008480" { @newName = "gPoeComposerLanternGlassTex" }
                "object_po_composer_Tex_008680" { @newName = "gPoeComposerClothPaternTex" }
                "object_po_composer_Tex_008A80" { @newName = "gPoeComposerEyeTex" }
                "object_po_composer_Tex_008C80" { @newName = "gPoeComposerSharpHairCurlTex" }
                "object_po_composer_Tex_008E80" { @newName = "gPoeComposerMoustacheTex" }
                "object_po_composer_Tex_009080" { @newName = "gPoeComposerHatEmblemSharpTex" }
                "object_po_composer_Tex_009280" { @newName = "gPoeComposerHatEmblemFlatTex" }
                "object_po_composer_Tex_009480" { @newName = "gPoeComposerCharedBodyTex" }
                "object_po_composer_Tex_009680" { @newName = "gPoeComposerBroachTex" }
                "gEnBomBowlMan_D_809C61E0" { @newName = "gBomberRedBandanaTex" }
                "gEnBomBowlMan_D_809C61F0" { @newName = "gBomberBlueBandanaTex" }
                "ovl_En_Bombers_DL_12C8" { @newName = "gBomberRedBandanaDL" }
                "ovl_En_Bombers_DL_12D8" { @newName = "gBomberBlueBandanaDL" }
                "gEnBomjima_D_80C00B08" { @newName = "gBomberJimRedBandanaDL" }
                "gEnBomjima_D_80C00B18" { @newName = "gBomberJimBlueBandanaDL" }
                "gEnBomjimb_D_80C03240" { @newName = "gBomberCatchRedBandanaDL" }
                "gEnBomjimb_D_80C03250" { @newName = "gBomberCatchBlueBandanaDL" }
                "object_js_Anim_00016C" { @newName = "gSwordmasterFlailingAnim" }
                "object_js_Anim_0003DC" { @newName = "gSwordmasterStopFlailingAnim" }
                "object_js_Anim_000AD4" { @newName = "gSwordmasterCoweringAnim" }
                "object_js_Anim_000C7C" { @newName = "gSwordmasterSlappingKneeAnim" }
                "object_js_Anim_000F4C" { @newName = "gSwordmasterDefaultAnim" }
                "object_js_Skel_006990" { @newName = "gSwordmasterSkel" }
                "object_astr_obj_DL_002178" { @newName = "gAstralObservatoryBombWallFragmentDL" }
                "object_astr_obj_DL_0022E0" { @newName = "gAstralObservatoryBombWallCrackDL" }
                "object_astr_obj_DL_002380" { @newName = "gAstralObservatoryBombWallDL" }
                "object_astr_obj_Colheader_002498" { @newName = "gAstralObservatoryBombWallCol" }
                "object_pr_Anim_003904" { @newName = "gSkullFishDieAnim" }
                "object_pr_DL_003AB0" { @newName = "gSkullFishBodyDL" }
                "object_pr_DL_003B50" { @newName = "gSkullFishTailDL" }
                "object_pr_DL_003C08" { @newName = "gSkullFishSkullDL" }
                "object_pr_DL_003D10" { @newName = "gSkullFishJawDL" }
                "object_pr_Tex_003DA8" { @newName = "gSkullFishBodyRibTex" }
                "object_pr_Tex_003EA8" { @newName = "gSkullFishTailTex" }
                "object_pr_Tex_003FA8" { @newName = "gSkullFishEyeSocketTex" }
                "object_pr_Tex_004028" { @newName = "gSkullFishJawTex" }
                "object_pr_Tex_004128" { @newName = "gSkullFishGlowingEyesTex" }
                "object_pr_Standardlimb_004148" { @newName = "gSkullFishBodyLimb" }
                "object_pr_Standardlimb_004154" { @newName = "gSkullFishSkullLimb" }
                "object_pr_Standardlimb_004160" { @newName = "gSkullFishJawLimb" }
                "object_pr_Standardlimb_00416C" { @newName = "gSkullFishTailLimb" }
                "object_pr_Skel_004188" { @newName = "gSkullFishSkel" }
                "object_pr_Anim_004274" { @newName = "gSkullFishAttackAnim" }
                "object_pr_Anim_004340" { @newName = "gSkullFishSwimAnim" }
                "object_iknv_obj_DL_00DB60" { @newName = "gIkanaCaveFogDL" }
                "object_iknv_obj_DL_00DDD8" { @newName = "gIkanaCaveCursedDL" }
                "object_iknv_obj_Matanimheader_00F1C0" { @newName = "gIkanaCaveInteriorTexAnim" }
                "object_iknv_obj_DL_010D98" { @newName = "gIkanaCavePurifiedDL" }
                "object_iknv_obj_DL_0115E0" { @newName = "gIkanaCaveSpringWaterDL" }
                "object_iknv_obj_Matanimheader_0117A0" { @newName = "gIkanaCaveSpringWaterTexAnim" }
                "object_iknv_obj_Colheader_0117C8" { @newName = "gIkanaCaveSpringWaterCol" }
                "object_iknv_obj_DL_012700" { @newName = "gIkanaStreamDL" }
                "object_iknv_obj_Matanimheader_012728" { @newName = "gIkanaStreamTexAnim" }
                "object_iknv_obj_Colheader_012788" { @newName = "gIkanaStreamCol" }

				Default { $newName = $nameWithoutExtension }
            }
			
            if ($nameWithoutExtension -ne $newName) {
                $newPath = Join-Path -Path $file.DirectoryName -ChildPath "$newName$extension"

                if (Test-Path -Path $newPath -PathType Leaf) {
					Remove-Item -Path $file.FullName -Force
				} else {
					Move-Item -Path $file.FullName -Destination "$newPath" -Force
				}

                if (Test-Path -Path $newPath -PathType Leaf) {
                    Write-Host "Renamed '$($file.Name)' to '$newName$extension' - Success"
                    $successCount++
                } else {
                    Write-Host "Failed to rename '$($file.Name)' to '$newName$extension'"
                    $failureCount++
                }
            }
        }

        Write-Host "Renamed $successCount files successfully."
        Write-Host "Failed to rename $failureCount files."

		Write-Host "All files have been processed.`nDone!" -ForegroundColor Green
    }
} else {
    Write-Host "Invalid folder path. The script is exiting." -ForegroundColor Red
}