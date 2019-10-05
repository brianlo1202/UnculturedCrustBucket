//Maya ASCII 2019 scene
//Name: present_day_lights.ma
//Last modified: Sat, Oct 05, 2019 04:56:48 AM
//Codeset: UTF-8
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "3.3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Linux 5.0.0-29-generic #31~18.04.1-Ubuntu SMP Thu Sep 12 18:29:21 UTC 2019 x86_64";
fileInfo "license" "education";
createNode transform -n "areaLight3";
	rename -uid "6A22B080-0000-6E4F-5D98-53B7000006A6";
	setAttr ".t" -type "double3" 0.093339939207115752 1.8944785840176339 -6.8085673695324331 ;
	setAttr ".r" -type "double3" -191.41700436362297 6.4342149294932485 -180 ;
	setAttr ".s" -type "double3" 1.6518668800872129 1.8579672202072333 1.3226285767631962 ;
createNode areaLight -n "areaLightShape3" -p "areaLight3";
	rename -uid "6A22B080-0000-6E4F-5D98-8361000013FE";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.9831 1 0.77209997 ;
	setAttr ".in" 1000;
	setAttr ".col" 10.34960065547121;
createNode transform -n "areaLight1";
	rename -uid "6A22B080-0000-6E4F-5D98-60A300000B3A";
	setAttr ".t" -type "double3" -1.9047263881398677 2.7680555307211225 -5.4116068358067864 ;
	setAttr ".r" -type "double3" -187.13930851983574 360.48077183707534 179.99999999999997 ;
	setAttr ".s" -type "double3" 0.74485265747200957 1 1 ;
createNode areaLight -n "areaLightShape1" -p "areaLight1";
	rename -uid "6A22B080-0000-6E4F-5D98-60A300000B39";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.75940001 0.94169998 1 ;
	setAttr ".in" 10;
	setAttr ".col" 2.5967749641332327;
createNode transform -n "areaLight2";
	rename -uid "6A22B080-0000-6E4F-5D98-614600000B59";
	setAttr ".t" -type "double3" -1.1479716029579812 1.6674677829521525 -7.4639661711544578 ;
	setAttr ".r" -type "double3" -184.00838709407176 311.09235542491564 179.99999999999997 ;
	setAttr ".s" -type "double3" 1.3481012288626715 1.6318370992682043 1 ;
createNode areaLight -n "areaLightShape2" -p "areaLight2";
	rename -uid "6A22B080-0000-6E4F-5D98-614600000B5A";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.97930002 1 0.72149998 ;
	setAttr ".in" 105;
	setAttr ".col" 5.5567010130697536;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 109 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 111 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 134 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 21 ".r";
select -ne :lightList1;
	setAttr -s 8 ".l";
select -ne :defaultTextureList1;
	setAttr -s 134 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 8 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "areaLightShape3.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "areaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "areaLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "areaLight2.iog" ":defaultLightSet.dsm" -na;
// End of present_day_lights.ma
