//Maya ASCII 2019 scene
//Name: week1-map.ma
//Last modified: Sat, Oct 19, 2019 11:04:42 PM
//Codeset: 1252
requires maya "2019";
requires -nodeType "ShaderfxShader" "shaderFXPlugin" "1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires "ndiPoseReader" "2008";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18362)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "1EED33F1-47AF-D8A0-3421-F3971D8D14BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.8446660639603918 27.877615216755824 -43.094134149366766 ;
	setAttr ".r" -type "double3" -27.938352728746693 2332.2000000010221 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EA95CCE8-44E2-1E7E-7BAC-EB9793E3A6D2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 64.482680896444094;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4EC5EBCA-403A-680A-24B8-47A2C1E00DD6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.258504367578741 991.54400585995586 -112.93454590986335 ;
	setAttr ".r" -type "double3" -97.500000000000043 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6FF5EBD4-4E6B-251E-11F9-34B5F2AE2924";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 109.9283344111363;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "41BE4177-4D13-3145-C422-F89E967BA830";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "70AEDCA9-432C-9311-11FC-79ABA7F2E3C7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BB0D88D1-4D67-509F-A64F-BFAAF9603ED4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 4.8725364576740589 21.380153422369101 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A05C3529-450F-A1D2-291A-2CAFF3FAEE95";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 60.415476369499196;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	rename -uid "E80F1567-41DD-7C50-0DB1-72BD442D6EF2";
	setAttr ".t" -type "double3" 0 3.3251669421253491 17.326718232012858 ;
	setAttr ".r" -type "double3" -11.83567143527344 0 0 ;
	setAttr ".s" -type "double3" 4.3546127613917047 4.3546127613917047 4.3546127613917047 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "1B4F910F-4764-1FA0-77EF-8AA5AD8A386A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.20000000298023224 0.085096053779125214 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[13]" -type "float3" 0 0.010764084 -0.11648099 ;
	setAttr ".pt[253]" -type "float3" 0 0.017297724 0.0036249226 ;
	setAttr ".pt[264]" -type "float3" 0 -0.027450915 -0.0057526343 ;
	setAttr ".pt[271]" -type "float3" 0 0.036682554 0.007687225 ;
	setAttr ".pt[272]" -type "float3" 0 0.0084224949 0.0017650237 ;
	setAttr ".pt[275]" -type "float3" 0 0.027849566 0.0058361734 ;
createNode transform -n "pCube2";
	rename -uid "70CB3B20-4BF9-9791-793A-718D40A69DF6";
	setAttr ".t" -type "double3" 9.8662117559695055 4.951110361093753 35.618089729140294 ;
	setAttr ".r" -type "double3" 0 12.458414045475628 0 ;
	setAttr ".s" -type "double3" 6.3862470925328427 9.1792744367964296 6.3258139784392382 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "66F3D4AB-40DA-AF67-CDB0-EEBDED34A8BA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[44:45]" -type "float3"  -0.033226438 0 0 -0.033226438 
		0 0;
createNode mesh -n "polySurfaceShape1" -p "pCube2";
	rename -uid "0AACACFF-4A5D-C76F-20A5-FD8FE754DBE3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "1C43833D-480D-8218-4D98-F9B1FCE5BBA3";
	setAttr ".t" -type "double3" 7.0441655432063621 4.951110361093753 28.088298144048011 ;
	setAttr ".r" -type "double3" 0 12.458414045475628 0 ;
	setAttr ".s" -type "double3" 4.2393272720917556 5.3151377663670205 2.8502395182467928 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "A975E5A8-4E30-5CB0-E3A8-ACA9AF9B9D91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[3]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".pt[5]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" 3.7252903e-09 0 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube4";
	rename -uid "74E5CDEC-4CFC-FD54-7517-44BD3BDBD447";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	rename -uid "98E78B9A-43F0-B61F-0368-78B2C01F8318";
	setAttr ".t" -type "double3" 7.6577693259833604 4.951110361093753 24.204411267404147 ;
	setAttr ".s" -type "double3" 7.6724766572105727 3.3808611176124512 0.55281830822747091 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "ECA49BE6-4D79-7F21-5E2F-A588E44E0DB3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47774520516395569 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[23]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[24]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[29]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[30]" -type "float3" 0 0 -1.1920929e-07 ;
createNode mesh -n "polySurfaceShape4" -p "pCube5";
	rename -uid "916DBA4B-488B-20EB-DFCA-2B978FE4B76F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "A13C9944-42CB-2956-870C-3DA879504B2A";
	setAttr ".t" -type "double3" 10.039603415796019 4.951110361093753 26.79111440538987 ;
	setAttr ".r" -type "double3" 0 97.563448074177188 0 ;
	setAttr ".s" -type "double3" 17.378695308370837 3.3808611176124512 0.55281830822747091 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "97556170-42A8-0D37-6432-7A9C9D704EC7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7";
	rename -uid "49E7101E-4D0E-31EC-8A03-4AB504F1B497";
	setAttr ".t" -type "double3" 9.0179304000878968 0.17802743770679275 -2.2837435937143669 ;
	setAttr ".r" -type "double3" 0 100.12386940209353 0 ;
	setAttr ".s" -type "double3" 17.378695308370837 6.3522152493003912 4.4044460266888175 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "F580B9AF-4A1F-AB0C-C3E3-229DD3B22A76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "D2706B34-4555-C053-D79F-EBBDF27CB435";
	setAttr ".t" -type "double3" -4.6497246490581485 0.044893380498939539 -1.5188014949938622 ;
	setAttr ".r" -type "double3" 0 91.048834812941323 0 ;
	setAttr ".s" -type "double3" 17.378695308370837 6.5445804126046463 9.2061451954014792 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "20492770-4F4E-7C54-B49D-279801D6BD91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[8:15]" -type "float3"  -0.032365441 -0.072369054 
		0.032498971 0.032365434 -0.072369054 0.032498971 0.032365434 -0.072369054 -0.032498971 
		-0.032365434 -0.072369054 -0.032498959 0 -0.10010608 0 0 -0.10010608 0 0 -0.10010608 
		0 0 -0.10010608 0;
createNode mesh -n "polySurfaceShape6" -p "pCube8";
	rename -uid "BC94F3A4-4038-72E7-FC23-BCA8CA40D3B0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "0F76E10B-48B9-DEE5-8F62-4D9193A482A6";
	setAttr ".t" -type "double3" -0.037827825144777671 2.9459147322349812 27.680097512328253 ;
	setAttr ".r" -type "double3" 0 91.048834812941323 0 ;
	setAttr ".s" -type "double3" 6.5392071075211673 8.7159993819507804 10.120619645136912 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "0C284015-4DF9-23D4-EC5D-43AA9C528645";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47630858421325684 0.60354804992675781 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[48]" -type "float3" -7.4505806e-09 0 -5.8207661e-11 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0 -5.8207661e-11 ;
	setAttr ".pt[52]" -type "float3" -7.4505806e-09 0 -5.8207661e-11 ;
	setAttr ".pt[53]" -type "float3" -7.4505806e-09 0 -5.8207661e-11 ;
createNode mesh -n "polySurfaceShape3" -p "pCube9";
	rename -uid "FB507C49-42FF-6076-3F10-C68C61303798";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "CF485AC4-45C1-49B3-3148-05A9BAB6F407";
	setAttr ".t" -type "double3" 7.6455560862989218 4.9508650292894938 23.52527255942449 ;
	setAttr ".r" -type "double3" 0 127.03509979702196 0 ;
	setAttr ".s" -type "double3" 4.1108146646498787 3.3808611176124512 0.55281830822747091 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "CFFE8712-466C-21FE-6E63-DA8E6D6F45E2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "C75A23F4-4146-4FC4-5FB0-12B30EA8F8B4";
	setAttr ".t" -type "double3" 6.7308778317781961 18.537544228417659 32.628009341579848 ;
	setAttr ".r" -type "double3" 0 127.03509979702196 0 ;
	setAttr ".s" -type "double3" 0.22787174541170946 1.2475348891635964 0.24933323133412669 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "F028E162-4E21-CB37-A15B-D38629CA5211";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.2543 0 0.0272 1 0.2543 0 0.0272
		 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543
		 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272
		 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543
		 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272
		 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1 0.2543 0 0.0272 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12";
	rename -uid "823D63C1-4BB6-8615-AE43-F7B3D983650A";
	setAttr ".t" -type "double3" 4.5358781618108317 11.84637916573408 25.732318109117433 ;
	setAttr ".r" -type "double3" 0 103.03237789735354 0 ;
	setAttr ".s" -type "double3" 0.35301783887349397 2.7965212610820931 0.37470035410653457 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "EA87199E-468F-2000-5861-AE9F33AEC94D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13";
	rename -uid "BBA0D997-405F-7408-D297-5CAFDEE83515";
	setAttr ".t" -type "double3" 0.80459883668602927 4.951110361093753 23.698593935358954 ;
	setAttr ".r" -type "double3" 0 82.137640102536039 0 ;
	setAttr ".s" -type "double3" 2.8532341547999001 3.3808611176124512 0.74974472897835265 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "2D091642-4ED1-E7DD-776F-E28C97413A10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.27878433 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.27878433 0 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	rename -uid "0663B448-49C6-543A-D38B-BFA5935FDADD";
	setAttr ".t" -type "double3" -1.3451887840308272 5.8358026161266432 26.655322311561147 ;
	setAttr ".s" -type "double3" 15.100616930732814 3.3808611176124512 0.74974472897835265 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "AC1AFA7A-4B67-94B5-CD8F-F5838FD69CA4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
createNode mesh -n "polySurfaceShape5" -p "pCube14";
	rename -uid "D8FACED0-4E35-50C7-E8BB-93BADAE949CD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15";
	rename -uid "2E6F6B4F-4563-956F-E4BC-D49C2E29AF1F";
	setAttr ".t" -type "double3" 8.7770068294038275 5.3026229402637677 24.391637206155313 ;
	setAttr ".r" -type "double3" 0 127.03509979702196 0 ;
	setAttr ".s" -type "double3" 1.6528334079843985 4.6277662231890275 1.6739279184798843 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "9FB21509-4ED2-8965-C37C-E7A992CD363F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	rename -uid "D4271CF3-4A45-A41C-5E0D-D9B09E1914C2";
	setAttr ".t" -type "double3" 4.0891898181174211 5.0942097320629216 23.327882049720333 ;
	setAttr ".r" -type "double3" 0 -50.359092792325512 0 ;
	setAttr ".s" -type "double3" 1.2134460563595173 2.2072399333286987 0.29013073712396265 ;
	setAttr ".rp" -type "double3" -1.2833805587027483 -0.50000006104241357 -0.24974369827990295 ;
	setAttr ".sp" -type "double3" -0.49999999952521079 -0.5000000180552866 -0.49999862526749439 ;
	setAttr ".spt" -type "double3" -0.78338055917753757 -4.2987126969151745e-08 0.25025492698759144 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "8B365E3D-46DE-F868-0659-07B3062FB896";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998 0.059999999 0 1 0.086599998
		 0.059999999 0 1 0.086599998 0.059999999 0 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17";
	rename -uid "0EE13F32-478E-0BCD-C531-DB837833C383";
	setAttr ".t" -type "double3" 0.3217450696098052 5.8358026161266432 26.655322311561147 ;
	setAttr ".s" -type "double3" 1.6696592029584567 3.3808611176124512 0.74974472897835265 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "259C8F8F-497E-D8C7-AFAF-1EA849F871C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18";
	rename -uid "5BF92CDD-4A59-1B29-906A-E1BCA2DFC697";
	setAttr ".t" -type "double3" 8.5877288720574541 0.96159081566907156 5.8698850500217352 ;
	setAttr ".r" -type "double3" 0 102.18357463943975 0 ;
	setAttr ".s" -type "double3" 4.9995867670334269 7.2230425000196616 2.7033810423655882 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "A9C6F56B-444F-32BE-7778-E790F6360B42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19";
	rename -uid "5679CC26-4EFA-32A3-B713-DDA46AA8A3CF";
	setAttr ".t" -type "double3" 6.2640733803883286 0.96159081566908577 2.5512803001121025 ;
	setAttr ".r" -type "double3" 0 99.374473837783356 0 ;
	setAttr ".s" -type "double3" 3.9810581054350829 9.8074817095278632 0.83827013913212456 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "CB3CC6FC-4BF6-4C65-279F-149493BB75A9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20";
	rename -uid "55E7B741-4178-E067-EF73-619CAE0621AC";
	setAttr ".t" -type "double3" 6.2593830754693416 0.96159081566908577 0.51053013966196925 ;
	setAttr ".r" -type "double3" 0 99.374473837783356 0 ;
	setAttr ".s" -type "double3" 3.9810581054350829 9.8074817095278632 0.83827013913212456 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "2A88638E-4C01-64F4-4F6F-9280BC0DFE34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21";
	rename -uid "0A577158-44A6-F57D-92F4-3CB3D83C6660";
	setAttr ".t" -type "double3" -22.322832997780413 -0.11343603525831591 -15.196301718350997 ;
	setAttr ".r" -type "double3" 0 91.048834812941323 0 ;
	setAttr ".s" -type "double3" 60.175938784666876 16.608446446377513 0.37146196086665828 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "DBB97185-4D30-A406-24FF-68B222F4AF14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22";
	rename -uid "851983F6-4FF6-0FC6-BF5F-87935CC52183";
	setAttr ".t" -type "double3" -22.322832997780413 5.3461670758236242 37.705696063813946 ;
	setAttr ".r" -type "double3" 0 179.54181235916926 0 ;
	setAttr ".s" -type "double3" 44.675555252868222 4.3129747632537097 0.37146196086665828 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "DB5B6058-48C0-B09A-D15C-33A63683EE8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.66206348 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.66206348 0 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23";
	rename -uid "0904DE97-4A51-55D8-DD95-CBAB55E9121C";
	setAttr ".t" -type "double3" 21.271791110728806 -0.75627134391501993 -15.140846243339311 ;
	setAttr ".r" -type "double3" 0 89.939619767313275 0 ;
	setAttr ".s" -type "double3" 55.928926514000715 6.8579109910573903 0.37146196086665828 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "ED436630-4822-CAAA-AF5D-FEB5745CF326";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.97303247 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.97303247 0 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24";
	rename -uid "692FB68F-48CB-702A-14FB-8D96D82DCB15";
	setAttr ".t" -type "double3" 21.271791110728806 -0.75627134391501993 -14.614495741317118 ;
	setAttr ".r" -type "double3" 0 0.96378365539704602 0 ;
	setAttr ".s" -type "double3" 55.928926514000715 6.8579109910573903 0.37146196086665828 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "B43D0EB2-4A8F-0420-EE44-8ABDA299E3CA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.97303247 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.97303247 0 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25";
	rename -uid "9219733F-4DBA-8826-8976-61986D712A68";
	setAttr ".t" -type "double3" 0.3217450696098052 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "C0D7786F-4528-A159-9BC1-BDAFA3953049";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26";
	rename -uid "1D1C26A3-4F2E-382D-F5E9-C6B71827EBBB";
	setAttr ".t" -type "double3" -1.5416813684659614 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "56F846F0-4CE4-345C-B02F-0090A2789249";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27";
	rename -uid "5627BDF2-4C48-457D-10B8-41857E0A8240";
	setAttr ".t" -type "double3" -3.5691432863713404 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "DD3875A0-4EEE-831D-B010-C9BF78052735";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28";
	rename -uid "5A4C2E20-4468-5B75-961C-35979E889C4A";
	setAttr ".t" -type "double3" -5.552256162590016 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "B5B240F9-4904-3E2A-F21A-EB88DBB6BB0E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29";
	rename -uid "F8D13B56-42E0-6B0B-2CED-3B8042453B6B";
	setAttr ".t" -type "double3" -7.5456917703628283 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "78473C9E-4EED-DC45-3B0F-5EA50398C1E1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30";
	rename -uid "F7399BDF-4FF7-1F3D-4D62-AC96AE2C33BE";
	setAttr ".t" -type "double3" -9.5679143297454736 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "E4E1C6DA-4126-98E2-E584-9CA64D7B6D2B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31";
	rename -uid "8C28E6CD-4798-0A4B-C41B-6EBC968833C4";
	setAttr ".t" -type "double3" -11.526585133664987 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "740B1B9F-42A4-15DF-CB90-1A99FCCACCDD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32";
	rename -uid "3E60984D-41A8-98CB-632B-A29B1F235D1C";
	setAttr ".t" -type "double3" -13.431134458840669 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	rename -uid "CF482855-458E-8B85-094C-6AA0DD0CB300";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33";
	rename -uid "3BAD483F-4A69-FE49-4428-EF8C1A31300E";
	setAttr ".t" -type "double3" -15.910299261516725 7.0966228868719323 26.547404537416828 ;
	setAttr ".s" -type "double3" 0.52058334297002262 3.0212933444731607 0.61815701159741698 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	rename -uid "5F2E6223-4539-6EA4-EFDB-6AA2A5D22190";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34";
	rename -uid "ABBFDBD3-4BFF-D01F-E224-4D9150EFED21";
	setAttr ".t" -type "double3" 5.1470021212052322 6.0564190349353435 24.083927202670335 ;
	setAttr ".s" -type "double3" 0.42647461307305323 3.0212933444731607 0.42320225429264235 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	rename -uid "3EDAB4C1-487A-7B80-A16C-BA996809CA5A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube35";
	rename -uid "2B4FA6C2-48FF-5395-7132-298ACA752181";
	setAttr ".t" -type "double3" 6.8445860413878652 6.0564190349353435 24.083927202670335 ;
	setAttr ".s" -type "double3" 0.42647461307305323 3.0212933444731607 0.42320225429264235 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape35" -p "pCube35";
	rename -uid "DD0045B1-4B5C-0F85-272B-50B1DCEF9D82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube36";
	rename -uid "05E9A093-46A0-A1F1-5963-F0B698E81756";
	setAttr ".t" -type "double3" 1.8448875303107739 6.0564190349353417 24.08849018644732 ;
	setAttr ".s" -type "double3" 0.42647461307305323 3.0212933444731607 0.42320225429264235 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape36" -p "pCube36";
	rename -uid "E2B2A941-484D-315E-44A7-5991F234CCAA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube37";
	rename -uid "6224F655-4FB4-C9F6-A636-43BDB70510F4";
	setAttr ".t" -type "double3" 0.46740315390068465 6.0564190349353417 24.132712318770807 ;
	setAttr ".s" -type "double3" 0.42647461307305323 3.0212933444731607 0.42320225429264235 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape37" -p "pCube37";
	rename -uid "20BBA89C-4D95-0BBE-E460-9AAC0F9A26B2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube38";
	rename -uid "E8F72781-411D-9DBA-91F7-E4A1430B5600";
	setAttr ".t" -type "double3" 2.0466720884972123 6.0564190349353417 23.013903398202419 ;
	setAttr ".s" -type "double3" 0.42647461307305323 3.0212933444731607 0.42320225429264235 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape38" -p "pCube38";
	rename -uid "78DC0ACC-4BDE-473F-30DE-94A011DED2B7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube39";
	rename -uid "38F66E31-4331-1ECA-F48A-FCAAED459EA7";
	setAttr ".t" -type "double3" 4.6591281614792512 6.0564190349353417 23.013903398202419 ;
	setAttr ".s" -type "double3" 0.42647461307305323 3.0212933444731607 0.42320225429264235 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape39" -p "pCube39";
	rename -uid "643D76C9-4420-710B-30CE-188DB8B6DF18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999
		 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227
		 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508
		 0.29179999 0.227 1 0.4508 0.29179999 0.227 1 0.4508 0.29179999 0.227 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -1.4901161e-08 7.4505806e-09 
		0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 7.4505806e-09 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	rename -uid "A90C00FA-4513-80E2-53EB-C8AE79E90605";
	setAttr ".t" -type "double3" -4.1200770037746759 4.8797834317520161 4.4983956287424522 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.77237128160565327 0.77237128160565327 0.77237128160565327 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "BC57B47E-44ED-5EB1-12C4-89862775071B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50773680210113525 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[14:29]" -type "float3"  -0.084537543 0.28661215 0.11505831 
		0.040066745 0.28661215 0.14347538 0.0072928648 0.28661215 0 0.13999155 0.28661215 
		0.063852571 0.13999166 0.28661215 -0.063852541 0.040066745 0.28661215 -0.14347538 
		-0.084537543 0.28661215 -0.11505833 -0.13999166 0.28661215 0 -0.084537543 -0.28661215 
		0.11505831 0.040066745 -0.28661215 0.14347538 0.0072928648 -0.28661215 0 0.13999155 
		-0.28661215 0.063852571 0.13999166 -0.28661215 -0.063852541 0.040066745 -0.28661215 
		-0.14347538 -0.084537543 -0.28661215 -0.11505833 -0.13999166 -0.28661215 0;
createNode transform -n "pCube40";
	rename -uid "73419F72-4569-2629-1AEF-D9AED911091F";
	setAttr ".t" -type "double3" 12.772755308393974 0.96159081566907156 10.779514844344895 ;
	setAttr ".r" -type "double3" 0 103.43547409109334 0 ;
	setAttr ".s" -type "double3" 1.6001128092987376 4.3296630079941778 2.1856463684102496 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape40" -p "pCube40";
	rename -uid "C0D8FFB5-46F4-5E57-F9BA-2AB7B34AA9B5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.6631 0.64020002 0.40310001 1
		 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube41";
	rename -uid "975709C6-4B45-77DF-A6B9-E0AE70AE8C61";
	setAttr ".t" -type "double3" 14.933690046887641 0.96159081566907156 10.779514844344895 ;
	setAttr ".r" -type "double3" 0 103.43547409109334 0 ;
	setAttr ".s" -type "double3" 1.6001128092987376 3.2515471158861309 2.1856463684102496 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape41" -p "pCube41";
	rename -uid "9E0BDD9F-4E1D-50B7-D17E-DAADBB943ADA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.6631 0.64020002 0.40310001 1
		 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube42";
	rename -uid "0191E0D3-45FC-BE4E-E9A3-60B6FB47873C";
	setAttr ".t" -type "double3" 5.1553533667206413 6.8208157870867119 -1.4481474109384203 ;
	setAttr ".r" -type "double3" -85.645432204124816 99.374473837783043 -2.5444437451708134e-14 ;
	setAttr ".s" -type "double3" 1.4090476155747931 10.860996495362819 0.19819651101015212 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape42" -p "pCube42";
	rename -uid "914C3414-4DE1-BD5F-A6F6-319FFB112C00";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.6631 0.64020002 0.40310001 1
		 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube43";
	rename -uid "4E0EC3B6-4249-DF50-B388-03B48E3E76D9";
	setAttr ".t" -type "double3" 14.196190758403636 0.56122540460976433 11.946696411364728 ;
	setAttr ".r" -type "double3" 0 103.43547409109334 0 ;
	setAttr ".s" -type "double3" 1.6001128092987376 3.2515471158861309 2.1856463684102496 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape43" -p "pCube43";
	rename -uid "6825AC7B-4A53-E711-B2DE-398974C0A861";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.6631 0.64020002 0.40310001 1
		 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube44";
	rename -uid "22C89698-4C98-525B-9898-19A7203D6D27";
	setAttr ".t" -type "double3" 8.8444702377030016 -4.2853033478015536 -2.0137519294810895 ;
	setAttr ".r" -type "double3" 19.166543826605754 100.72482116970124 19.481826906259442 ;
	setAttr ".s" -type "double3" 17.91447513850283 6.5480520912981142 4.5402337427475814 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000000000000022 0.5 ;
createNode mesh -n "pCubeShape44" -p "pCube44";
	rename -uid "49CD815C-4D86-ACDB-21E8-37BA1E217A94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 24 ".clst[0].clsp[0:23]"  0.6631 0.64020002 0.40310001 1
		 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631
		 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001
		 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002 0.40310001 1 0.6631 0.64020002
		 0.40310001 1 0.6631 0.64020002 0.40310001 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[2]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[4]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[6]" -type "float3" 0.0037184637 0 -0.082169831 ;
	setAttr ".pt[8]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".pt[11]" -type "float3" -1.4901161e-08 7.4505806e-09 0 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		mc 0 4 0 3 9 6
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		mc 0 4 7 10 15 12
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		mc 0 4 13 16 21 18
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		mc 0 4 19 22 4 1
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		mc 0 4 5 23 17 11
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		mc 0 4 20 2 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode materialInfo -n "materialInfo3";
	rename -uid "9FE17ED7-411B-FFD5-3CBC-F4BD8BAD680C";
createNode shadingEngine -n "ShaderfxShader3SG";
	rename -uid "85DF680B-45C3-57E2-6A98-13966EBE2059";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode ShaderfxShader -n "SolidColor";
	rename -uid "B178176F-4E36-E60D-2B93-97BB4B2933B8";
	addAttr -ci true -uac -k true -sn "Specular_Color" -ln "Specular_Color" -at "float3" 
		-nc 3;
	addAttr -ci true -k true -sn "Specular_ColorR" -ln "Specular_ColorR" -dv 0.5 -at "float" 
		-p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorG" -ln "Specular_ColorG" -dv 0.5 -at "float" 
		-p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorB" -ln "Specular_ColorB" -dv 0.5 -at "float" 
		-p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_Power" -ln "Specular_Power" -dv 0.5 -at "float";
	addAttr -ci true -uaf -sn "Texture_Map1266" -ln "Texture_Map1266" -dt "string";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=7\n#NT=10100 1 Hw Material Base-Hw Shader Nodes-Core\n\tPC=35\n\tname=1 v=5000 _Material\n\tversion=1 v=2003 1.842000\n\tposx=1 v=2003 10.000000\n\tposy=1 v=2003 10.000000\n\tclassname=1 v=5000 Hw Material Base\n\tsubmenuname=1 v=5000 Core\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 73\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -1129.380005\n\tgrpPosY=1 v=2003 -143.923004\n\tdisableconsolidation_HwShader=2 e=1 v=2001 0\n\tvalue_ClampDynamicLights=2 e=1 v=2002 99\n\tvalue_MaxNumberLights=2 e=1 v=2002 3\n\tvalue_Gamma=2 e=2 v=2001 0\n\tvalue_Wireframe=2 e=3 v=2001 0\n\tvalue_DepthTest=2 e=4 v=2001 1\n\tvalue_DepthWrite=2 e=4 v=2001 1\n\tvalue_CastShadow=2 e=5 v=2001 1\n\tvalue_SurfaceMaskCutoff=2 e=6 v=2003 0.000000\n\tvalue_SSAO=2 e=7 v=2001 1\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_FlatTessellationBlend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\tvalue_ClippingBiasAdd=2 e=902 v=2003 5.000000\n"
		+ "\toptions_Displacement=2 e=1000 v=5012 1\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_DisplacementMultiplier=2 e=1002 v=2003 1.000000\n\tvalue_DisplacementOffset=2 e=1003 v=2003 0.000000\n\tcgfxprofile_HwShader=2 e=1999 v=5012 0\n\tconfig_HwShader=2 e=2000 v=5012 1\n\tshadername_HwShader=2 e=2001 v=5000 \n\tsaveshadertodisk_HwShader=2 e=2002 v=5015 \n\tgroup=-1\n\tISC=9\n\t\tSVT=2002 2002 0 0 0 _NumberOfLights\n\t\tSVT=5001 3002 0 0 0 _ObjectVertexPosition\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 3002 0 0 0 _Displacement\n\t\tSVT=5001 5018 0 0 0 _SurfaceShader\n\t\tSVT=5001 2003 0 0 0 _SurfaceMask\n\t\tSVT=5001 2003 0 0 0 _SurfaceMaskCutoff\n\t\tSVT=2001 2001 0 0 0 _Gamma\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=0\n#NT=10100 1 Traditional Game Surface Shader-Hw Shader Nodes-Surface Shaders\n\tPC=26\n\tname=1 v=5000 TraditionalGameSurfaceShader\n\tversion=1 v=2003 1.481000\n\tposx=1 v=2003 -200.000000\n\tposy=1 v=2003 10.000000\n\tpreviewswatch=1 v=2002 2\n\tclassname=1 v=5000 Traditional Game Surface Shader\n\tsubmenuname=1 v=5000 Surface Shaders\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n"
		+ "\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 74\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -990.607971\n\tgrpPosY=1 v=2003 169.649994\n\toptions_Diffuse=2 e=1 v=5012 0\n\toptions_Specular=2 e=1 v=5012 0\n\tvalue_FlipBackFaces=2 e=1 v=2001 1\n\tvalue_TranslucencyDistortion=2 e=1100 v=2003 0.200000\n\tvalue_TranslucencyPower=2 e=1101 v=2003 3.000000\n\tvalue_TranslucencyMinimum=2 e=1102 v=2003 0.000000\n\tcolor_TranslucencyOuter=2 e=1104 v=3003 1.000000,0.640000,0.250000,1.000000\n\tcolor_TranslucencyMedium=2 e=1105 v=3003 1.000000,0.210000,0.140000,1.000000\n\tcolor_TranslucencyInner=2 e=1106 v=3003 0.250000,0.050000,0.020000,1.000000\n\tvalue_UseStreamLightData=2 e=1500 v=2001 0\n\tvalue_BakedLightColorSet=2 e=1502 v=5000 BakedLightColorSet\n\tvalue_BakedLightColorSetUnshared=2 e=1503 v=2001 1\n\tgroup=-1\n\tISC=17\n\t\tSVT=5001 2003 0 0 0 _Opacity\n\t\tSVT=5001 3002 0 0 0 _Emissive\n\t\tSVT=5001 2003 0 0 0 _AmbientOcclusion\n\t\tSVT=5001 3002 0 0 0 _DiffuseColor\n\t\tSVT=5001 2003 0 0 0 _SpecularPower\n\t\tSVT=5001 3002 0 0 0 _SpecularColor\n\t\tSVT=5001 3002 0 0 0 _Reflection\n"
		+ "\t\tSVT=5001 2003 0 0 0 _ReflectionIntensity\n\t\tSVT=5001 3002 0 0 0 _Normal\n\t\tSVT=5001 3002 0 0 0 _ObjectThickness\n\t\tSVT=5001 2003 0 0 0 _BlendedNormal\n\t\tSVT=5001 2003 0 0 0 _BlendedNormalMask\n\t\tSVT=5001 3002 0 0 0 _AnisotropicDirection\n\t\tSVT=5001 3001 0 0 0 _AnisotropicSpread\n\t\tSVT=5001 3002 0 0 0 _IBL\n\t\tSVT=5001 2003 0 0 0 _Weight\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 5018 0 _SurfaceShader\n\t\tCC=1\n\t\t\tC=1 0 0 0 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=5\n\tname=1 v=5000 Specular_Color\n\tposx=1 v=2003 -487.500000\n\tposy=1 v=2003 320.000000\n\tcolor=2 e=0 v=3003 0.334400,0.334400,0.334400,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=2 1 2 1 5 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=10100 1 Vertex Color-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _VertexColor\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 -684.476013\n\tposy=1 v=2003 -283.273010\n\tclassname=1 v=5000 Vertex Color\n"
		+ "\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 70\n\thelpid=1 v=2002 24\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -546.642029\n\tgrpPosY=1 v=2003 -40.049500\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tcolorsetname_Vertex=2 e=2 v=5000 \n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tgroup=-1\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _RGB\n\t\tCC=1\n\t\t\tC=3 1 0 6 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Alpha\n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Specular_Power\n\tposx=1 v=2003 -493.750000\n\tposy=1 v=2003 191.250000\n\tvalue=2 e=0 v=2003 40.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=4 0 1 1 4 0 0\n\t\t\tCPC=0\n#NT=10100 1 Texture Map-Hw Shader Nodes-Textures\n\tPC=24\n\tname=1 v=5000 Texture_Map\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -687.851013\n\tposy=1 v=2003 -38.218899\n"
		+ "\tclassname=1 v=5000 Texture Map\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\ttexturepath_MyTexture=2 e=1 v=5000 D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/SolidColor.mat\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\ttexturenodename_MyTexture=2 e=5 v=5000 \n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuigroup_MyTexture=2 e=13 v=5000 \n\tuiorder_MyTexture=2 e=13 v=2002 0\n\tgroup=-1\n\tISC=4\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=5 1 0 6 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n"
		+ "\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -440.000000\n\tposy=1 v=2003 -151.250000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=6 0 3 1 3 0 0\n\t\t\tCPC=0\n");
	setAttr ".sprm" -type "string" "Specular_Color~319~Specular_Power~317~Texture_Map1266~278~";
	setAttr -k on ".Specular_Color" -type "float3" 0.3344 0.3344 0.3344 ;
	setAttr -k on ".Specular_Power" 40;
	setAttr ".Texture_Map1266" -type "string" "D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/SolidColor.mat";
createNode materialInfo -n "materialInfo2";
	rename -uid "61181161-4AEF-15AF-35D9-99B36645D2B9";
createNode shadingEngine -n "ShaderfxShader2SG";
	rename -uid "3002273A-4146-7033-A74E-749B75F11764";
	setAttr ".ihi" 0;
	setAttr -s 44 ".dsm";
	setAttr ".ro" yes;
createNode ShaderfxShader -n "autogrid";
	rename -uid "AB323DA1-4974-DDEC-4194-128ECFC339E5";
	addAttr -ci true -uaf -sn "DiffuseTexture" -ln "DiffuseTexture" -dt "string";
	addAttr -ci true -k true -sn "Contrast" -ln "Contrast" -dv 4000 -at "float";
	addAttr -ci true -k true -sn "Specular_Power" -ln "Specular_Power" -dv 40 -at "float";
	addAttr -ci true -uac -k true -sn "Specular_Color" -ln "Specular_Color" -at "float3" 
		-nc 3;
	addAttr -ci true -k true -sn "Specular_ColorR" -ln "Specular_ColorR" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorG" -ln "Specular_ColorG" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorB" -ln "Specular_ColorB" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".ss" no;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=79\n#NT=10100 1 Hw Material Base-Hw Shader Nodes-Core\n\tPC=35\n\tname=1 v=5000 _Material\n\tversion=1 v=2003 1.842000\n\tposx=1 v=2003 1304.020020\n\tposy=1 v=2003 127.968002\n\tclassname=1 v=5000 Hw Material Base\n\tsubmenuname=1 v=5000 Core\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 73\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -1129.380005\n\tgrpPosY=1 v=2003 -143.923004\n\tdisableconsolidation_HwShader=2 e=1 v=2001 0\n\tvalue_ClampDynamicLights=2 e=1 v=2002 99\n\tvalue_MaxNumberLights=2 e=1 v=2002 3\n\tvalue_Gamma=2 e=2 v=2001 0\n\tvalue_Wireframe=2 e=3 v=2001 0\n\tvalue_DepthTest=2 e=4 v=2001 1\n\tvalue_DepthWrite=2 e=4 v=2001 1\n\tvalue_CastShadow=2 e=5 v=2001 1\n\tvalue_SurfaceMaskCutoff=2 e=6 v=2003 0.000000\n\tvalue_SSAO=2 e=7 v=2001 0\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_FlatTessellationBlend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\tvalue_ClippingBiasAdd=2 e=902 v=2003 5.000000\n"
		+ "\toptions_Displacement=2 e=1000 v=5012 1\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_DisplacementMultiplier=2 e=1002 v=2003 1.000000\n\tvalue_DisplacementOffset=2 e=1003 v=2003 0.000000\n\tcgfxprofile_HwShader=2 e=1999 v=5012 0\n\tconfig_HwShader=2 e=2000 v=5012 1\n\tshadername_HwShader=2 e=2001 v=5000 \n\tsaveshadertodisk_HwShader=2 e=2002 v=5015 \n\tgroup=-1\n\tISC=9\n\t\tSVT=2002 2002 0 0 0 _NumberOfLights\n\t\tSVT=5001 3002 0 0 0 _ObjectVertexPosition\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 3002 0 0 0 _Displacement\n\t\tSVT=5001 5018 0 0 0 _SurfaceShader\n\t\tSVT=5001 2003 0 0 0 _SurfaceMask\n\t\tSVT=5001 2003 0 0 0 _SurfaceMaskCutoff\n\t\tSVT=2001 2001 0 0 0 _Gamma\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=0\n#NT=10100 1 Traditional Game Surface Shader-Hw Shader Nodes-Surface Shaders\n\tPC=26\n\tname=1 v=5000 TraditionalGameSurfaceShader\n\tversion=1 v=2003 1.481000\n\tposx=1 v=2003 1094.020020\n\tposy=1 v=2003 127.968002\n\tpreviewswatch=1 v=2002 2\n\tclassname=1 v=5000 Traditional Game Surface Shader\n\tsubmenuname=1 v=5000 Surface Shaders\n\tbitmapnodeindex=1 v=2002 10\n"
		+ "\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 74\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -990.607971\n\tgrpPosY=1 v=2003 169.649994\n\toptions_Diffuse=2 e=1 v=5012 0\n\toptions_Specular=2 e=1 v=5012 0\n\tvalue_FlipBackFaces=2 e=1 v=2001 0\n\tvalue_TranslucencyDistortion=2 e=1100 v=2003 0.200000\n\tvalue_TranslucencyPower=2 e=1101 v=2003 3.000000\n\tvalue_TranslucencyMinimum=2 e=1102 v=2003 0.000000\n\tcolor_TranslucencyOuter=2 e=1104 v=3003 1.000000,0.640000,0.250000,1.000000\n\tcolor_TranslucencyMedium=2 e=1105 v=3003 1.000000,0.210000,0.140000,1.000000\n\tcolor_TranslucencyInner=2 e=1106 v=3003 0.250000,0.050000,0.020000,1.000000\n\tvalue_UseStreamLightData=2 e=1500 v=2001 0\n\tvalue_BakedLightColorSet=2 e=1502 v=5000 BakedLightColorSet\n\tvalue_BakedLightColorSetUnshared=2 e=1503 v=2001 1\n\tgroup=-1\n\tISC=17\n\t\tSVT=5001 2003 0 0 0 _Opacity\n\t\tSVT=5001 3002 0 0 0 _Emissive\n\t\tSVT=5001 2003 0 0 0 _AmbientOcclusion\n\t\tSVT=5001 3002 0 0 0 _DiffuseColor\n\t\tSVT=5001 2003 0 0 0 _SpecularPower\n\t\tSVT=5001 3002 0 0 0 _SpecularColor\n"
		+ "\t\tSVT=5001 3002 0 0 0 _Reflection\n\t\tSVT=5001 2003 0 0 0 _ReflectionIntensity\n\t\tSVT=5001 3002 0 0 0 _Normal\n\t\tSVT=5001 3002 0 0 0 _ObjectThickness\n\t\tSVT=5001 2003 0 0 0 _BlendedNormal\n\t\tSVT=5001 2003 0 0 0 _BlendedNormalMask\n\t\tSVT=5001 3002 0 0 0 _AnisotropicDirection\n\t\tSVT=5001 3001 0 0 0 _AnisotropicSpread\n\t\tSVT=5001 3002 0 0 0 _IBL\n\t\tSVT=5001 2003 0 0 0 _Weight\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 5018 0 _SurfaceShader\n\t\tCC=1\n\t\t\tC=1 0 0 0 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 X_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -580.216980\n\tposy=1 v=2003 -33.850601\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 5 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 3 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=2 2 0 13 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=2 3 0 4 0 3 0\n\t\t\tCPC=0\n\t\t\tC=2 3 0 3 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=2 4 0 4 1 2 0\n\t\t\tCPC=0\n\t\t\tC=2 4 0 3 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=3 1 6 7 2 3 0\n\t\t\tCPC=0\n\t\t\tC=3 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n"
		+ "\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=3 5 10 6 5 0 0\n\t\t\tCPC=0\n\t\t\tC=3 5 10 12 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=4 0 1 3 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=5 0 3 3 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n"
		+ "\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=6 1 0 24 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=2\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=7 0 4 6 1 0 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 9 0 1 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 12 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=2\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=8 0 1 13 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=9 0 2 6 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=9 1 3 6 3 0 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=9 3 5 6 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=10 1 0 5 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n"
		+ "\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=12 2 9 6 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=13 0 3 7 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Vertex World Position-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _VertexWorldPos\n\tversion=1 v=2003 1.610000\n\tposx=1 v=2003 -1568.300049\n\tposy=1 v=2003 -364.207001\n\tclassname=1 v=5000 Vertex World Position\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 66\n\thelpid=1 v=2002 27\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -1050.369995\n\tgrpPosY=1 v=2003 -104.477997\n\tgroup=23\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3003 0 _VertexWorldPosition\n\t\tCC=0\n\t\tSVT=5001 3002 0 \n\t\tCC=1\n\t\t\tC=15 1 0 21 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=5\n\tname=1 v=5000 Specular_Color\n\tposx=1 v=2003 796.518982\n\tposy=1 v=2003 599.218018\n\tcolor=2 e=0 v=3003 0.094118,0.094118,0.094118,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=16 1 2 1 5 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Specular_Power\n\tposx=1 v=2003 797.768982\n"
		+ "\tposy=1 v=2003 466.717987\n\tvalue=2 e=0 v=2003 40.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=17 0 1 1 4 0 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -1165.739990\n\tposy=1 v=2003 -287.777008\n\tgroup=23\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=18 0 2 20 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=18 1 3 19 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=1\n\t\t\tC=18 2 4 62 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=2\n\t\t\tC=18 3 5 20 1 2 0\n\t\t\tCPC=0\n\t\t\tC=18 3 5 19 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -925.236023\n\tposy=1 v=2003 -505.777008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=19 0 7 2 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -917.736023\n\tposy=1 v=2003 -256.277008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=20 0 7 49 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -1358.989990\n\tposy=1 v=2003 -244.526993\n\tgroup=23\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=21 0 3 18 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1537.739990\n\tposy=1 v=2003 -132.026993\n\tvalue=2 e=0 v=2003 0.250000\n\tgroup=23\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=22 0 1 21 1 2 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=12\n\tname=1 v=5000 XYZ_Texture_Projection\n\tposx=1 v=2003 -505.571014\n\tposy=1 v=2003 96.324898\n\tgrpPosX=1 v=2003 -1686.000000\n\tgrpPosY=1 v=2003 286.000000\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=-1\n"
		+ "\tISC=3\n\t\tSVT=5001 5011 0 0 0 Texture\n\t\tSVT=2002 2002 0 0 0 Texture Type\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 5011 0 Texture\n\t\tCC=3\n\t\t\tC=23 0 0 2 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 49 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 62 3 0 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 Texture Type\n\t\tCC=3\n\t\t\tC=23 1 0 2 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 49 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 62 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 -401.000000\n\tposy=1 v=2003 286.000000\n\tgroup=23\n\tISC=4\n\t\tSVT=5001 3002 0 0 0 X-Proj\n\t\tSVT=5001 3002 0 0 0 Y-Proj\n\t\tSVT=5001 3002 0 0 0 Z-Proj\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=4\n\t\tSVT=5001 3002 0 X-Proj\n\t\tCC=1\n\t\t\tC=24 0 0 34 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Y-Proj\n\t\tCC=1\n\t\t\tC=24 1 0 35 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Z-Proj\n\t\tCC=1\n\t\t\tC=24 2 0 34 0 1 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 Vertex World Normal-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _WorldNormal\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 -1418.219971\n\tposy=1 v=2003 335.877014\n\tclassname=1 v=5000 Vertex World Normal\n\tsubmenuname=1 v=5000 Inputs Common\n"
		+ "\tbitmapnodeindex=1 v=2002 60\n\thelpid=1 v=2002 26\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -947.760986\n\tgrpPosY=1 v=2003 -80.223900\n\tgroup=-1\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3002 0 _WorldNormal\n\t\tCC=1\n\t\t\tC=25 0 0 26 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 0 _WorldNormalVertShader\n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20055 0\n\tPC=2\n\tposx=1 v=2003 -1182.140015\n\tposy=1 v=2003 362.778015\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=26 0 3 28 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1398.810059\n\tposy=1 v=2003 551.586975\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=27 0 1 26 1 2 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -961.905029\n\tposy=1 v=2003 268.571014\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=28 0 2 29 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=28 1 3 41 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=28 3 5 29 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n"
		+ "\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -749.523987\n\tposy=1 v=2003 211.429001\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=29 0 7 30 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20021 0\n\tPC=2\n\tposx=1 v=2003 -541.447998\n\tposy=1 v=2003 310.526001\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3001 1 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 2 \n\t\tCC=1\n\t\t\tC=30 0 2 31 0 1 0\n\t\t\tCPC=0\n#NT=20018 0\n\tPC=2\n\tposx=1 v=2003 -334.342010\n\tposy=1 v=2003 356.644989\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=31 0 3 43 0 0 0\n\t\t\tCPC=0\n#NT=20139 0\n\tPC=3\n\tposx=1 v=2003 -539.341980\n\tposy=1 v=2003 471.579010\n\tvalueY=2 e=0 v=2003 0.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 3001 1 \n\t\tCC=1\n\t\t\tC=32 0 1 31 1 2 0\n\t\t\tCPC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 454.901001\n\tposy=1 v=2003 297.977997\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=1\n\t\t\tC=33 1 8 77 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 -32.287399\n\tposy=1 v=2003 171.033005\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=34 0 4 35 0 1 0\n\t\t\tCPC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 204.132004\n\tposy=1 v=2003 330.596008\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=35 0 4 33 4 5 0\n\t\t\tCPC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=36 0 3 38 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -822.456970\n\tposy=1 v=2003 960.456970\n\tvalue=2 e=0 v=2003 4000.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n"
		+ "\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=2\n\t\t\tC=37 0 1 41 1 0 0\n\t\t\tCPC=0\n\t\t\tC=37 0 1 43 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=38 0 3 39 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=39 0 3 40 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=41\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=40 0 2 42 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -392.589996\n\tposy=1 v=2003 803.484985\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=41 0 0 36 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n"
		+ "\t\tCC=1\n\t\t\tC=41 1 0 38 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=42 0 0 35 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -179.546997\n\tposy=1 v=2003 556.651978\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=43 0 0 45 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n\t\tCC=1\n\t\t\tC=43 1 0 46 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=44 0 0 34 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=45 0 3 46 0 1 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=46 0 3 47 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=47 0 3 48 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=43\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=48 0 2 44 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Y_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -571.184998\n\tposy=1 v=2003 232.483002\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n"
		+ "\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=49 0 0 52 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=49 1 0 50 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=49 2 0 60 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=49 3 0 51 0 3 0\n\t\t\tCPC=0\n\t\t\tC=49 3 0 50 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=49 4 0 51 1 2 0\n\t\t\tCPC=0\n\t\t\tC=49 4 0 50 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n"
		+ "\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=50 1 6 54 2 3 0\n\t\t\tCPC=0\n\t\t\tC=50 1 6 58 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=50 5 10 53 5 0 0\n\t\t\tCPC=0\n\t\t\tC=50 5 10 59 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=51 0 1 50 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=52 0 3 50 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n"
		+ "\tposy=1 v=2003 3.846410\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=53 1 0 24 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=49\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=54 0 4 53 1 0 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 56 0 1 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 59 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=49\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=55 0 1 60 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n"
		+ "\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=56 0 2 53 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=56 1 3 53 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=56 3 5 53 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=49\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=57 1 0 52 0 1 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=58 0 0 54 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=59 2 9 53 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n"
		+ "\tgroup=49\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=60 0 3 54 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=49\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Z_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -567.960022\n\tposy=1 v=2003 503.040985\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=62 0 0 65 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=62 1 0 63 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=62 2 0 73 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n"
		+ "\t\t\tC=62 3 0 64 0 3 0\n\t\t\tCPC=0\n\t\t\tC=62 3 0 63 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=62 4 0 64 1 2 0\n\t\t\tCPC=0\n\t\t\tC=62 4 0 63 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=63 1 6 67 2 3 0\n\t\t\tCPC=0\n\t\t\tC=63 1 6 71 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=63 5 10 66 5 0 0\n\t\t\tCPC=0\n\t\t\tC=63 5 10 72 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=62\n"
		+ "\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=64 0 1 63 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=65 0 3 63 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=66 1 0 24 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=62\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n"
		+ "\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=67 0 4 66 1 0 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 69 0 1 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 72 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=62\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=68 0 1 73 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=69 0 2 66 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=69 1 3 66 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=69 3 5 66 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n"
		+ "\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=62\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=70 1 0 65 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=71 0 0 67 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n"
		+ "\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=72 2 9 66 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=62\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=73 0 3 67 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=62\n\tISC=0\n\tOSC=0\n#NT=20028 0\n\tPC=13\n\tname=1 v=5000 DiffuseTexture\n\tposx=1 v=2003 -753.237976\n\tposy=1 v=2003 -75.178001\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\ttexturepath=2 e=1 v=5000 D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 \n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 0\n\tuigroup=2 e=13 v=5000 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=1\n\t\t\tC=75 0 2 23 0 0 0\n\t\t\tCPC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -1046.739990\n\tposy=1 v=2003 -39.187000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=2\n\t\t\tC=76 0 1 75 2 4 0\n\t\t\tCPC=0\n\t\t\tC=76 0 1 23 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 805.000000\n\tposy=1 v=2003 91.250000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=77 0 3 1 3 0 0\n\t\t\tCPC=0\n#NT=10100 1 Vertex Color-Hw Shader Nodes-Inputs Common\n"
		+ "\tPC=14\n\tname=1 v=5000 _VertexColor\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 593.976013\n\tposy=1 v=2003 60.924301\n\tclassname=1 v=5000 Vertex Color\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 70\n\thelpid=1 v=2002 24\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -546.642029\n\tgrpPosY=1 v=2003 -40.049500\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tcolorsetname_Vertex=2 e=2 v=5000 \n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tgroup=-1\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _RGB\n\t\tCC=1\n\t\t\tC=78 1 0 77 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Alpha\n\t\tCC=1\n\t\t\tC=78 5 0 1 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n");
	setAttr ".sprm" -type "string" "DiffuseTexture~278~Contrast~317~Specular_Power~317~Specular_Color~319~";
	setAttr ".DiffuseTexture" -type "string" "D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DD6CE24D-41D0-B794-B7D9-9299D64FB235";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BDB8E076-4D10-4858-A5F8-75B17C6ECE55";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "087E4DC8-468B-7136-7ADC-B187CAE19AAE";
createNode displayLayerManager -n "layerManager";
	rename -uid "AB727905-45E6-4679-30CF-D294A69A0964";
createNode displayLayer -n "defaultLayer";
	rename -uid "993DB7CE-4107-FC42-CC88-39BB1C69AE2A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2EA85E93-43AE-B6BD-9185-49BF0CBDFF3E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2CA616E5-41EE-E8E2-5209-E392086A5A5F";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0CA1BA4D-4534-57EC-E40C-B88172EF324C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2221\n            -height 1062\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2221\\n    -height 1062\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2221\\n    -height 1062\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "996C5D7C-4C2F-A5A9-2960-C591355E84F9";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	rename -uid "2841EAF8-4F04-BCA0-D889-8D8689F7D365";
	setAttr ".w" 10;
	setAttr ".h" 10;
	setAttr ".cuv" 2;
createNode polyColorPerVertex -n "polyColorPerVertex1";
	rename -uid "E55A0C27-4095-C574-5585-1C94FF1C43A3";
	setAttr ".uopa" yes;
	setAttr -s 121 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr ".vclr[0].vfcl[0].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[0].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr -s 2 ".vclr[1].vfcl";
	setAttr ".vclr[1].vfcl[0].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[1].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vfcl[1].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[1].vfcl[1].vfal" 1;
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 2 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[1].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[2].vfcl[1].vfal" 1;
	setAttr ".vclr[2].vfcl[2].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[2].vfcl[2].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 2 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[2].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[3].vfcl[2].vfal" 1;
	setAttr ".vclr[3].vfcl[3].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[3].vfcl[3].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 2 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[3].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[4].vfcl[3].vfal" 1;
	setAttr ".vclr[4].vfcl[4].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[4].vfcl[4].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 2 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[4].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[5].vfcl[4].vfal" 1;
	setAttr ".vclr[5].vfcl[5].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[5].vfcl[5].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr -s 2 ".vclr[6].vfcl";
	setAttr ".vclr[6].vfcl[5].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[6].vfcl[5].vfal" 1;
	setAttr ".vclr[6].vfcl[6].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[6].vfcl[6].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr -s 2 ".vclr[7].vfcl";
	setAttr ".vclr[7].vfcl[6].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[7].vfcl[6].vfal" 1;
	setAttr ".vclr[7].vfcl[7].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[7].vfcl[7].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 2 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[7].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[8].vfcl[7].vfal" 1;
	setAttr ".vclr[8].vfcl[8].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[8].vfcl[8].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 2 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[8].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[9].vfcl[8].vfal" 1;
	setAttr ".vclr[9].vfcl[9].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[9].vfcl[9].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr ".vclr[10].vfcl[9].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[10].vfcl[9].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 2 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[0].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[11].vfcl[0].vfal" 1;
	setAttr ".vclr[11].vfcl[10].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[11].vfcl[10].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 4 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[0].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[12].vfcl[0].vfal" 1;
	setAttr ".vclr[12].vfcl[1].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[12].vfcl[1].vfal" 1;
	setAttr ".vclr[12].vfcl[10].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[12].vfcl[10].vfal" 1;
	setAttr ".vclr[12].vfcl[11].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[12].vfcl[11].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 4 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[1].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[13].vfcl[1].vfal" 1;
	setAttr ".vclr[13].vfcl[2].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[13].vfcl[2].vfal" 1;
	setAttr ".vclr[13].vfcl[11].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[13].vfcl[11].vfal" 1;
	setAttr ".vclr[13].vfcl[12].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[13].vfcl[12].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 4 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[2].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[14].vfcl[2].vfal" 1;
	setAttr ".vclr[14].vfcl[3].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[14].vfcl[3].vfal" 1;
	setAttr ".vclr[14].vfcl[12].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[14].vfcl[12].vfal" 1;
	setAttr ".vclr[14].vfcl[13].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[14].vfcl[13].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 4 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[3].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[15].vfcl[3].vfal" 1;
	setAttr ".vclr[15].vfcl[4].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[15].vfcl[4].vfal" 1;
	setAttr ".vclr[15].vfcl[13].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[15].vfcl[13].vfal" 1;
	setAttr ".vclr[15].vfcl[14].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[15].vfcl[14].vfal" 1;
	setAttr ".vclr[16].vxal" 1;
	setAttr -s 4 ".vclr[16].vfcl";
	setAttr ".vclr[16].vfcl[4].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[16].vfcl[4].vfal" 1;
	setAttr ".vclr[16].vfcl[5].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[16].vfcl[5].vfal" 1;
	setAttr ".vclr[16].vfcl[14].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[16].vfcl[14].vfal" 1;
	setAttr ".vclr[16].vfcl[15].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[16].vfcl[15].vfal" 1;
	setAttr ".vclr[17].vxal" 1;
	setAttr -s 4 ".vclr[17].vfcl";
	setAttr ".vclr[17].vfcl[5].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[17].vfcl[5].vfal" 1;
	setAttr ".vclr[17].vfcl[6].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[17].vfcl[6].vfal" 1;
	setAttr ".vclr[17].vfcl[15].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[17].vfcl[15].vfal" 1;
	setAttr ".vclr[17].vfcl[16].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[17].vfcl[16].vfal" 1;
	setAttr ".vclr[18].vxal" 1;
	setAttr -s 4 ".vclr[18].vfcl";
	setAttr ".vclr[18].vfcl[6].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[18].vfcl[6].vfal" 1;
	setAttr ".vclr[18].vfcl[7].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[18].vfcl[7].vfal" 1;
	setAttr ".vclr[18].vfcl[16].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[18].vfcl[16].vfal" 1;
	setAttr ".vclr[18].vfcl[17].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[18].vfcl[17].vfal" 1;
	setAttr ".vclr[19].vxal" 1;
	setAttr -s 4 ".vclr[19].vfcl";
	setAttr ".vclr[19].vfcl[7].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[19].vfcl[7].vfal" 1;
	setAttr ".vclr[19].vfcl[8].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[19].vfcl[8].vfal" 1;
	setAttr ".vclr[19].vfcl[17].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[19].vfcl[17].vfal" 1;
	setAttr ".vclr[19].vfcl[18].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[19].vfcl[18].vfal" 1;
	setAttr ".vclr[20].vxal" 1;
	setAttr -s 4 ".vclr[20].vfcl";
	setAttr ".vclr[20].vfcl[8].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[20].vfcl[8].vfal" 1;
	setAttr ".vclr[20].vfcl[9].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[20].vfcl[9].vfal" 1;
	setAttr ".vclr[20].vfcl[18].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[20].vfcl[18].vfal" 1;
	setAttr ".vclr[20].vfcl[19].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[20].vfcl[19].vfal" 1;
	setAttr ".vclr[21].vxal" 1;
	setAttr -s 2 ".vclr[21].vfcl";
	setAttr ".vclr[21].vfcl[9].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[21].vfcl[9].vfal" 1;
	setAttr ".vclr[21].vfcl[19].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[21].vfcl[19].vfal" 1;
	setAttr ".vclr[22].vxal" 1;
	setAttr -s 2 ".vclr[22].vfcl";
	setAttr ".vclr[22].vfcl[10].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[22].vfcl[10].vfal" 1;
	setAttr ".vclr[22].vfcl[20].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[22].vfcl[20].vfal" 1;
	setAttr ".vclr[23].vxal" 1;
	setAttr -s 4 ".vclr[23].vfcl";
	setAttr ".vclr[23].vfcl[10].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[23].vfcl[10].vfal" 1;
	setAttr ".vclr[23].vfcl[11].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[23].vfcl[11].vfal" 1;
	setAttr ".vclr[23].vfcl[20].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[23].vfcl[20].vfal" 1;
	setAttr ".vclr[23].vfcl[21].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[23].vfcl[21].vfal" 1;
	setAttr ".vclr[24].vxal" 1;
	setAttr -s 4 ".vclr[24].vfcl";
	setAttr ".vclr[24].vfcl[11].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[24].vfcl[11].vfal" 1;
	setAttr ".vclr[24].vfcl[12].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[24].vfcl[12].vfal" 1;
	setAttr ".vclr[24].vfcl[21].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[24].vfcl[21].vfal" 1;
	setAttr ".vclr[24].vfcl[22].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[24].vfcl[22].vfal" 1;
	setAttr ".vclr[25].vxal" 1;
	setAttr -s 4 ".vclr[25].vfcl";
	setAttr ".vclr[25].vfcl[12].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[25].vfcl[12].vfal" 1;
	setAttr ".vclr[25].vfcl[13].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[25].vfcl[13].vfal" 1;
	setAttr ".vclr[25].vfcl[22].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[25].vfcl[22].vfal" 1;
	setAttr ".vclr[25].vfcl[23].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[25].vfcl[23].vfal" 1;
	setAttr ".vclr[26].vxal" 1;
	setAttr -s 4 ".vclr[26].vfcl";
	setAttr ".vclr[26].vfcl[13].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[26].vfcl[13].vfal" 1;
	setAttr ".vclr[26].vfcl[14].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[26].vfcl[14].vfal" 1;
	setAttr ".vclr[26].vfcl[23].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[26].vfcl[23].vfal" 1;
	setAttr ".vclr[26].vfcl[24].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[26].vfcl[24].vfal" 1;
	setAttr ".vclr[27].vxal" 1;
	setAttr -s 4 ".vclr[27].vfcl";
	setAttr ".vclr[27].vfcl[14].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[27].vfcl[14].vfal" 1;
	setAttr ".vclr[27].vfcl[15].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[27].vfcl[15].vfal" 1;
	setAttr ".vclr[27].vfcl[24].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[27].vfcl[24].vfal" 1;
	setAttr ".vclr[27].vfcl[25].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[27].vfcl[25].vfal" 1;
	setAttr ".vclr[28].vxal" 1;
	setAttr -s 4 ".vclr[28].vfcl";
	setAttr ".vclr[28].vfcl[15].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[28].vfcl[15].vfal" 1;
	setAttr ".vclr[28].vfcl[16].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[28].vfcl[16].vfal" 1;
	setAttr ".vclr[28].vfcl[25].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[28].vfcl[25].vfal" 1;
	setAttr ".vclr[28].vfcl[26].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[28].vfcl[26].vfal" 1;
	setAttr ".vclr[29].vxal" 1;
	setAttr -s 4 ".vclr[29].vfcl";
	setAttr ".vclr[29].vfcl[16].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[29].vfcl[16].vfal" 1;
	setAttr ".vclr[29].vfcl[17].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[29].vfcl[17].vfal" 1;
	setAttr ".vclr[29].vfcl[26].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[29].vfcl[26].vfal" 1;
	setAttr ".vclr[29].vfcl[27].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[29].vfcl[27].vfal" 1;
	setAttr ".vclr[30].vxal" 1;
	setAttr -s 4 ".vclr[30].vfcl";
	setAttr ".vclr[30].vfcl[17].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[30].vfcl[17].vfal" 1;
	setAttr ".vclr[30].vfcl[18].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[30].vfcl[18].vfal" 1;
	setAttr ".vclr[30].vfcl[27].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[30].vfcl[27].vfal" 1;
	setAttr ".vclr[30].vfcl[28].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[30].vfcl[28].vfal" 1;
	setAttr ".vclr[31].vxal" 1;
	setAttr -s 4 ".vclr[31].vfcl";
	setAttr ".vclr[31].vfcl[18].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[31].vfcl[18].vfal" 1;
	setAttr ".vclr[31].vfcl[19].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[31].vfcl[19].vfal" 1;
	setAttr ".vclr[31].vfcl[28].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[31].vfcl[28].vfal" 1;
	setAttr ".vclr[31].vfcl[29].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[31].vfcl[29].vfal" 1;
	setAttr ".vclr[32].vxal" 1;
	setAttr -s 2 ".vclr[32].vfcl";
	setAttr ".vclr[32].vfcl[19].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[32].vfcl[19].vfal" 1;
	setAttr ".vclr[32].vfcl[29].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[32].vfcl[29].vfal" 1;
	setAttr ".vclr[33].vxal" 1;
	setAttr -s 2 ".vclr[33].vfcl";
	setAttr ".vclr[33].vfcl[20].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[33].vfcl[20].vfal" 1;
	setAttr ".vclr[33].vfcl[30].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[33].vfcl[30].vfal" 1;
	setAttr ".vclr[34].vxal" 1;
	setAttr -s 4 ".vclr[34].vfcl";
	setAttr ".vclr[34].vfcl[20].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[34].vfcl[20].vfal" 1;
	setAttr ".vclr[34].vfcl[21].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[34].vfcl[21].vfal" 1;
	setAttr ".vclr[34].vfcl[30].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[34].vfcl[30].vfal" 1;
	setAttr ".vclr[34].vfcl[31].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[34].vfcl[31].vfal" 1;
	setAttr ".vclr[35].vxal" 1;
	setAttr -s 4 ".vclr[35].vfcl";
	setAttr ".vclr[35].vfcl[21].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[35].vfcl[21].vfal" 1;
	setAttr ".vclr[35].vfcl[22].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[35].vfcl[22].vfal" 1;
	setAttr ".vclr[35].vfcl[31].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[35].vfcl[31].vfal" 1;
	setAttr ".vclr[35].vfcl[32].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[35].vfcl[32].vfal" 1;
	setAttr ".vclr[36].vxal" 1;
	setAttr -s 4 ".vclr[36].vfcl";
	setAttr ".vclr[36].vfcl[22].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[36].vfcl[22].vfal" 1;
	setAttr ".vclr[36].vfcl[23].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[36].vfcl[23].vfal" 1;
	setAttr ".vclr[36].vfcl[32].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[36].vfcl[32].vfal" 1;
	setAttr ".vclr[36].vfcl[33].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[36].vfcl[33].vfal" 1;
	setAttr ".vclr[37].vxal" 1;
	setAttr -s 4 ".vclr[37].vfcl";
	setAttr ".vclr[37].vfcl[23].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[37].vfcl[23].vfal" 1;
	setAttr ".vclr[37].vfcl[24].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[37].vfcl[24].vfal" 1;
	setAttr ".vclr[37].vfcl[33].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[37].vfcl[33].vfal" 1;
	setAttr ".vclr[37].vfcl[34].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[37].vfcl[34].vfal" 1;
	setAttr ".vclr[38].vxal" 1;
	setAttr -s 4 ".vclr[38].vfcl";
	setAttr ".vclr[38].vfcl[24].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[38].vfcl[24].vfal" 1;
	setAttr ".vclr[38].vfcl[25].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[38].vfcl[25].vfal" 1;
	setAttr ".vclr[38].vfcl[34].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[38].vfcl[34].vfal" 1;
	setAttr ".vclr[38].vfcl[35].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[38].vfcl[35].vfal" 1;
	setAttr ".vclr[39].vxal" 1;
	setAttr -s 4 ".vclr[39].vfcl";
	setAttr ".vclr[39].vfcl[25].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[39].vfcl[25].vfal" 1;
	setAttr ".vclr[39].vfcl[26].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[39].vfcl[26].vfal" 1;
	setAttr ".vclr[39].vfcl[35].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[39].vfcl[35].vfal" 1;
	setAttr ".vclr[39].vfcl[36].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[39].vfcl[36].vfal" 1;
	setAttr ".vclr[40].vxal" 1;
	setAttr -s 4 ".vclr[40].vfcl";
	setAttr ".vclr[40].vfcl[26].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[40].vfcl[26].vfal" 1;
	setAttr ".vclr[40].vfcl[27].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[40].vfcl[27].vfal" 1;
	setAttr ".vclr[40].vfcl[36].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[40].vfcl[36].vfal" 1;
	setAttr ".vclr[40].vfcl[37].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[40].vfcl[37].vfal" 1;
	setAttr ".vclr[41].vxal" 1;
	setAttr -s 4 ".vclr[41].vfcl";
	setAttr ".vclr[41].vfcl[27].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[41].vfcl[27].vfal" 1;
	setAttr ".vclr[41].vfcl[28].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[41].vfcl[28].vfal" 1;
	setAttr ".vclr[41].vfcl[37].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[41].vfcl[37].vfal" 1;
	setAttr ".vclr[41].vfcl[38].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[41].vfcl[38].vfal" 1;
	setAttr ".vclr[42].vxal" 1;
	setAttr -s 4 ".vclr[42].vfcl";
	setAttr ".vclr[42].vfcl[28].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[42].vfcl[28].vfal" 1;
	setAttr ".vclr[42].vfcl[29].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[42].vfcl[29].vfal" 1;
	setAttr ".vclr[42].vfcl[38].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[42].vfcl[38].vfal" 1;
	setAttr ".vclr[42].vfcl[39].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[42].vfcl[39].vfal" 1;
	setAttr ".vclr[43].vxal" 1;
	setAttr -s 2 ".vclr[43].vfcl";
	setAttr ".vclr[43].vfcl[29].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[43].vfcl[29].vfal" 1;
	setAttr ".vclr[43].vfcl[39].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[43].vfcl[39].vfal" 1;
	setAttr ".vclr[44].vxal" 1;
	setAttr -s 2 ".vclr[44].vfcl";
	setAttr ".vclr[44].vfcl[30].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[44].vfcl[30].vfal" 1;
	setAttr ".vclr[44].vfcl[40].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[44].vfcl[40].vfal" 1;
	setAttr ".vclr[45].vxal" 1;
	setAttr -s 4 ".vclr[45].vfcl";
	setAttr ".vclr[45].vfcl[30].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[45].vfcl[30].vfal" 1;
	setAttr ".vclr[45].vfcl[31].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[45].vfcl[31].vfal" 1;
	setAttr ".vclr[45].vfcl[40].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[45].vfcl[40].vfal" 1;
	setAttr ".vclr[45].vfcl[41].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[45].vfcl[41].vfal" 1;
	setAttr ".vclr[46].vxal" 1;
	setAttr -s 4 ".vclr[46].vfcl";
	setAttr ".vclr[46].vfcl[31].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[46].vfcl[31].vfal" 1;
	setAttr ".vclr[46].vfcl[32].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[46].vfcl[32].vfal" 1;
	setAttr ".vclr[46].vfcl[41].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[46].vfcl[41].vfal" 1;
	setAttr ".vclr[46].vfcl[42].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[46].vfcl[42].vfal" 1;
	setAttr ".vclr[47].vxal" 1;
	setAttr -s 4 ".vclr[47].vfcl";
	setAttr ".vclr[47].vfcl[32].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[47].vfcl[32].vfal" 1;
	setAttr ".vclr[47].vfcl[33].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[47].vfcl[33].vfal" 1;
	setAttr ".vclr[47].vfcl[42].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[47].vfcl[42].vfal" 1;
	setAttr ".vclr[47].vfcl[43].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[47].vfcl[43].vfal" 1;
	setAttr ".vclr[48].vxal" 1;
	setAttr -s 4 ".vclr[48].vfcl";
	setAttr ".vclr[48].vfcl[33].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[48].vfcl[33].vfal" 1;
	setAttr ".vclr[48].vfcl[34].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[48].vfcl[34].vfal" 1;
	setAttr ".vclr[48].vfcl[43].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[48].vfcl[43].vfal" 1;
	setAttr ".vclr[48].vfcl[44].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[48].vfcl[44].vfal" 1;
	setAttr ".vclr[49].vxal" 1;
	setAttr -s 4 ".vclr[49].vfcl";
	setAttr ".vclr[49].vfcl[34].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[49].vfcl[34].vfal" 1;
	setAttr ".vclr[49].vfcl[35].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[49].vfcl[35].vfal" 1;
	setAttr ".vclr[49].vfcl[44].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[49].vfcl[44].vfal" 1;
	setAttr ".vclr[49].vfcl[45].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[49].vfcl[45].vfal" 1;
	setAttr ".vclr[50].vxal" 1;
	setAttr -s 4 ".vclr[50].vfcl";
	setAttr ".vclr[50].vfcl[35].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[50].vfcl[35].vfal" 1;
	setAttr ".vclr[50].vfcl[36].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[50].vfcl[36].vfal" 1;
	setAttr ".vclr[50].vfcl[45].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[50].vfcl[45].vfal" 1;
	setAttr ".vclr[50].vfcl[46].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[50].vfcl[46].vfal" 1;
	setAttr ".vclr[51].vxal" 1;
	setAttr -s 4 ".vclr[51].vfcl";
	setAttr ".vclr[51].vfcl[36].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[51].vfcl[36].vfal" 1;
	setAttr ".vclr[51].vfcl[37].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[51].vfcl[37].vfal" 1;
	setAttr ".vclr[51].vfcl[46].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[51].vfcl[46].vfal" 1;
	setAttr ".vclr[51].vfcl[47].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[51].vfcl[47].vfal" 1;
	setAttr ".vclr[52].vxal" 1;
	setAttr -s 4 ".vclr[52].vfcl";
	setAttr ".vclr[52].vfcl[37].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[52].vfcl[37].vfal" 1;
	setAttr ".vclr[52].vfcl[38].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[52].vfcl[38].vfal" 1;
	setAttr ".vclr[52].vfcl[47].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[52].vfcl[47].vfal" 1;
	setAttr ".vclr[52].vfcl[48].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[52].vfcl[48].vfal" 1;
	setAttr ".vclr[53].vxal" 1;
	setAttr -s 4 ".vclr[53].vfcl";
	setAttr ".vclr[53].vfcl[38].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[53].vfcl[38].vfal" 1;
	setAttr ".vclr[53].vfcl[39].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[53].vfcl[39].vfal" 1;
	setAttr ".vclr[53].vfcl[48].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[53].vfcl[48].vfal" 1;
	setAttr ".vclr[53].vfcl[49].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[53].vfcl[49].vfal" 1;
	setAttr ".vclr[54].vxal" 1;
	setAttr -s 2 ".vclr[54].vfcl";
	setAttr ".vclr[54].vfcl[39].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[54].vfcl[39].vfal" 1;
	setAttr ".vclr[54].vfcl[49].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[54].vfcl[49].vfal" 1;
	setAttr ".vclr[55].vxal" 1;
	setAttr -s 2 ".vclr[55].vfcl";
	setAttr ".vclr[55].vfcl[40].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[55].vfcl[40].vfal" 1;
	setAttr ".vclr[55].vfcl[50].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[55].vfcl[50].vfal" 1;
	setAttr ".vclr[56].vxal" 1;
	setAttr -s 4 ".vclr[56].vfcl";
	setAttr ".vclr[56].vfcl[40].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[56].vfcl[40].vfal" 1;
	setAttr ".vclr[56].vfcl[41].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[56].vfcl[41].vfal" 1;
	setAttr ".vclr[56].vfcl[50].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[56].vfcl[50].vfal" 1;
	setAttr ".vclr[56].vfcl[51].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[56].vfcl[51].vfal" 1;
	setAttr ".vclr[57].vxal" 1;
	setAttr -s 4 ".vclr[57].vfcl";
	setAttr ".vclr[57].vfcl[41].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[57].vfcl[41].vfal" 1;
	setAttr ".vclr[57].vfcl[42].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[57].vfcl[42].vfal" 1;
	setAttr ".vclr[57].vfcl[51].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[57].vfcl[51].vfal" 1;
	setAttr ".vclr[57].vfcl[52].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[57].vfcl[52].vfal" 1;
	setAttr ".vclr[58].vxal" 1;
	setAttr -s 4 ".vclr[58].vfcl";
	setAttr ".vclr[58].vfcl[42].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[58].vfcl[42].vfal" 1;
	setAttr ".vclr[58].vfcl[43].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[58].vfcl[43].vfal" 1;
	setAttr ".vclr[58].vfcl[52].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[58].vfcl[52].vfal" 1;
	setAttr ".vclr[58].vfcl[53].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[58].vfcl[53].vfal" 1;
	setAttr ".vclr[59].vxal" 1;
	setAttr -s 4 ".vclr[59].vfcl";
	setAttr ".vclr[59].vfcl[43].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[59].vfcl[43].vfal" 1;
	setAttr ".vclr[59].vfcl[44].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[59].vfcl[44].vfal" 1;
	setAttr ".vclr[59].vfcl[53].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[59].vfcl[53].vfal" 1;
	setAttr ".vclr[59].vfcl[54].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[59].vfcl[54].vfal" 1;
	setAttr ".vclr[60].vxal" 1;
	setAttr -s 4 ".vclr[60].vfcl";
	setAttr ".vclr[60].vfcl[44].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[60].vfcl[44].vfal" 1;
	setAttr ".vclr[60].vfcl[45].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[60].vfcl[45].vfal" 1;
	setAttr ".vclr[60].vfcl[54].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[60].vfcl[54].vfal" 1;
	setAttr ".vclr[60].vfcl[55].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[60].vfcl[55].vfal" 1;
	setAttr ".vclr[61].vxal" 1;
	setAttr -s 4 ".vclr[61].vfcl";
	setAttr ".vclr[61].vfcl[45].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[61].vfcl[45].vfal" 1;
	setAttr ".vclr[61].vfcl[46].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[61].vfcl[46].vfal" 1;
	setAttr ".vclr[61].vfcl[55].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[61].vfcl[55].vfal" 1;
	setAttr ".vclr[61].vfcl[56].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[61].vfcl[56].vfal" 1;
	setAttr ".vclr[62].vxal" 1;
	setAttr -s 4 ".vclr[62].vfcl";
	setAttr ".vclr[62].vfcl[46].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[62].vfcl[46].vfal" 1;
	setAttr ".vclr[62].vfcl[47].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[62].vfcl[47].vfal" 1;
	setAttr ".vclr[62].vfcl[56].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[62].vfcl[56].vfal" 1;
	setAttr ".vclr[62].vfcl[57].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[62].vfcl[57].vfal" 1;
	setAttr ".vclr[63].vxal" 1;
	setAttr -s 4 ".vclr[63].vfcl";
	setAttr ".vclr[63].vfcl[47].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[63].vfcl[47].vfal" 1;
	setAttr ".vclr[63].vfcl[48].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[63].vfcl[48].vfal" 1;
	setAttr ".vclr[63].vfcl[57].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[63].vfcl[57].vfal" 1;
	setAttr ".vclr[63].vfcl[58].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[63].vfcl[58].vfal" 1;
	setAttr ".vclr[64].vxal" 1;
	setAttr -s 4 ".vclr[64].vfcl";
	setAttr ".vclr[64].vfcl[48].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[64].vfcl[48].vfal" 1;
	setAttr ".vclr[64].vfcl[49].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[64].vfcl[49].vfal" 1;
	setAttr ".vclr[64].vfcl[58].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[64].vfcl[58].vfal" 1;
	setAttr ".vclr[64].vfcl[59].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[64].vfcl[59].vfal" 1;
	setAttr ".vclr[65].vxal" 1;
	setAttr -s 2 ".vclr[65].vfcl";
	setAttr ".vclr[65].vfcl[49].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[65].vfcl[49].vfal" 1;
	setAttr ".vclr[65].vfcl[59].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[65].vfcl[59].vfal" 1;
	setAttr ".vclr[66].vxal" 1;
	setAttr -s 2 ".vclr[66].vfcl";
	setAttr ".vclr[66].vfcl[50].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[66].vfcl[50].vfal" 1;
	setAttr ".vclr[66].vfcl[60].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[66].vfcl[60].vfal" 1;
	setAttr ".vclr[67].vxal" 1;
	setAttr -s 4 ".vclr[67].vfcl";
	setAttr ".vclr[67].vfcl[50].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[67].vfcl[50].vfal" 1;
	setAttr ".vclr[67].vfcl[51].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[67].vfcl[51].vfal" 1;
	setAttr ".vclr[67].vfcl[60].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[67].vfcl[60].vfal" 1;
	setAttr ".vclr[67].vfcl[61].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[67].vfcl[61].vfal" 1;
	setAttr ".vclr[68].vxal" 1;
	setAttr -s 4 ".vclr[68].vfcl";
	setAttr ".vclr[68].vfcl[51].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[68].vfcl[51].vfal" 1;
	setAttr ".vclr[68].vfcl[52].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[68].vfcl[52].vfal" 1;
	setAttr ".vclr[68].vfcl[61].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[68].vfcl[61].vfal" 1;
	setAttr ".vclr[68].vfcl[62].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[68].vfcl[62].vfal" 1;
	setAttr ".vclr[69].vxal" 1;
	setAttr -s 4 ".vclr[69].vfcl";
	setAttr ".vclr[69].vfcl[52].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[69].vfcl[52].vfal" 1;
	setAttr ".vclr[69].vfcl[53].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[69].vfcl[53].vfal" 1;
	setAttr ".vclr[69].vfcl[62].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[69].vfcl[62].vfal" 1;
	setAttr ".vclr[69].vfcl[63].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[69].vfcl[63].vfal" 1;
	setAttr ".vclr[70].vxal" 1;
	setAttr -s 4 ".vclr[70].vfcl";
	setAttr ".vclr[70].vfcl[53].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[70].vfcl[53].vfal" 1;
	setAttr ".vclr[70].vfcl[54].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[70].vfcl[54].vfal" 1;
	setAttr ".vclr[70].vfcl[63].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[70].vfcl[63].vfal" 1;
	setAttr ".vclr[70].vfcl[64].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[70].vfcl[64].vfal" 1;
	setAttr ".vclr[71].vxal" 1;
	setAttr -s 4 ".vclr[71].vfcl";
	setAttr ".vclr[71].vfcl[54].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[71].vfcl[54].vfal" 1;
	setAttr ".vclr[71].vfcl[55].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[71].vfcl[55].vfal" 1;
	setAttr ".vclr[71].vfcl[64].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[71].vfcl[64].vfal" 1;
	setAttr ".vclr[71].vfcl[65].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[71].vfcl[65].vfal" 1;
	setAttr ".vclr[72].vxal" 1;
	setAttr -s 4 ".vclr[72].vfcl";
	setAttr ".vclr[72].vfcl[55].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[72].vfcl[55].vfal" 1;
	setAttr ".vclr[72].vfcl[56].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[72].vfcl[56].vfal" 1;
	setAttr ".vclr[72].vfcl[65].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[72].vfcl[65].vfal" 1;
	setAttr ".vclr[72].vfcl[66].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[72].vfcl[66].vfal" 1;
	setAttr ".vclr[73].vxal" 1;
	setAttr -s 4 ".vclr[73].vfcl";
	setAttr ".vclr[73].vfcl[56].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[73].vfcl[56].vfal" 1;
	setAttr ".vclr[73].vfcl[57].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[73].vfcl[57].vfal" 1;
	setAttr ".vclr[73].vfcl[66].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[73].vfcl[66].vfal" 1;
	setAttr ".vclr[73].vfcl[67].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[73].vfcl[67].vfal" 1;
	setAttr ".vclr[74].vxal" 1;
	setAttr -s 4 ".vclr[74].vfcl";
	setAttr ".vclr[74].vfcl[57].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[74].vfcl[57].vfal" 1;
	setAttr ".vclr[74].vfcl[58].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[74].vfcl[58].vfal" 1;
	setAttr ".vclr[74].vfcl[67].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[74].vfcl[67].vfal" 1;
	setAttr ".vclr[74].vfcl[68].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[74].vfcl[68].vfal" 1;
	setAttr ".vclr[75].vxal" 1;
	setAttr -s 4 ".vclr[75].vfcl";
	setAttr ".vclr[75].vfcl[58].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[75].vfcl[58].vfal" 1;
	setAttr ".vclr[75].vfcl[59].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[75].vfcl[59].vfal" 1;
	setAttr ".vclr[75].vfcl[68].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[75].vfcl[68].vfal" 1;
	setAttr ".vclr[75].vfcl[69].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[75].vfcl[69].vfal" 1;
	setAttr ".vclr[76].vxal" 1;
	setAttr -s 2 ".vclr[76].vfcl";
	setAttr ".vclr[76].vfcl[59].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[76].vfcl[59].vfal" 1;
	setAttr ".vclr[76].vfcl[69].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[76].vfcl[69].vfal" 1;
	setAttr ".vclr[77].vxal" 1;
	setAttr -s 2 ".vclr[77].vfcl";
	setAttr ".vclr[77].vfcl[60].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[77].vfcl[60].vfal" 1;
	setAttr ".vclr[77].vfcl[70].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[77].vfcl[70].vfal" 1;
	setAttr ".vclr[78].vxal" 1;
	setAttr -s 4 ".vclr[78].vfcl";
	setAttr ".vclr[78].vfcl[60].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[78].vfcl[60].vfal" 1;
	setAttr ".vclr[78].vfcl[61].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[78].vfcl[61].vfal" 1;
	setAttr ".vclr[78].vfcl[70].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[78].vfcl[70].vfal" 1;
	setAttr ".vclr[78].vfcl[71].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[78].vfcl[71].vfal" 1;
	setAttr ".vclr[79].vxal" 1;
	setAttr -s 4 ".vclr[79].vfcl";
	setAttr ".vclr[79].vfcl[61].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[79].vfcl[61].vfal" 1;
	setAttr ".vclr[79].vfcl[62].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[79].vfcl[62].vfal" 1;
	setAttr ".vclr[79].vfcl[71].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[79].vfcl[71].vfal" 1;
	setAttr ".vclr[79].vfcl[72].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[79].vfcl[72].vfal" 1;
	setAttr ".vclr[80].vxal" 1;
	setAttr -s 4 ".vclr[80].vfcl";
	setAttr ".vclr[80].vfcl[62].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[80].vfcl[62].vfal" 1;
	setAttr ".vclr[80].vfcl[63].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[80].vfcl[63].vfal" 1;
	setAttr ".vclr[80].vfcl[72].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[80].vfcl[72].vfal" 1;
	setAttr ".vclr[80].vfcl[73].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[80].vfcl[73].vfal" 1;
	setAttr ".vclr[81].vxal" 1;
	setAttr -s 4 ".vclr[81].vfcl";
	setAttr ".vclr[81].vfcl[63].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[81].vfcl[63].vfal" 1;
	setAttr ".vclr[81].vfcl[64].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[81].vfcl[64].vfal" 1;
	setAttr ".vclr[81].vfcl[73].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[81].vfcl[73].vfal" 1;
	setAttr ".vclr[81].vfcl[74].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[81].vfcl[74].vfal" 1;
	setAttr ".vclr[82].vxal" 1;
	setAttr -s 4 ".vclr[82].vfcl";
	setAttr ".vclr[82].vfcl[64].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[82].vfcl[64].vfal" 1;
	setAttr ".vclr[82].vfcl[65].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[82].vfcl[65].vfal" 1;
	setAttr ".vclr[82].vfcl[74].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[82].vfcl[74].vfal" 1;
	setAttr ".vclr[82].vfcl[75].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[82].vfcl[75].vfal" 1;
	setAttr ".vclr[83].vxal" 1;
	setAttr -s 4 ".vclr[83].vfcl";
	setAttr ".vclr[83].vfcl[65].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[83].vfcl[65].vfal" 1;
	setAttr ".vclr[83].vfcl[66].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[83].vfcl[66].vfal" 1;
	setAttr ".vclr[83].vfcl[75].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[83].vfcl[75].vfal" 1;
	setAttr ".vclr[83].vfcl[76].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[83].vfcl[76].vfal" 1;
	setAttr ".vclr[84].vxal" 1;
	setAttr -s 4 ".vclr[84].vfcl";
	setAttr ".vclr[84].vfcl[66].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[84].vfcl[66].vfal" 1;
	setAttr ".vclr[84].vfcl[67].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[84].vfcl[67].vfal" 1;
	setAttr ".vclr[84].vfcl[76].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[84].vfcl[76].vfal" 1;
	setAttr ".vclr[84].vfcl[77].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[84].vfcl[77].vfal" 1;
	setAttr ".vclr[85].vxal" 1;
	setAttr -s 4 ".vclr[85].vfcl";
	setAttr ".vclr[85].vfcl[67].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[85].vfcl[67].vfal" 1;
	setAttr ".vclr[85].vfcl[68].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[85].vfcl[68].vfal" 1;
	setAttr ".vclr[85].vfcl[77].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[85].vfcl[77].vfal" 1;
	setAttr ".vclr[85].vfcl[78].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[85].vfcl[78].vfal" 1;
	setAttr ".vclr[86].vxal" 1;
	setAttr -s 4 ".vclr[86].vfcl";
	setAttr ".vclr[86].vfcl[68].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[86].vfcl[68].vfal" 1;
	setAttr ".vclr[86].vfcl[69].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[86].vfcl[69].vfal" 1;
	setAttr ".vclr[86].vfcl[78].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[86].vfcl[78].vfal" 1;
	setAttr ".vclr[86].vfcl[79].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[86].vfcl[79].vfal" 1;
	setAttr ".vclr[87].vxal" 1;
	setAttr -s 2 ".vclr[87].vfcl";
	setAttr ".vclr[87].vfcl[69].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[87].vfcl[69].vfal" 1;
	setAttr ".vclr[87].vfcl[79].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[87].vfcl[79].vfal" 1;
	setAttr ".vclr[88].vxal" 1;
	setAttr -s 2 ".vclr[88].vfcl";
	setAttr ".vclr[88].vfcl[70].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[88].vfcl[70].vfal" 1;
	setAttr ".vclr[88].vfcl[80].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[88].vfcl[80].vfal" 1;
	setAttr ".vclr[89].vxal" 1;
	setAttr -s 4 ".vclr[89].vfcl";
	setAttr ".vclr[89].vfcl[70].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[89].vfcl[70].vfal" 1;
	setAttr ".vclr[89].vfcl[71].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[89].vfcl[71].vfal" 1;
	setAttr ".vclr[89].vfcl[80].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[89].vfcl[80].vfal" 1;
	setAttr ".vclr[89].vfcl[81].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[89].vfcl[81].vfal" 1;
	setAttr ".vclr[90].vxal" 1;
	setAttr -s 4 ".vclr[90].vfcl";
	setAttr ".vclr[90].vfcl[71].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[90].vfcl[71].vfal" 1;
	setAttr ".vclr[90].vfcl[72].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[90].vfcl[72].vfal" 1;
	setAttr ".vclr[90].vfcl[81].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[90].vfcl[81].vfal" 1;
	setAttr ".vclr[90].vfcl[82].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[90].vfcl[82].vfal" 1;
	setAttr ".vclr[91].vxal" 1;
	setAttr -s 4 ".vclr[91].vfcl";
	setAttr ".vclr[91].vfcl[72].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[91].vfcl[72].vfal" 1;
	setAttr ".vclr[91].vfcl[73].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[91].vfcl[73].vfal" 1;
	setAttr ".vclr[91].vfcl[82].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[91].vfcl[82].vfal" 1;
	setAttr ".vclr[91].vfcl[83].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[91].vfcl[83].vfal" 1;
	setAttr ".vclr[92].vxal" 1;
	setAttr -s 4 ".vclr[92].vfcl";
	setAttr ".vclr[92].vfcl[73].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[92].vfcl[73].vfal" 1;
	setAttr ".vclr[92].vfcl[74].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[92].vfcl[74].vfal" 1;
	setAttr ".vclr[92].vfcl[83].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[92].vfcl[83].vfal" 1;
	setAttr ".vclr[92].vfcl[84].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[92].vfcl[84].vfal" 1;
	setAttr ".vclr[93].vxal" 1;
	setAttr -s 4 ".vclr[93].vfcl";
	setAttr ".vclr[93].vfcl[74].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[93].vfcl[74].vfal" 1;
	setAttr ".vclr[93].vfcl[75].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[93].vfcl[75].vfal" 1;
	setAttr ".vclr[93].vfcl[84].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[93].vfcl[84].vfal" 1;
	setAttr ".vclr[93].vfcl[85].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[93].vfcl[85].vfal" 1;
	setAttr ".vclr[94].vxal" 1;
	setAttr -s 4 ".vclr[94].vfcl";
	setAttr ".vclr[94].vfcl[75].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[94].vfcl[75].vfal" 1;
	setAttr ".vclr[94].vfcl[76].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[94].vfcl[76].vfal" 1;
	setAttr ".vclr[94].vfcl[85].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[94].vfcl[85].vfal" 1;
	setAttr ".vclr[94].vfcl[86].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[94].vfcl[86].vfal" 1;
	setAttr ".vclr[95].vxal" 1;
	setAttr -s 4 ".vclr[95].vfcl";
	setAttr ".vclr[95].vfcl[76].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[95].vfcl[76].vfal" 1;
	setAttr ".vclr[95].vfcl[77].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[95].vfcl[77].vfal" 1;
	setAttr ".vclr[95].vfcl[86].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[95].vfcl[86].vfal" 1;
	setAttr ".vclr[95].vfcl[87].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[95].vfcl[87].vfal" 1;
	setAttr ".vclr[96].vxal" 1;
	setAttr -s 4 ".vclr[96].vfcl";
	setAttr ".vclr[96].vfcl[77].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[96].vfcl[77].vfal" 1;
	setAttr ".vclr[96].vfcl[78].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[96].vfcl[78].vfal" 1;
	setAttr ".vclr[96].vfcl[87].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[96].vfcl[87].vfal" 1;
	setAttr ".vclr[96].vfcl[88].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[96].vfcl[88].vfal" 1;
	setAttr ".vclr[97].vxal" 1;
	setAttr -s 4 ".vclr[97].vfcl";
	setAttr ".vclr[97].vfcl[78].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[97].vfcl[78].vfal" 1;
	setAttr ".vclr[97].vfcl[79].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[97].vfcl[79].vfal" 1;
	setAttr ".vclr[97].vfcl[88].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[97].vfcl[88].vfal" 1;
	setAttr ".vclr[97].vfcl[89].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[97].vfcl[89].vfal" 1;
	setAttr ".vclr[98].vxal" 1;
	setAttr -s 2 ".vclr[98].vfcl";
	setAttr ".vclr[98].vfcl[79].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[98].vfcl[79].vfal" 1;
	setAttr ".vclr[98].vfcl[89].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[98].vfcl[89].vfal" 1;
	setAttr ".vclr[99].vxal" 1;
	setAttr -s 2 ".vclr[99].vfcl";
	setAttr ".vclr[99].vfcl[80].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[99].vfcl[80].vfal" 1;
	setAttr ".vclr[99].vfcl[90].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[99].vfcl[90].vfal" 1;
	setAttr ".vclr[100].vxal" 1;
	setAttr -s 4 ".vclr[100].vfcl";
	setAttr ".vclr[100].vfcl[80].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[100].vfcl[80].vfal" 1;
	setAttr ".vclr[100].vfcl[81].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[100].vfcl[81].vfal" 1;
	setAttr ".vclr[100].vfcl[90].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[100].vfcl[90].vfal" 1;
	setAttr ".vclr[100].vfcl[91].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[100].vfcl[91].vfal" 1;
	setAttr ".vclr[101].vxal" 1;
	setAttr -s 4 ".vclr[101].vfcl";
	setAttr ".vclr[101].vfcl[81].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[101].vfcl[81].vfal" 1;
	setAttr ".vclr[101].vfcl[82].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[101].vfcl[82].vfal" 1;
	setAttr ".vclr[101].vfcl[91].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[101].vfcl[91].vfal" 1;
	setAttr ".vclr[101].vfcl[92].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[101].vfcl[92].vfal" 1;
	setAttr ".vclr[102].vxal" 1;
	setAttr -s 4 ".vclr[102].vfcl";
	setAttr ".vclr[102].vfcl[82].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[102].vfcl[82].vfal" 1;
	setAttr ".vclr[102].vfcl[83].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[102].vfcl[83].vfal" 1;
	setAttr ".vclr[102].vfcl[92].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[102].vfcl[92].vfal" 1;
	setAttr ".vclr[102].vfcl[93].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[102].vfcl[93].vfal" 1;
	setAttr ".vclr[103].vxal" 1;
	setAttr -s 4 ".vclr[103].vfcl";
	setAttr ".vclr[103].vfcl[83].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[103].vfcl[83].vfal" 1;
	setAttr ".vclr[103].vfcl[84].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[103].vfcl[84].vfal" 1;
	setAttr ".vclr[103].vfcl[93].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[103].vfcl[93].vfal" 1;
	setAttr ".vclr[103].vfcl[94].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[103].vfcl[94].vfal" 1;
	setAttr ".vclr[104].vxal" 1;
	setAttr -s 4 ".vclr[104].vfcl";
	setAttr ".vclr[104].vfcl[84].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[104].vfcl[84].vfal" 1;
	setAttr ".vclr[104].vfcl[85].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[104].vfcl[85].vfal" 1;
	setAttr ".vclr[104].vfcl[94].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[104].vfcl[94].vfal" 1;
	setAttr ".vclr[104].vfcl[95].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[104].vfcl[95].vfal" 1;
	setAttr ".vclr[105].vxal" 1;
	setAttr -s 4 ".vclr[105].vfcl";
	setAttr ".vclr[105].vfcl[85].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[105].vfcl[85].vfal" 1;
	setAttr ".vclr[105].vfcl[86].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[105].vfcl[86].vfal" 1;
	setAttr ".vclr[105].vfcl[95].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[105].vfcl[95].vfal" 1;
	setAttr ".vclr[105].vfcl[96].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[105].vfcl[96].vfal" 1;
	setAttr ".vclr[106].vxal" 1;
	setAttr -s 4 ".vclr[106].vfcl";
	setAttr ".vclr[106].vfcl[86].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[106].vfcl[86].vfal" 1;
	setAttr ".vclr[106].vfcl[87].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[106].vfcl[87].vfal" 1;
	setAttr ".vclr[106].vfcl[96].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[106].vfcl[96].vfal" 1;
	setAttr ".vclr[106].vfcl[97].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[106].vfcl[97].vfal" 1;
	setAttr ".vclr[107].vxal" 1;
	setAttr -s 4 ".vclr[107].vfcl";
	setAttr ".vclr[107].vfcl[87].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[107].vfcl[87].vfal" 1;
	setAttr ".vclr[107].vfcl[88].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[107].vfcl[88].vfal" 1;
	setAttr ".vclr[107].vfcl[97].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[107].vfcl[97].vfal" 1;
	setAttr ".vclr[107].vfcl[98].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[107].vfcl[98].vfal" 1;
	setAttr ".vclr[108].vxal" 1;
	setAttr -s 4 ".vclr[108].vfcl";
	setAttr ".vclr[108].vfcl[88].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[108].vfcl[88].vfal" 1;
	setAttr ".vclr[108].vfcl[89].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[108].vfcl[89].vfal" 1;
	setAttr ".vclr[108].vfcl[98].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[108].vfcl[98].vfal" 1;
	setAttr ".vclr[108].vfcl[99].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[108].vfcl[99].vfal" 1;
	setAttr ".vclr[109].vxal" 1;
	setAttr -s 2 ".vclr[109].vfcl";
	setAttr ".vclr[109].vfcl[89].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[109].vfcl[89].vfal" 1;
	setAttr ".vclr[109].vfcl[99].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[109].vfcl[99].vfal" 1;
	setAttr ".vclr[110].vxal" 1;
	setAttr ".vclr[110].vfcl[90].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[110].vfcl[90].vfal" 1;
	setAttr ".vclr[111].vxal" 1;
	setAttr -s 2 ".vclr[111].vfcl";
	setAttr ".vclr[111].vfcl[90].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[111].vfcl[90].vfal" 1;
	setAttr ".vclr[111].vfcl[91].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[111].vfcl[91].vfal" 1;
	setAttr ".vclr[112].vxal" 1;
	setAttr -s 2 ".vclr[112].vfcl";
	setAttr ".vclr[112].vfcl[91].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[112].vfcl[91].vfal" 1;
	setAttr ".vclr[112].vfcl[92].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[112].vfcl[92].vfal" 1;
	setAttr ".vclr[113].vxal" 1;
	setAttr -s 2 ".vclr[113].vfcl";
	setAttr ".vclr[113].vfcl[92].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[113].vfcl[92].vfal" 1;
	setAttr ".vclr[113].vfcl[93].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[113].vfcl[93].vfal" 1;
	setAttr ".vclr[114].vxal" 1;
	setAttr -s 2 ".vclr[114].vfcl";
	setAttr ".vclr[114].vfcl[93].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[114].vfcl[93].vfal" 1;
	setAttr ".vclr[114].vfcl[94].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[114].vfcl[94].vfal" 1;
	setAttr ".vclr[115].vxal" 1;
	setAttr -s 2 ".vclr[115].vfcl";
	setAttr ".vclr[115].vfcl[94].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[115].vfcl[94].vfal" 1;
	setAttr ".vclr[115].vfcl[95].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[115].vfcl[95].vfal" 1;
	setAttr ".vclr[116].vxal" 1;
	setAttr -s 2 ".vclr[116].vfcl";
	setAttr ".vclr[116].vfcl[95].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[116].vfcl[95].vfal" 1;
	setAttr ".vclr[116].vfcl[96].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[116].vfcl[96].vfal" 1;
	setAttr ".vclr[117].vxal" 1;
	setAttr -s 2 ".vclr[117].vfcl";
	setAttr ".vclr[117].vfcl[96].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[117].vfcl[96].vfal" 1;
	setAttr ".vclr[117].vfcl[97].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[117].vfcl[97].vfal" 1;
	setAttr ".vclr[118].vxal" 1;
	setAttr -s 2 ".vclr[118].vfcl";
	setAttr ".vclr[118].vfcl[97].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[118].vfcl[97].vfal" 1;
	setAttr ".vclr[118].vfcl[98].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[118].vfcl[98].vfal" 1;
	setAttr ".vclr[119].vxal" 1;
	setAttr -s 2 ".vclr[119].vfcl";
	setAttr ".vclr[119].vfcl[98].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[119].vfcl[98].vfal" 1;
	setAttr ".vclr[119].vfcl[99].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[119].vfcl[99].vfal" 1;
	setAttr ".vclr[120].vxal" 1;
	setAttr ".vclr[120].vfcl[99].frgb" -type "float3" 0.6631 0.64020002 0.40310001 ;
	setAttr ".vclr[120].vfcl[99].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B5DE28B5-452E-D573-C498-098FCF5D838E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 65.476187874400537 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "64E23984-4BCC-FD75-02BD-CAADEF481F9A";
createNode shadingEngine -n "pasted__ShaderfxShader2SG";
	rename -uid "668FB5A0-4695-5078-3DB5-04A0D4E71045";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode ShaderfxShader -n "pasted__autogrid";
	rename -uid "4F013B11-4A6B-3396-909A-D3B88F3FE402";
	addAttr -ci true -uaf -sn "DiffuseTexture" -ln "DiffuseTexture" -dt "string";
	addAttr -ci true -k true -sn "Contrast" -ln "Contrast" -dv 4000 -at "float";
	addAttr -ci true -k true -sn "Specular_Power" -ln "Specular_Power" -dv 40 -at "float";
	addAttr -ci true -uac -k true -sn "Specular_Color" -ln "Specular_Color" -at "float3" 
		-nc 3;
	addAttr -ci true -k true -sn "Specular_ColorR" -ln "Specular_ColorR" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorG" -ln "Specular_ColorG" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorB" -ln "Specular_ColorB" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".ss" no;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=79\n#NT=10100 1 Hw Material Base-Hw Shader Nodes-Core\n\tPC=35\n\tname=1 v=5000 _Material\n\tversion=1 v=2003 1.842000\n\tposx=1 v=2003 1304.020020\n\tposy=1 v=2003 127.968002\n\tclassname=1 v=5000 Hw Material Base\n\tsubmenuname=1 v=5000 Core\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 73\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -1129.380005\n\tgrpPosY=1 v=2003 -143.923004\n\tdisableconsolidation_HwShader=2 e=1 v=2001 0\n\tvalue_ClampDynamicLights=2 e=1 v=2002 99\n\tvalue_MaxNumberLights=2 e=1 v=2002 3\n\tvalue_Gamma=2 e=2 v=2001 0\n\tvalue_Wireframe=2 e=3 v=2001 0\n\tvalue_DepthTest=2 e=4 v=2001 1\n\tvalue_DepthWrite=2 e=4 v=2001 1\n\tvalue_CastShadow=2 e=5 v=2001 1\n\tvalue_SurfaceMaskCutoff=2 e=6 v=2003 0.000000\n\tvalue_SSAO=2 e=7 v=2001 0\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_FlatTessellationBlend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\tvalue_ClippingBiasAdd=2 e=902 v=2003 5.000000\n"
		+ "\toptions_Displacement=2 e=1000 v=5012 1\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_DisplacementMultiplier=2 e=1002 v=2003 1.000000\n\tvalue_DisplacementOffset=2 e=1003 v=2003 0.000000\n\tcgfxprofile_HwShader=2 e=1999 v=5012 0\n\tconfig_HwShader=2 e=2000 v=5012 1\n\tshadername_HwShader=2 e=2001 v=5000 \n\tsaveshadertodisk_HwShader=2 e=2002 v=5015 \n\tgroup=-1\n\tISC=9\n\t\tSVT=2002 2002 0 0 0 _NumberOfLights\n\t\tSVT=5001 3002 0 0 0 _ObjectVertexPosition\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 3002 0 0 0 _Displacement\n\t\tSVT=5001 5018 0 0 0 _SurfaceShader\n\t\tSVT=5001 2003 0 0 0 _SurfaceMask\n\t\tSVT=5001 2003 0 0 0 _SurfaceMaskCutoff\n\t\tSVT=2001 2001 0 0 0 _Gamma\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=0\n#NT=10100 1 Traditional Game Surface Shader-Hw Shader Nodes-Surface Shaders\n\tPC=26\n\tname=1 v=5000 TraditionalGameSurfaceShader\n\tversion=1 v=2003 1.481000\n\tposx=1 v=2003 1094.020020\n\tposy=1 v=2003 127.968002\n\tpreviewswatch=1 v=2002 2\n\tclassname=1 v=5000 Traditional Game Surface Shader\n\tsubmenuname=1 v=5000 Surface Shaders\n\tbitmapnodeindex=1 v=2002 10\n"
		+ "\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 74\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -990.607971\n\tgrpPosY=1 v=2003 169.649994\n\toptions_Diffuse=2 e=1 v=5012 0\n\toptions_Specular=2 e=1 v=5012 0\n\tvalue_FlipBackFaces=2 e=1 v=2001 0\n\tvalue_TranslucencyDistortion=2 e=1100 v=2003 0.200000\n\tvalue_TranslucencyPower=2 e=1101 v=2003 3.000000\n\tvalue_TranslucencyMinimum=2 e=1102 v=2003 0.000000\n\tcolor_TranslucencyOuter=2 e=1104 v=3003 1.000000,0.640000,0.250000,1.000000\n\tcolor_TranslucencyMedium=2 e=1105 v=3003 1.000000,0.210000,0.140000,1.000000\n\tcolor_TranslucencyInner=2 e=1106 v=3003 0.250000,0.050000,0.020000,1.000000\n\tvalue_UseStreamLightData=2 e=1500 v=2001 0\n\tvalue_BakedLightColorSet=2 e=1502 v=5000 BakedLightColorSet\n\tvalue_BakedLightColorSetUnshared=2 e=1503 v=2001 1\n\tgroup=-1\n\tISC=17\n\t\tSVT=5001 2003 0 0 0 _Opacity\n\t\tSVT=5001 3002 0 0 0 _Emissive\n\t\tSVT=5001 2003 0 0 0 _AmbientOcclusion\n\t\tSVT=5001 3002 0 0 0 _DiffuseColor\n\t\tSVT=5001 2003 0 0 0 _SpecularPower\n\t\tSVT=5001 3002 0 0 0 _SpecularColor\n"
		+ "\t\tSVT=5001 3002 0 0 0 _Reflection\n\t\tSVT=5001 2003 0 0 0 _ReflectionIntensity\n\t\tSVT=5001 3002 0 0 0 _Normal\n\t\tSVT=5001 3002 0 0 0 _ObjectThickness\n\t\tSVT=5001 2003 0 0 0 _BlendedNormal\n\t\tSVT=5001 2003 0 0 0 _BlendedNormalMask\n\t\tSVT=5001 3002 0 0 0 _AnisotropicDirection\n\t\tSVT=5001 3001 0 0 0 _AnisotropicSpread\n\t\tSVT=5001 3002 0 0 0 _IBL\n\t\tSVT=5001 2003 0 0 0 _Weight\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 5018 0 _SurfaceShader\n\t\tCC=1\n\t\t\tC=1 0 0 0 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 X_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -580.216980\n\tposy=1 v=2003 -33.850601\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 5 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 3 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=2 2 0 13 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=2 3 0 4 0 3 0\n\t\t\tCPC=0\n\t\t\tC=2 3 0 3 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=2 4 0 4 1 2 0\n\t\t\tCPC=0\n\t\t\tC=2 4 0 3 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=3 1 6 7 2 3 0\n\t\t\tCPC=0\n\t\t\tC=3 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n"
		+ "\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=3 5 10 6 5 0 0\n\t\t\tCPC=0\n\t\t\tC=3 5 10 12 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=4 0 1 3 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=5 0 3 3 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n"
		+ "\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=6 1 0 24 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=2\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=7 0 4 6 1 0 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 9 0 1 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 12 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=2\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=8 0 1 13 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=9 0 2 6 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=9 1 3 6 3 0 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=9 3 5 6 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=10 1 0 5 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n"
		+ "\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=12 2 9 6 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=13 0 3 7 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Vertex World Position-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _VertexWorldPos\n\tversion=1 v=2003 1.610000\n\tposx=1 v=2003 -1568.300049\n\tposy=1 v=2003 -364.207001\n\tclassname=1 v=5000 Vertex World Position\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 66\n\thelpid=1 v=2002 27\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -1050.369995\n\tgrpPosY=1 v=2003 -104.477997\n\tgroup=23\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3003 0 _VertexWorldPosition\n\t\tCC=0\n\t\tSVT=5001 3002 0 \n\t\tCC=1\n\t\t\tC=15 1 0 21 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=5\n\tname=1 v=5000 Specular_Color\n\tposx=1 v=2003 796.518982\n\tposy=1 v=2003 599.218018\n\tcolor=2 e=0 v=3003 0.094118,0.094118,0.094118,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=16 1 2 1 5 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Specular_Power\n\tposx=1 v=2003 797.768982\n"
		+ "\tposy=1 v=2003 466.717987\n\tvalue=2 e=0 v=2003 40.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=17 0 1 1 4 0 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -1165.739990\n\tposy=1 v=2003 -287.777008\n\tgroup=23\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=18 0 2 20 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=18 1 3 19 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=1\n\t\t\tC=18 2 4 62 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=2\n\t\t\tC=18 3 5 20 1 2 0\n\t\t\tCPC=0\n\t\t\tC=18 3 5 19 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -925.236023\n\tposy=1 v=2003 -505.777008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=19 0 7 2 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -917.736023\n\tposy=1 v=2003 -256.277008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=20 0 7 49 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -1358.989990\n\tposy=1 v=2003 -244.526993\n\tgroup=23\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=21 0 3 18 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1537.739990\n\tposy=1 v=2003 -132.026993\n\tvalue=2 e=0 v=2003 0.250000\n\tgroup=23\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=22 0 1 21 1 2 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=12\n\tname=1 v=5000 XYZ_Texture_Projection\n\tposx=1 v=2003 -505.571014\n\tposy=1 v=2003 96.324898\n\tgrpPosX=1 v=2003 -1686.000000\n\tgrpPosY=1 v=2003 286.000000\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=-1\n"
		+ "\tISC=3\n\t\tSVT=5001 5011 0 0 0 Texture\n\t\tSVT=2002 2002 0 0 0 Texture Type\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 5011 0 Texture\n\t\tCC=3\n\t\t\tC=23 0 0 2 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 49 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 62 3 0 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 Texture Type\n\t\tCC=3\n\t\t\tC=23 1 0 2 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 49 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 62 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 -401.000000\n\tposy=1 v=2003 286.000000\n\tgroup=23\n\tISC=4\n\t\tSVT=5001 3002 0 0 0 X-Proj\n\t\tSVT=5001 3002 0 0 0 Y-Proj\n\t\tSVT=5001 3002 0 0 0 Z-Proj\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=4\n\t\tSVT=5001 3002 0 X-Proj\n\t\tCC=1\n\t\t\tC=24 0 0 34 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Y-Proj\n\t\tCC=1\n\t\t\tC=24 1 0 35 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Z-Proj\n\t\tCC=1\n\t\t\tC=24 2 0 34 0 1 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 Vertex World Normal-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _WorldNormal\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 -1418.219971\n\tposy=1 v=2003 335.877014\n\tclassname=1 v=5000 Vertex World Normal\n\tsubmenuname=1 v=5000 Inputs Common\n"
		+ "\tbitmapnodeindex=1 v=2002 60\n\thelpid=1 v=2002 26\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -947.760986\n\tgrpPosY=1 v=2003 -80.223900\n\tgroup=-1\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3002 0 _WorldNormal\n\t\tCC=1\n\t\t\tC=25 0 0 26 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 0 _WorldNormalVertShader\n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20055 0\n\tPC=2\n\tposx=1 v=2003 -1182.140015\n\tposy=1 v=2003 362.778015\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=26 0 3 28 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1398.810059\n\tposy=1 v=2003 551.586975\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=27 0 1 26 1 2 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -961.905029\n\tposy=1 v=2003 268.571014\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=28 0 2 29 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=28 1 3 41 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=28 3 5 29 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n"
		+ "\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -749.523987\n\tposy=1 v=2003 211.429001\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=29 0 7 30 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20021 0\n\tPC=2\n\tposx=1 v=2003 -541.447998\n\tposy=1 v=2003 310.526001\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3001 1 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 2 \n\t\tCC=1\n\t\t\tC=30 0 2 31 0 1 0\n\t\t\tCPC=0\n#NT=20018 0\n\tPC=2\n\tposx=1 v=2003 -334.342010\n\tposy=1 v=2003 356.644989\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=31 0 3 43 0 0 0\n\t\t\tCPC=0\n#NT=20139 0\n\tPC=3\n\tposx=1 v=2003 -539.341980\n\tposy=1 v=2003 471.579010\n\tvalueY=2 e=0 v=2003 0.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 3001 1 \n\t\tCC=1\n\t\t\tC=32 0 1 31 1 2 0\n\t\t\tCPC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 454.901001\n\tposy=1 v=2003 297.977997\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=1\n\t\t\tC=33 1 8 77 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 -32.287399\n\tposy=1 v=2003 171.033005\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=34 0 4 35 0 1 0\n\t\t\tCPC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 204.132004\n\tposy=1 v=2003 330.596008\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=35 0 4 33 4 5 0\n\t\t\tCPC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=36 0 3 38 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -822.456970\n\tposy=1 v=2003 960.456970\n\tvalue=2 e=0 v=2003 4000.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n"
		+ "\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=2\n\t\t\tC=37 0 1 41 1 0 0\n\t\t\tCPC=0\n\t\t\tC=37 0 1 43 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=38 0 3 39 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=39 0 3 40 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=41\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=40 0 2 42 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -392.589996\n\tposy=1 v=2003 803.484985\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=41 0 0 36 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n"
		+ "\t\tCC=1\n\t\t\tC=41 1 0 38 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=42 0 0 35 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -179.546997\n\tposy=1 v=2003 556.651978\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=43 0 0 45 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n\t\tCC=1\n\t\t\tC=43 1 0 46 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=44 0 0 34 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=45 0 3 46 0 1 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=46 0 3 47 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=47 0 3 48 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=43\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=48 0 2 44 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Y_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -571.184998\n\tposy=1 v=2003 232.483002\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n"
		+ "\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=49 0 0 52 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=49 1 0 50 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=49 2 0 60 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=49 3 0 51 0 3 0\n\t\t\tCPC=0\n\t\t\tC=49 3 0 50 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=49 4 0 51 1 2 0\n\t\t\tCPC=0\n\t\t\tC=49 4 0 50 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n"
		+ "\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=50 1 6 54 2 3 0\n\t\t\tCPC=0\n\t\t\tC=50 1 6 58 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=50 5 10 53 5 0 0\n\t\t\tCPC=0\n\t\t\tC=50 5 10 59 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=51 0 1 50 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=52 0 3 50 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n"
		+ "\tposy=1 v=2003 3.846410\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=53 1 0 24 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=49\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=54 0 4 53 1 0 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 56 0 1 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 59 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=49\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=55 0 1 60 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n"
		+ "\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=56 0 2 53 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=56 1 3 53 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=56 3 5 53 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=49\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=57 1 0 52 0 1 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=58 0 0 54 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=59 2 9 53 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n"
		+ "\tgroup=49\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=60 0 3 54 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=49\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Z_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -567.960022\n\tposy=1 v=2003 503.040985\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=62 0 0 65 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=62 1 0 63 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=62 2 0 73 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n"
		+ "\t\t\tC=62 3 0 64 0 3 0\n\t\t\tCPC=0\n\t\t\tC=62 3 0 63 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=62 4 0 64 1 2 0\n\t\t\tCPC=0\n\t\t\tC=62 4 0 63 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=63 1 6 67 2 3 0\n\t\t\tCPC=0\n\t\t\tC=63 1 6 71 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=63 5 10 66 5 0 0\n\t\t\tCPC=0\n\t\t\tC=63 5 10 72 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=62\n"
		+ "\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=64 0 1 63 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=65 0 3 63 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=66 1 0 24 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=62\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n"
		+ "\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=67 0 4 66 1 0 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 69 0 1 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 72 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=62\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=68 0 1 73 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=69 0 2 66 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=69 1 3 66 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=69 3 5 66 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n"
		+ "\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=62\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=70 1 0 65 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=71 0 0 67 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n"
		+ "\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=72 2 9 66 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=62\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=73 0 3 67 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=62\n\tISC=0\n\tOSC=0\n#NT=20028 0\n\tPC=13\n\tname=1 v=5000 DiffuseTexture\n\tposx=1 v=2003 -753.237976\n\tposy=1 v=2003 -75.178001\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\ttexturepath=2 e=1 v=5000 D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 \n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 0\n\tuigroup=2 e=13 v=5000 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=1\n\t\t\tC=75 0 2 23 0 0 0\n\t\t\tCPC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -1046.739990\n\tposy=1 v=2003 -39.187000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=2\n\t\t\tC=76 0 1 75 2 4 0\n\t\t\tCPC=0\n\t\t\tC=76 0 1 23 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 805.000000\n\tposy=1 v=2003 91.250000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=77 0 3 1 3 0 0\n\t\t\tCPC=0\n#NT=10100 1 Vertex Color-Hw Shader Nodes-Inputs Common\n"
		+ "\tPC=14\n\tname=1 v=5000 _VertexColor\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 593.976013\n\tposy=1 v=2003 60.924301\n\tclassname=1 v=5000 Vertex Color\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 70\n\thelpid=1 v=2002 24\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -546.642029\n\tgrpPosY=1 v=2003 -40.049500\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tcolorsetname_Vertex=2 e=2 v=5000 \n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tgroup=-1\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _RGB\n\t\tCC=1\n\t\t\tC=78 1 0 77 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Alpha\n\t\tCC=1\n\t\t\tC=78 5 0 1 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n");
	setAttr ".sprm" -type "string" "DiffuseTexture~278~Contrast~317~Specular_Power~317~Specular_Color~319~";
	setAttr ".DiffuseTexture" -type "string" "D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga";
createNode materialInfo -n "pasted__pasted__materialInfo2";
	rename -uid "A44C148D-4990-5236-4241-418F0B9E4337";
createNode shadingEngine -n "pasted__pasted__ShaderfxShader2SG";
	rename -uid "E8919521-41F1-A099-4F5B-2DAF8732E355";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode ShaderfxShader -n "pasted__pasted__autogrid";
	rename -uid "D8AFF4E9-4211-9D04-AF43-B5A8542FB7F2";
	addAttr -ci true -uaf -sn "DiffuseTexture" -ln "DiffuseTexture" -dt "string";
	addAttr -ci true -k true -sn "Contrast" -ln "Contrast" -dv 4000 -at "float";
	addAttr -ci true -k true -sn "Specular_Power" -ln "Specular_Power" -dv 40 -at "float";
	addAttr -ci true -uac -k true -sn "Specular_Color" -ln "Specular_Color" -at "float3" 
		-nc 3;
	addAttr -ci true -k true -sn "Specular_ColorR" -ln "Specular_ColorR" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorG" -ln "Specular_ColorG" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorB" -ln "Specular_ColorB" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".ss" no;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=79\n#NT=10100 1 Hw Material Base-Hw Shader Nodes-Core\n\tPC=35\n\tname=1 v=5000 _Material\n\tversion=1 v=2003 1.842000\n\tposx=1 v=2003 1304.020020\n\tposy=1 v=2003 127.968002\n\tclassname=1 v=5000 Hw Material Base\n\tsubmenuname=1 v=5000 Core\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 73\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -1129.380005\n\tgrpPosY=1 v=2003 -143.923004\n\tdisableconsolidation_HwShader=2 e=1 v=2001 0\n\tvalue_ClampDynamicLights=2 e=1 v=2002 99\n\tvalue_MaxNumberLights=2 e=1 v=2002 3\n\tvalue_Gamma=2 e=2 v=2001 0\n\tvalue_Wireframe=2 e=3 v=2001 0\n\tvalue_DepthTest=2 e=4 v=2001 1\n\tvalue_DepthWrite=2 e=4 v=2001 1\n\tvalue_CastShadow=2 e=5 v=2001 1\n\tvalue_SurfaceMaskCutoff=2 e=6 v=2003 0.000000\n\tvalue_SSAO=2 e=7 v=2001 0\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_FlatTessellationBlend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\tvalue_ClippingBiasAdd=2 e=902 v=2003 5.000000\n"
		+ "\toptions_Displacement=2 e=1000 v=5012 1\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_DisplacementMultiplier=2 e=1002 v=2003 1.000000\n\tvalue_DisplacementOffset=2 e=1003 v=2003 0.000000\n\tcgfxprofile_HwShader=2 e=1999 v=5012 0\n\tconfig_HwShader=2 e=2000 v=5012 1\n\tshadername_HwShader=2 e=2001 v=5000 \n\tsaveshadertodisk_HwShader=2 e=2002 v=5015 \n\tgroup=-1\n\tISC=9\n\t\tSVT=2002 2002 0 0 0 _NumberOfLights\n\t\tSVT=5001 3002 0 0 0 _ObjectVertexPosition\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 3002 0 0 0 _Displacement\n\t\tSVT=5001 5018 0 0 0 _SurfaceShader\n\t\tSVT=5001 2003 0 0 0 _SurfaceMask\n\t\tSVT=5001 2003 0 0 0 _SurfaceMaskCutoff\n\t\tSVT=2001 2001 0 0 0 _Gamma\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=0\n#NT=10100 1 Traditional Game Surface Shader-Hw Shader Nodes-Surface Shaders\n\tPC=26\n\tname=1 v=5000 TraditionalGameSurfaceShader\n\tversion=1 v=2003 1.481000\n\tposx=1 v=2003 1094.020020\n\tposy=1 v=2003 127.968002\n\tpreviewswatch=1 v=2002 2\n\tclassname=1 v=5000 Traditional Game Surface Shader\n\tsubmenuname=1 v=5000 Surface Shaders\n\tbitmapnodeindex=1 v=2002 10\n"
		+ "\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 74\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -990.607971\n\tgrpPosY=1 v=2003 169.649994\n\toptions_Diffuse=2 e=1 v=5012 0\n\toptions_Specular=2 e=1 v=5012 0\n\tvalue_FlipBackFaces=2 e=1 v=2001 0\n\tvalue_TranslucencyDistortion=2 e=1100 v=2003 0.200000\n\tvalue_TranslucencyPower=2 e=1101 v=2003 3.000000\n\tvalue_TranslucencyMinimum=2 e=1102 v=2003 0.000000\n\tcolor_TranslucencyOuter=2 e=1104 v=3003 1.000000,0.640000,0.250000,1.000000\n\tcolor_TranslucencyMedium=2 e=1105 v=3003 1.000000,0.210000,0.140000,1.000000\n\tcolor_TranslucencyInner=2 e=1106 v=3003 0.250000,0.050000,0.020000,1.000000\n\tvalue_UseStreamLightData=2 e=1500 v=2001 0\n\tvalue_BakedLightColorSet=2 e=1502 v=5000 BakedLightColorSet\n\tvalue_BakedLightColorSetUnshared=2 e=1503 v=2001 1\n\tgroup=-1\n\tISC=17\n\t\tSVT=5001 2003 0 0 0 _Opacity\n\t\tSVT=5001 3002 0 0 0 _Emissive\n\t\tSVT=5001 2003 0 0 0 _AmbientOcclusion\n\t\tSVT=5001 3002 0 0 0 _DiffuseColor\n\t\tSVT=5001 2003 0 0 0 _SpecularPower\n\t\tSVT=5001 3002 0 0 0 _SpecularColor\n"
		+ "\t\tSVT=5001 3002 0 0 0 _Reflection\n\t\tSVT=5001 2003 0 0 0 _ReflectionIntensity\n\t\tSVT=5001 3002 0 0 0 _Normal\n\t\tSVT=5001 3002 0 0 0 _ObjectThickness\n\t\tSVT=5001 2003 0 0 0 _BlendedNormal\n\t\tSVT=5001 2003 0 0 0 _BlendedNormalMask\n\t\tSVT=5001 3002 0 0 0 _AnisotropicDirection\n\t\tSVT=5001 3001 0 0 0 _AnisotropicSpread\n\t\tSVT=5001 3002 0 0 0 _IBL\n\t\tSVT=5001 2003 0 0 0 _Weight\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 5018 0 _SurfaceShader\n\t\tCC=1\n\t\t\tC=1 0 0 0 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 X_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -580.216980\n\tposy=1 v=2003 -33.850601\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 5 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 3 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=2 2 0 13 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=2 3 0 4 0 3 0\n\t\t\tCPC=0\n\t\t\tC=2 3 0 3 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=2 4 0 4 1 2 0\n\t\t\tCPC=0\n\t\t\tC=2 4 0 3 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=3 1 6 7 2 3 0\n\t\t\tCPC=0\n\t\t\tC=3 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n"
		+ "\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=3 5 10 6 5 0 0\n\t\t\tCPC=0\n\t\t\tC=3 5 10 12 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=4 0 1 3 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=5 0 3 3 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n"
		+ "\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=6 1 0 24 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=2\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=7 0 4 6 1 0 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 9 0 1 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 12 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=2\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=8 0 1 13 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=9 0 2 6 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=9 1 3 6 3 0 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=9 3 5 6 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=10 1 0 5 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n"
		+ "\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=12 2 9 6 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=13 0 3 7 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Vertex World Position-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _VertexWorldPos\n\tversion=1 v=2003 1.610000\n\tposx=1 v=2003 -1568.300049\n\tposy=1 v=2003 -364.207001\n\tclassname=1 v=5000 Vertex World Position\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 66\n\thelpid=1 v=2002 27\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -1050.369995\n\tgrpPosY=1 v=2003 -104.477997\n\tgroup=23\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3003 0 _VertexWorldPosition\n\t\tCC=0\n\t\tSVT=5001 3002 0 \n\t\tCC=1\n\t\t\tC=15 1 0 21 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=5\n\tname=1 v=5000 Specular_Color\n\tposx=1 v=2003 796.518982\n\tposy=1 v=2003 599.218018\n\tcolor=2 e=0 v=3003 0.094118,0.094118,0.094118,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=16 1 2 1 5 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Specular_Power\n\tposx=1 v=2003 797.768982\n"
		+ "\tposy=1 v=2003 466.717987\n\tvalue=2 e=0 v=2003 40.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=17 0 1 1 4 0 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -1165.739990\n\tposy=1 v=2003 -287.777008\n\tgroup=23\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=18 0 2 20 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=18 1 3 19 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=1\n\t\t\tC=18 2 4 62 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=2\n\t\t\tC=18 3 5 20 1 2 0\n\t\t\tCPC=0\n\t\t\tC=18 3 5 19 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -925.236023\n\tposy=1 v=2003 -505.777008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=19 0 7 2 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -917.736023\n\tposy=1 v=2003 -256.277008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=20 0 7 49 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -1358.989990\n\tposy=1 v=2003 -244.526993\n\tgroup=23\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=21 0 3 18 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1537.739990\n\tposy=1 v=2003 -132.026993\n\tvalue=2 e=0 v=2003 0.250000\n\tgroup=23\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=22 0 1 21 1 2 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=12\n\tname=1 v=5000 XYZ_Texture_Projection\n\tposx=1 v=2003 -505.571014\n\tposy=1 v=2003 96.324898\n\tgrpPosX=1 v=2003 -1686.000000\n\tgrpPosY=1 v=2003 286.000000\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=-1\n"
		+ "\tISC=3\n\t\tSVT=5001 5011 0 0 0 Texture\n\t\tSVT=2002 2002 0 0 0 Texture Type\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 5011 0 Texture\n\t\tCC=3\n\t\t\tC=23 0 0 2 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 49 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 62 3 0 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 Texture Type\n\t\tCC=3\n\t\t\tC=23 1 0 2 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 49 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 62 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 -401.000000\n\tposy=1 v=2003 286.000000\n\tgroup=23\n\tISC=4\n\t\tSVT=5001 3002 0 0 0 X-Proj\n\t\tSVT=5001 3002 0 0 0 Y-Proj\n\t\tSVT=5001 3002 0 0 0 Z-Proj\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=4\n\t\tSVT=5001 3002 0 X-Proj\n\t\tCC=1\n\t\t\tC=24 0 0 34 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Y-Proj\n\t\tCC=1\n\t\t\tC=24 1 0 35 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Z-Proj\n\t\tCC=1\n\t\t\tC=24 2 0 34 0 1 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 Vertex World Normal-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _WorldNormal\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 -1418.219971\n\tposy=1 v=2003 335.877014\n\tclassname=1 v=5000 Vertex World Normal\n\tsubmenuname=1 v=5000 Inputs Common\n"
		+ "\tbitmapnodeindex=1 v=2002 60\n\thelpid=1 v=2002 26\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -947.760986\n\tgrpPosY=1 v=2003 -80.223900\n\tgroup=-1\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3002 0 _WorldNormal\n\t\tCC=1\n\t\t\tC=25 0 0 26 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 0 _WorldNormalVertShader\n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20055 0\n\tPC=2\n\tposx=1 v=2003 -1182.140015\n\tposy=1 v=2003 362.778015\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=26 0 3 28 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1398.810059\n\tposy=1 v=2003 551.586975\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=27 0 1 26 1 2 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -961.905029\n\tposy=1 v=2003 268.571014\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=28 0 2 29 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=28 1 3 41 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=28 3 5 29 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n"
		+ "\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -749.523987\n\tposy=1 v=2003 211.429001\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=29 0 7 30 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20021 0\n\tPC=2\n\tposx=1 v=2003 -541.447998\n\tposy=1 v=2003 310.526001\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3001 1 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 2 \n\t\tCC=1\n\t\t\tC=30 0 2 31 0 1 0\n\t\t\tCPC=0\n#NT=20018 0\n\tPC=2\n\tposx=1 v=2003 -334.342010\n\tposy=1 v=2003 356.644989\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=31 0 3 43 0 0 0\n\t\t\tCPC=0\n#NT=20139 0\n\tPC=3\n\tposx=1 v=2003 -539.341980\n\tposy=1 v=2003 471.579010\n\tvalueY=2 e=0 v=2003 0.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 3001 1 \n\t\tCC=1\n\t\t\tC=32 0 1 31 1 2 0\n\t\t\tCPC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 454.901001\n\tposy=1 v=2003 297.977997\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=1\n\t\t\tC=33 1 8 77 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 -32.287399\n\tposy=1 v=2003 171.033005\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=34 0 4 35 0 1 0\n\t\t\tCPC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 204.132004\n\tposy=1 v=2003 330.596008\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=35 0 4 33 4 5 0\n\t\t\tCPC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=36 0 3 38 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -822.456970\n\tposy=1 v=2003 960.456970\n\tvalue=2 e=0 v=2003 4000.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n"
		+ "\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=2\n\t\t\tC=37 0 1 41 1 0 0\n\t\t\tCPC=0\n\t\t\tC=37 0 1 43 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=38 0 3 39 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=39 0 3 40 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=41\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=40 0 2 42 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -392.589996\n\tposy=1 v=2003 803.484985\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=41 0 0 36 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n"
		+ "\t\tCC=1\n\t\t\tC=41 1 0 38 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=42 0 0 35 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -179.546997\n\tposy=1 v=2003 556.651978\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=43 0 0 45 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n\t\tCC=1\n\t\t\tC=43 1 0 46 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=44 0 0 34 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=45 0 3 46 0 1 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=46 0 3 47 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=47 0 3 48 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=43\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=48 0 2 44 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Y_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -571.184998\n\tposy=1 v=2003 232.483002\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n"
		+ "\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=49 0 0 52 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=49 1 0 50 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=49 2 0 60 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=49 3 0 51 0 3 0\n\t\t\tCPC=0\n\t\t\tC=49 3 0 50 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=49 4 0 51 1 2 0\n\t\t\tCPC=0\n\t\t\tC=49 4 0 50 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n"
		+ "\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=50 1 6 54 2 3 0\n\t\t\tCPC=0\n\t\t\tC=50 1 6 58 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=50 5 10 53 5 0 0\n\t\t\tCPC=0\n\t\t\tC=50 5 10 59 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=51 0 1 50 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=52 0 3 50 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n"
		+ "\tposy=1 v=2003 3.846410\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=53 1 0 24 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=49\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=54 0 4 53 1 0 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 56 0 1 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 59 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=49\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=55 0 1 60 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n"
		+ "\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=56 0 2 53 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=56 1 3 53 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=56 3 5 53 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=49\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=57 1 0 52 0 1 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=58 0 0 54 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=59 2 9 53 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n"
		+ "\tgroup=49\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=60 0 3 54 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=49\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Z_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -567.960022\n\tposy=1 v=2003 503.040985\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=62 0 0 65 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=62 1 0 63 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=62 2 0 73 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n"
		+ "\t\t\tC=62 3 0 64 0 3 0\n\t\t\tCPC=0\n\t\t\tC=62 3 0 63 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=62 4 0 64 1 2 0\n\t\t\tCPC=0\n\t\t\tC=62 4 0 63 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=63 1 6 67 2 3 0\n\t\t\tCPC=0\n\t\t\tC=63 1 6 71 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=63 5 10 66 5 0 0\n\t\t\tCPC=0\n\t\t\tC=63 5 10 72 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=62\n"
		+ "\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=64 0 1 63 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=65 0 3 63 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=66 1 0 24 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=62\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n"
		+ "\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=67 0 4 66 1 0 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 69 0 1 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 72 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=62\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=68 0 1 73 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=69 0 2 66 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=69 1 3 66 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=69 3 5 66 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n"
		+ "\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=62\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=70 1 0 65 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=71 0 0 67 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n"
		+ "\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=72 2 9 66 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=62\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=73 0 3 67 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=62\n\tISC=0\n\tOSC=0\n#NT=20028 0\n\tPC=13\n\tname=1 v=5000 DiffuseTexture\n\tposx=1 v=2003 -753.237976\n\tposy=1 v=2003 -75.178001\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\ttexturepath=2 e=1 v=5000 D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 \n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 0\n\tuigroup=2 e=13 v=5000 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=1\n\t\t\tC=75 0 2 23 0 0 0\n\t\t\tCPC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -1046.739990\n\tposy=1 v=2003 -39.187000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=2\n\t\t\tC=76 0 1 75 2 4 0\n\t\t\tCPC=0\n\t\t\tC=76 0 1 23 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 805.000000\n\tposy=1 v=2003 91.250000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=77 0 3 1 3 0 0\n\t\t\tCPC=0\n#NT=10100 1 Vertex Color-Hw Shader Nodes-Inputs Common\n"
		+ "\tPC=14\n\tname=1 v=5000 _VertexColor\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 593.976013\n\tposy=1 v=2003 60.924301\n\tclassname=1 v=5000 Vertex Color\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 70\n\thelpid=1 v=2002 24\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -546.642029\n\tgrpPosY=1 v=2003 -40.049500\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tcolorsetname_Vertex=2 e=2 v=5000 \n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tgroup=-1\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _RGB\n\t\tCC=1\n\t\t\tC=78 1 0 77 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Alpha\n\t\tCC=1\n\t\t\tC=78 5 0 1 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n");
	setAttr ".sprm" -type "string" "DiffuseTexture~278~Contrast~317~Specular_Power~317~Specular_Color~319~";
	setAttr ".DiffuseTexture" -type "string" "D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga";
createNode materialInfo -n "pasted__pasted__pasted__materialInfo2";
	rename -uid "47CF417A-4F5C-390C-E297-D7B31259871D";
createNode shadingEngine -n "pasted__pasted__pasted__ShaderfxShader2SG";
	rename -uid "078EDBED-4130-85DD-AD1E-EEA2B618E7DD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode ShaderfxShader -n "pasted__pasted__pasted__autogrid";
	rename -uid "69763F5F-499B-D52A-C0D4-2CA5C6B3E858";
	addAttr -ci true -uaf -sn "DiffuseTexture" -ln "DiffuseTexture" -dt "string";
	addAttr -ci true -k true -sn "Contrast" -ln "Contrast" -dv 4000 -at "float";
	addAttr -ci true -k true -sn "Specular_Power" -ln "Specular_Power" -dv 40 -at "float";
	addAttr -ci true -uac -k true -sn "Specular_Color" -ln "Specular_Color" -at "float3" 
		-nc 3;
	addAttr -ci true -k true -sn "Specular_ColorR" -ln "Specular_ColorR" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorG" -ln "Specular_ColorG" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorB" -ln "Specular_ColorB" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".ss" no;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=79\n#NT=10100 1 Hw Material Base-Hw Shader Nodes-Core\n\tPC=35\n\tname=1 v=5000 _Material\n\tversion=1 v=2003 1.842000\n\tposx=1 v=2003 1304.020020\n\tposy=1 v=2003 127.968002\n\tclassname=1 v=5000 Hw Material Base\n\tsubmenuname=1 v=5000 Core\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 73\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -1129.380005\n\tgrpPosY=1 v=2003 -143.923004\n\tdisableconsolidation_HwShader=2 e=1 v=2001 0\n\tvalue_ClampDynamicLights=2 e=1 v=2002 99\n\tvalue_MaxNumberLights=2 e=1 v=2002 3\n\tvalue_Gamma=2 e=2 v=2001 0\n\tvalue_Wireframe=2 e=3 v=2001 0\n\tvalue_DepthTest=2 e=4 v=2001 1\n\tvalue_DepthWrite=2 e=4 v=2001 1\n\tvalue_CastShadow=2 e=5 v=2001 1\n\tvalue_SurfaceMaskCutoff=2 e=6 v=2003 0.000000\n\tvalue_SSAO=2 e=7 v=2001 0\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_FlatTessellationBlend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\tvalue_ClippingBiasAdd=2 e=902 v=2003 5.000000\n"
		+ "\toptions_Displacement=2 e=1000 v=5012 1\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_DisplacementMultiplier=2 e=1002 v=2003 1.000000\n\tvalue_DisplacementOffset=2 e=1003 v=2003 0.000000\n\tcgfxprofile_HwShader=2 e=1999 v=5012 0\n\tconfig_HwShader=2 e=2000 v=5012 1\n\tshadername_HwShader=2 e=2001 v=5000 \n\tsaveshadertodisk_HwShader=2 e=2002 v=5015 \n\tgroup=-1\n\tISC=9\n\t\tSVT=2002 2002 0 0 0 _NumberOfLights\n\t\tSVT=5001 3002 0 0 0 _ObjectVertexPosition\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 3002 0 0 0 _Displacement\n\t\tSVT=5001 5018 0 0 0 _SurfaceShader\n\t\tSVT=5001 2003 0 0 0 _SurfaceMask\n\t\tSVT=5001 2003 0 0 0 _SurfaceMaskCutoff\n\t\tSVT=2001 2001 0 0 0 _Gamma\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=0\n#NT=10100 1 Traditional Game Surface Shader-Hw Shader Nodes-Surface Shaders\n\tPC=26\n\tname=1 v=5000 TraditionalGameSurfaceShader\n\tversion=1 v=2003 1.481000\n\tposx=1 v=2003 1094.020020\n\tposy=1 v=2003 127.968002\n\tpreviewswatch=1 v=2002 2\n\tclassname=1 v=5000 Traditional Game Surface Shader\n\tsubmenuname=1 v=5000 Surface Shaders\n\tbitmapnodeindex=1 v=2002 10\n"
		+ "\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 74\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -990.607971\n\tgrpPosY=1 v=2003 169.649994\n\toptions_Diffuse=2 e=1 v=5012 0\n\toptions_Specular=2 e=1 v=5012 0\n\tvalue_FlipBackFaces=2 e=1 v=2001 0\n\tvalue_TranslucencyDistortion=2 e=1100 v=2003 0.200000\n\tvalue_TranslucencyPower=2 e=1101 v=2003 3.000000\n\tvalue_TranslucencyMinimum=2 e=1102 v=2003 0.000000\n\tcolor_TranslucencyOuter=2 e=1104 v=3003 1.000000,0.640000,0.250000,1.000000\n\tcolor_TranslucencyMedium=2 e=1105 v=3003 1.000000,0.210000,0.140000,1.000000\n\tcolor_TranslucencyInner=2 e=1106 v=3003 0.250000,0.050000,0.020000,1.000000\n\tvalue_UseStreamLightData=2 e=1500 v=2001 0\n\tvalue_BakedLightColorSet=2 e=1502 v=5000 BakedLightColorSet\n\tvalue_BakedLightColorSetUnshared=2 e=1503 v=2001 1\n\tgroup=-1\n\tISC=17\n\t\tSVT=5001 2003 0 0 0 _Opacity\n\t\tSVT=5001 3002 0 0 0 _Emissive\n\t\tSVT=5001 2003 0 0 0 _AmbientOcclusion\n\t\tSVT=5001 3002 0 0 0 _DiffuseColor\n\t\tSVT=5001 2003 0 0 0 _SpecularPower\n\t\tSVT=5001 3002 0 0 0 _SpecularColor\n"
		+ "\t\tSVT=5001 3002 0 0 0 _Reflection\n\t\tSVT=5001 2003 0 0 0 _ReflectionIntensity\n\t\tSVT=5001 3002 0 0 0 _Normal\n\t\tSVT=5001 3002 0 0 0 _ObjectThickness\n\t\tSVT=5001 2003 0 0 0 _BlendedNormal\n\t\tSVT=5001 2003 0 0 0 _BlendedNormalMask\n\t\tSVT=5001 3002 0 0 0 _AnisotropicDirection\n\t\tSVT=5001 3001 0 0 0 _AnisotropicSpread\n\t\tSVT=5001 3002 0 0 0 _IBL\n\t\tSVT=5001 2003 0 0 0 _Weight\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 5018 0 _SurfaceShader\n\t\tCC=1\n\t\t\tC=1 0 0 0 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 X_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -580.216980\n\tposy=1 v=2003 -33.850601\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 5 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 3 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=2 2 0 13 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=2 3 0 4 0 3 0\n\t\t\tCPC=0\n\t\t\tC=2 3 0 3 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=2 4 0 4 1 2 0\n\t\t\tCPC=0\n\t\t\tC=2 4 0 3 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=3 1 6 7 2 3 0\n\t\t\tCPC=0\n\t\t\tC=3 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n"
		+ "\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=3 5 10 6 5 0 0\n\t\t\tCPC=0\n\t\t\tC=3 5 10 12 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=4 0 1 3 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=5 0 3 3 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n"
		+ "\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=6 1 0 24 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=2\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=7 0 4 6 1 0 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 9 0 1 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 12 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=2\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=8 0 1 13 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=9 0 2 6 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=9 1 3 6 3 0 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=9 3 5 6 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=10 1 0 5 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n"
		+ "\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=12 2 9 6 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=13 0 3 7 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Vertex World Position-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _VertexWorldPos\n\tversion=1 v=2003 1.610000\n\tposx=1 v=2003 -1568.300049\n\tposy=1 v=2003 -364.207001\n\tclassname=1 v=5000 Vertex World Position\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 66\n\thelpid=1 v=2002 27\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -1050.369995\n\tgrpPosY=1 v=2003 -104.477997\n\tgroup=23\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3003 0 _VertexWorldPosition\n\t\tCC=0\n\t\tSVT=5001 3002 0 \n\t\tCC=1\n\t\t\tC=15 1 0 21 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=5\n\tname=1 v=5000 Specular_Color\n\tposx=1 v=2003 796.518982\n\tposy=1 v=2003 599.218018\n\tcolor=2 e=0 v=3003 0.094118,0.094118,0.094118,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=16 1 2 1 5 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Specular_Power\n\tposx=1 v=2003 797.768982\n"
		+ "\tposy=1 v=2003 466.717987\n\tvalue=2 e=0 v=2003 40.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=17 0 1 1 4 0 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -1165.739990\n\tposy=1 v=2003 -287.777008\n\tgroup=23\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=18 0 2 20 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=18 1 3 19 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=1\n\t\t\tC=18 2 4 62 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=2\n\t\t\tC=18 3 5 20 1 2 0\n\t\t\tCPC=0\n\t\t\tC=18 3 5 19 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -925.236023\n\tposy=1 v=2003 -505.777008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=19 0 7 2 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -917.736023\n\tposy=1 v=2003 -256.277008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=20 0 7 49 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -1358.989990\n\tposy=1 v=2003 -244.526993\n\tgroup=23\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=21 0 3 18 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1537.739990\n\tposy=1 v=2003 -132.026993\n\tvalue=2 e=0 v=2003 0.250000\n\tgroup=23\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=22 0 1 21 1 2 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=12\n\tname=1 v=5000 XYZ_Texture_Projection\n\tposx=1 v=2003 -505.571014\n\tposy=1 v=2003 96.324898\n\tgrpPosX=1 v=2003 -1686.000000\n\tgrpPosY=1 v=2003 286.000000\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=-1\n"
		+ "\tISC=3\n\t\tSVT=5001 5011 0 0 0 Texture\n\t\tSVT=2002 2002 0 0 0 Texture Type\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 5011 0 Texture\n\t\tCC=3\n\t\t\tC=23 0 0 2 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 49 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 62 3 0 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 Texture Type\n\t\tCC=3\n\t\t\tC=23 1 0 2 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 49 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 62 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 -401.000000\n\tposy=1 v=2003 286.000000\n\tgroup=23\n\tISC=4\n\t\tSVT=5001 3002 0 0 0 X-Proj\n\t\tSVT=5001 3002 0 0 0 Y-Proj\n\t\tSVT=5001 3002 0 0 0 Z-Proj\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=4\n\t\tSVT=5001 3002 0 X-Proj\n\t\tCC=1\n\t\t\tC=24 0 0 34 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Y-Proj\n\t\tCC=1\n\t\t\tC=24 1 0 35 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Z-Proj\n\t\tCC=1\n\t\t\tC=24 2 0 34 0 1 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 Vertex World Normal-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _WorldNormal\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 -1418.219971\n\tposy=1 v=2003 335.877014\n\tclassname=1 v=5000 Vertex World Normal\n\tsubmenuname=1 v=5000 Inputs Common\n"
		+ "\tbitmapnodeindex=1 v=2002 60\n\thelpid=1 v=2002 26\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -947.760986\n\tgrpPosY=1 v=2003 -80.223900\n\tgroup=-1\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3002 0 _WorldNormal\n\t\tCC=1\n\t\t\tC=25 0 0 26 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 0 _WorldNormalVertShader\n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20055 0\n\tPC=2\n\tposx=1 v=2003 -1182.140015\n\tposy=1 v=2003 362.778015\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=26 0 3 28 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1398.810059\n\tposy=1 v=2003 551.586975\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=27 0 1 26 1 2 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -961.905029\n\tposy=1 v=2003 268.571014\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=28 0 2 29 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=28 1 3 41 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=28 3 5 29 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n"
		+ "\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -749.523987\n\tposy=1 v=2003 211.429001\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=29 0 7 30 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20021 0\n\tPC=2\n\tposx=1 v=2003 -541.447998\n\tposy=1 v=2003 310.526001\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3001 1 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 2 \n\t\tCC=1\n\t\t\tC=30 0 2 31 0 1 0\n\t\t\tCPC=0\n#NT=20018 0\n\tPC=2\n\tposx=1 v=2003 -334.342010\n\tposy=1 v=2003 356.644989\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=31 0 3 43 0 0 0\n\t\t\tCPC=0\n#NT=20139 0\n\tPC=3\n\tposx=1 v=2003 -539.341980\n\tposy=1 v=2003 471.579010\n\tvalueY=2 e=0 v=2003 0.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 3001 1 \n\t\tCC=1\n\t\t\tC=32 0 1 31 1 2 0\n\t\t\tCPC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 454.901001\n\tposy=1 v=2003 297.977997\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=1\n\t\t\tC=33 1 8 77 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 -32.287399\n\tposy=1 v=2003 171.033005\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=34 0 4 35 0 1 0\n\t\t\tCPC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 204.132004\n\tposy=1 v=2003 330.596008\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=35 0 4 33 4 5 0\n\t\t\tCPC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=36 0 3 38 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -822.456970\n\tposy=1 v=2003 960.456970\n\tvalue=2 e=0 v=2003 4000.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n"
		+ "\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=2\n\t\t\tC=37 0 1 41 1 0 0\n\t\t\tCPC=0\n\t\t\tC=37 0 1 43 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=38 0 3 39 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=39 0 3 40 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=41\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=40 0 2 42 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -392.589996\n\tposy=1 v=2003 803.484985\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=41 0 0 36 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n"
		+ "\t\tCC=1\n\t\t\tC=41 1 0 38 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=42 0 0 35 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -179.546997\n\tposy=1 v=2003 556.651978\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=43 0 0 45 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n\t\tCC=1\n\t\t\tC=43 1 0 46 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=44 0 0 34 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=45 0 3 46 0 1 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=46 0 3 47 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=47 0 3 48 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=43\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=48 0 2 44 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Y_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -571.184998\n\tposy=1 v=2003 232.483002\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n"
		+ "\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=49 0 0 52 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=49 1 0 50 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=49 2 0 60 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=49 3 0 51 0 3 0\n\t\t\tCPC=0\n\t\t\tC=49 3 0 50 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=49 4 0 51 1 2 0\n\t\t\tCPC=0\n\t\t\tC=49 4 0 50 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n"
		+ "\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=50 1 6 54 2 3 0\n\t\t\tCPC=0\n\t\t\tC=50 1 6 58 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=50 5 10 53 5 0 0\n\t\t\tCPC=0\n\t\t\tC=50 5 10 59 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=51 0 1 50 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=52 0 3 50 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n"
		+ "\tposy=1 v=2003 3.846410\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=53 1 0 24 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=49\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=54 0 4 53 1 0 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 56 0 1 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 59 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=49\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=55 0 1 60 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n"
		+ "\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=56 0 2 53 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=56 1 3 53 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=56 3 5 53 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=49\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=57 1 0 52 0 1 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=58 0 0 54 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=59 2 9 53 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n"
		+ "\tgroup=49\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=60 0 3 54 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=49\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Z_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -567.960022\n\tposy=1 v=2003 503.040985\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=62 0 0 65 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=62 1 0 63 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=62 2 0 73 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n"
		+ "\t\t\tC=62 3 0 64 0 3 0\n\t\t\tCPC=0\n\t\t\tC=62 3 0 63 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=62 4 0 64 1 2 0\n\t\t\tCPC=0\n\t\t\tC=62 4 0 63 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=63 1 6 67 2 3 0\n\t\t\tCPC=0\n\t\t\tC=63 1 6 71 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=63 5 10 66 5 0 0\n\t\t\tCPC=0\n\t\t\tC=63 5 10 72 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=62\n"
		+ "\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=64 0 1 63 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=65 0 3 63 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=66 1 0 24 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=62\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n"
		+ "\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=67 0 4 66 1 0 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 69 0 1 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 72 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=62\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=68 0 1 73 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=69 0 2 66 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=69 1 3 66 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=69 3 5 66 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n"
		+ "\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=62\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=70 1 0 65 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=71 0 0 67 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n"
		+ "\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=72 2 9 66 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=62\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=73 0 3 67 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=62\n\tISC=0\n\tOSC=0\n#NT=20028 0\n\tPC=13\n\tname=1 v=5000 DiffuseTexture\n\tposx=1 v=2003 -753.237976\n\tposy=1 v=2003 -75.178001\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\ttexturepath=2 e=1 v=5000 D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 \n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 0\n\tuigroup=2 e=13 v=5000 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=1\n\t\t\tC=75 0 2 23 0 0 0\n\t\t\tCPC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -1046.739990\n\tposy=1 v=2003 -39.187000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=2\n\t\t\tC=76 0 1 75 2 4 0\n\t\t\tCPC=0\n\t\t\tC=76 0 1 23 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 805.000000\n\tposy=1 v=2003 91.250000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=77 0 3 1 3 0 0\n\t\t\tCPC=0\n#NT=10100 1 Vertex Color-Hw Shader Nodes-Inputs Common\n"
		+ "\tPC=14\n\tname=1 v=5000 _VertexColor\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 593.976013\n\tposy=1 v=2003 60.924301\n\tclassname=1 v=5000 Vertex Color\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 70\n\thelpid=1 v=2002 24\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -546.642029\n\tgrpPosY=1 v=2003 -40.049500\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tcolorsetname_Vertex=2 e=2 v=5000 \n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tgroup=-1\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _RGB\n\t\tCC=1\n\t\t\tC=78 1 0 77 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Alpha\n\t\tCC=1\n\t\t\tC=78 5 0 1 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n");
	setAttr ".sprm" -type "string" "DiffuseTexture~278~Contrast~317~Specular_Power~317~Specular_Color~319~";
	setAttr ".DiffuseTexture" -type "string" "D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga";
createNode materialInfo -n "pasted__pasted__pasted__pasted__materialInfo2";
	rename -uid "F9C94842-4F8A-111C-A3A8-24AEA736DB4D";
createNode shadingEngine -n "pasted__pasted__pasted__pasted__ShaderfxShader2SG";
	rename -uid "5A0BCA86-49F8-7748-1A2D-33A36EF386B2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode ShaderfxShader -n "pasted__pasted__pasted__pasted__autogrid";
	rename -uid "D25D499B-4A71-011C-BF64-F1ACCE453F95";
	addAttr -ci true -uaf -sn "DiffuseTexture" -ln "DiffuseTexture" -dt "string";
	addAttr -ci true -k true -sn "Contrast" -ln "Contrast" -dv 4000 -at "float";
	addAttr -ci true -k true -sn "Specular_Power" -ln "Specular_Power" -dv 40 -at "float";
	addAttr -ci true -uac -k true -sn "Specular_Color" -ln "Specular_Color" -at "float3" 
		-nc 3;
	addAttr -ci true -k true -sn "Specular_ColorR" -ln "Specular_ColorR" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorG" -ln "Specular_ColorG" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	addAttr -ci true -k true -sn "Specular_ColorB" -ln "Specular_ColorB" -dv 0.094117648899555206 
		-at "float" -p "Specular_Color";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".ss" no;
	setAttr ".sg" -type "string" (
		"SFX_WIN\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=79\n#NT=10100 1 Hw Material Base-Hw Shader Nodes-Core\n\tPC=35\n\tname=1 v=5000 _Material\n\tversion=1 v=2003 1.842000\n\tposx=1 v=2003 1304.020020\n\tposy=1 v=2003 127.968002\n\tclassname=1 v=5000 Hw Material Base\n\tsubmenuname=1 v=5000 Core\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 73\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -1129.380005\n\tgrpPosY=1 v=2003 -143.923004\n\tdisableconsolidation_HwShader=2 e=1 v=2001 0\n\tvalue_ClampDynamicLights=2 e=1 v=2002 99\n\tvalue_MaxNumberLights=2 e=1 v=2002 3\n\tvalue_Gamma=2 e=2 v=2001 0\n\tvalue_Wireframe=2 e=3 v=2001 0\n\tvalue_DepthTest=2 e=4 v=2001 1\n\tvalue_DepthWrite=2 e=4 v=2001 1\n\tvalue_CastShadow=2 e=5 v=2001 1\n\tvalue_SurfaceMaskCutoff=2 e=6 v=2003 0.000000\n\tvalue_SSAO=2 e=7 v=2001 0\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_FlatTessellationBlend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\tvalue_ClippingBiasAdd=2 e=902 v=2003 5.000000\n"
		+ "\toptions_Displacement=2 e=1000 v=5012 1\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_DisplacementMultiplier=2 e=1002 v=2003 1.000000\n\tvalue_DisplacementOffset=2 e=1003 v=2003 0.000000\n\tcgfxprofile_HwShader=2 e=1999 v=5012 0\n\tconfig_HwShader=2 e=2000 v=5012 1\n\tshadername_HwShader=2 e=2001 v=5000 \n\tsaveshadertodisk_HwShader=2 e=2002 v=5015 \n\tgroup=-1\n\tISC=9\n\t\tSVT=2002 2002 0 0 0 _NumberOfLights\n\t\tSVT=5001 3002 0 0 0 _ObjectVertexPosition\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 3002 0 0 0 _Displacement\n\t\tSVT=5001 5018 0 0 0 _SurfaceShader\n\t\tSVT=5001 2003 0 0 0 _SurfaceMask\n\t\tSVT=5001 2003 0 0 0 _SurfaceMaskCutoff\n\t\tSVT=2001 2001 0 0 0 _Gamma\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=0\n#NT=10100 1 Traditional Game Surface Shader-Hw Shader Nodes-Surface Shaders\n\tPC=26\n\tname=1 v=5000 TraditionalGameSurfaceShader\n\tversion=1 v=2003 1.481000\n\tposx=1 v=2003 1094.020020\n\tposy=1 v=2003 127.968002\n\tpreviewswatch=1 v=2002 2\n\tclassname=1 v=5000 Traditional Game Surface Shader\n\tsubmenuname=1 v=5000 Surface Shaders\n\tbitmapnodeindex=1 v=2002 10\n"
		+ "\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 74\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -990.607971\n\tgrpPosY=1 v=2003 169.649994\n\toptions_Diffuse=2 e=1 v=5012 0\n\toptions_Specular=2 e=1 v=5012 0\n\tvalue_FlipBackFaces=2 e=1 v=2001 0\n\tvalue_TranslucencyDistortion=2 e=1100 v=2003 0.200000\n\tvalue_TranslucencyPower=2 e=1101 v=2003 3.000000\n\tvalue_TranslucencyMinimum=2 e=1102 v=2003 0.000000\n\tcolor_TranslucencyOuter=2 e=1104 v=3003 1.000000,0.640000,0.250000,1.000000\n\tcolor_TranslucencyMedium=2 e=1105 v=3003 1.000000,0.210000,0.140000,1.000000\n\tcolor_TranslucencyInner=2 e=1106 v=3003 0.250000,0.050000,0.020000,1.000000\n\tvalue_UseStreamLightData=2 e=1500 v=2001 0\n\tvalue_BakedLightColorSet=2 e=1502 v=5000 BakedLightColorSet\n\tvalue_BakedLightColorSetUnshared=2 e=1503 v=2001 1\n\tgroup=-1\n\tISC=17\n\t\tSVT=5001 2003 0 0 0 _Opacity\n\t\tSVT=5001 3002 0 0 0 _Emissive\n\t\tSVT=5001 2003 0 0 0 _AmbientOcclusion\n\t\tSVT=5001 3002 0 0 0 _DiffuseColor\n\t\tSVT=5001 2003 0 0 0 _SpecularPower\n\t\tSVT=5001 3002 0 0 0 _SpecularColor\n"
		+ "\t\tSVT=5001 3002 0 0 0 _Reflection\n\t\tSVT=5001 2003 0 0 0 _ReflectionIntensity\n\t\tSVT=5001 3002 0 0 0 _Normal\n\t\tSVT=5001 3002 0 0 0 _ObjectThickness\n\t\tSVT=5001 2003 0 0 0 _BlendedNormal\n\t\tSVT=5001 2003 0 0 0 _BlendedNormalMask\n\t\tSVT=5001 3002 0 0 0 _AnisotropicDirection\n\t\tSVT=5001 3001 0 0 0 _AnisotropicSpread\n\t\tSVT=5001 3002 0 0 0 _IBL\n\t\tSVT=5001 2003 0 0 0 _Weight\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 5018 0 _SurfaceShader\n\t\tCC=1\n\t\t\tC=1 0 0 0 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 X_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -580.216980\n\tposy=1 v=2003 -33.850601\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n"
		+ "\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=2 0 0 5 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=2 1 0 3 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=2 2 0 13 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=2 3 0 4 0 3 0\n\t\t\tCPC=0\n\t\t\tC=2 3 0 3 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=2 4 0 4 1 2 0\n\t\t\tCPC=0\n\t\t\tC=2 4 0 3 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=3 1 6 7 2 3 0\n\t\t\tCPC=0\n\t\t\tC=3 1 6 11 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n"
		+ "\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=3 5 10 6 5 0 0\n\t\t\tCPC=0\n\t\t\tC=3 5 10 12 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=4 0 1 3 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=5 0 3 3 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=2\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n"
		+ "\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=6 1 0 24 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=2\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=7 0 4 6 1 0 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 9 0 1 0\n\t\t\tCPC=0\n\t\t\tC=7 0 4 12 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=2\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=8 0 1 13 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=9 0 2 6 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=9 1 3 6 3 0 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=9 3 5 6 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=2\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=10 1 0 5 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n"
		+ "\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=2\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=11 0 0 7 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=2\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=12 2 9 6 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=2\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=13 0 3 7 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=2\n\tISC=0\n\tOSC=0\n#NT=10100 1 Vertex World Position-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _VertexWorldPos\n\tversion=1 v=2003 1.610000\n\tposx=1 v=2003 -1568.300049\n\tposy=1 v=2003 -364.207001\n\tclassname=1 v=5000 Vertex World Position\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 66\n\thelpid=1 v=2002 27\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -1050.369995\n\tgrpPosY=1 v=2003 -104.477997\n\tgroup=23\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3003 0 _VertexWorldPosition\n\t\tCC=0\n\t\tSVT=5001 3002 0 \n\t\tCC=1\n\t\t\tC=15 1 0 21 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20011 0\n\tPC=5\n\tname=1 v=5000 Specular_Color\n\tposx=1 v=2003 796.518982\n\tposy=1 v=2003 599.218018\n\tcolor=2 e=0 v=3003 0.094118,0.094118,0.094118,1.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=6\n\t\tSVT=5001 3003 1 \n\t\tCC=0\n\t\tSVT=5001 3002 2 \n\t\tCC=1\n\t\t\tC=16 1 2 1 5 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=0\n\t\tSVT=5001 2003 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=0\n\t\tSVT=5001 2003 6 \n\t\tCC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Specular_Power\n\tposx=1 v=2003 797.768982\n"
		+ "\tposy=1 v=2003 466.717987\n\tvalue=2 e=0 v=2003 40.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=17 0 1 1 4 0 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -1165.739990\n\tposy=1 v=2003 -287.777008\n\tgroup=23\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=18 0 2 20 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=18 1 3 19 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=1\n\t\t\tC=18 2 4 62 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=2\n\t\t\tC=18 3 5 20 1 2 0\n\t\t\tCPC=0\n\t\t\tC=18 3 5 19 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -925.236023\n\tposy=1 v=2003 -505.777008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=19 0 7 2 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -917.736023\n\tposy=1 v=2003 -256.277008\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=20 0 7 49 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -1358.989990\n\tposy=1 v=2003 -244.526993\n\tgroup=23\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=21 0 3 18 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1537.739990\n\tposy=1 v=2003 -132.026993\n\tvalue=2 e=0 v=2003 0.250000\n\tgroup=23\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=22 0 1 21 1 2 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=12\n\tname=1 v=5000 XYZ_Texture_Projection\n\tposx=1 v=2003 -505.571014\n\tposy=1 v=2003 96.324898\n\tgrpPosX=1 v=2003 -1686.000000\n\tgrpPosY=1 v=2003 286.000000\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=-1\n"
		+ "\tISC=3\n\t\tSVT=5001 5011 0 0 0 Texture\n\t\tSVT=2002 2002 0 0 0 Texture Type\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 5011 0 Texture\n\t\tCC=3\n\t\t\tC=23 0 0 2 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 49 3 0 0\n\t\t\tCPC=0\n\t\t\tC=23 0 0 62 3 0 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 Texture Type\n\t\tCC=3\n\t\t\tC=23 1 0 2 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 49 4 0 0\n\t\t\tCPC=0\n\t\t\tC=23 1 0 62 4 0 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 -401.000000\n\tposy=1 v=2003 286.000000\n\tgroup=23\n\tISC=4\n\t\tSVT=5001 3002 0 0 0 X-Proj\n\t\tSVT=5001 3002 0 0 0 Y-Proj\n\t\tSVT=5001 3002 0 0 0 Z-Proj\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=4\n\t\tSVT=5001 3002 0 X-Proj\n\t\tCC=1\n\t\t\tC=24 0 0 34 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Y-Proj\n\t\tCC=1\n\t\t\tC=24 1 0 35 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 0 Z-Proj\n\t\tCC=1\n\t\t\tC=24 2 0 34 0 1 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 1 Vertex World Normal-Hw Shader Nodes-Inputs Common\n\tPC=11\n\tname=1 v=5000 _WorldNormal\n\tversion=1 v=2003 1.660000\n\tposx=1 v=2003 -1418.219971\n\tposy=1 v=2003 335.877014\n\tclassname=1 v=5000 Vertex World Normal\n\tsubmenuname=1 v=5000 Inputs Common\n"
		+ "\tbitmapnodeindex=1 v=2002 60\n\thelpid=1 v=2002 26\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -947.760986\n\tgrpPosY=1 v=2003 -80.223900\n\tgroup=-1\n\tISC=0\n\tOSC=3\n\t\tSVT=5001 3002 0 _WorldNormal\n\t\tCC=1\n\t\t\tC=25 0 0 26 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 0 _WorldNormalVertShader\n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20055 0\n\tPC=2\n\tposx=1 v=2003 -1182.140015\n\tposy=1 v=2003 362.778015\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=26 0 3 28 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=3\n\tposx=1 v=2003 -1398.810059\n\tposy=1 v=2003 551.586975\n\tvalue=2 e=0 v=2003 2.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=1\n\t\t\tC=27 0 1 26 1 2 0\n\t\t\tCPC=0\n#NT=20108 0\n\tPC=2\n\tposx=1 v=2003 -961.905029\n\tposy=1 v=2003 268.571014\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=28 0 2 29 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=28 1 3 41 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=28 3 5 29 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n"
		+ "\t\tCC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 -749.523987\n\tposy=1 v=2003 211.429001\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=1\n\t\t\tC=29 0 7 30 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20021 0\n\tPC=2\n\tposx=1 v=2003 -541.447998\n\tposy=1 v=2003 310.526001\n\tgroup=-1\n\tISC=1\n\t\tSVT=5001 3001 1 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 2 \n\t\tCC=1\n\t\t\tC=30 0 2 31 0 1 0\n\t\t\tCPC=0\n#NT=20018 0\n\tPC=2\n\tposx=1 v=2003 -334.342010\n\tposy=1 v=2003 356.644989\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=31 0 3 43 0 0 0\n\t\t\tCPC=0\n#NT=20139 0\n\tPC=3\n\tposx=1 v=2003 -539.341980\n\tposy=1 v=2003 471.579010\n\tvalueY=2 e=0 v=2003 0.000000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=5001 3001 1 \n\t\tCC=1\n\t\t\tC=32 0 1 31 1 2 0\n\t\t\tCPC=0\n#NT=20020 0\n\tPC=2\n\tposx=1 v=2003 454.901001\n\tposy=1 v=2003 297.977997\n\tgroup=-1\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n"
		+ "\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=1\n\t\t\tC=33 1 8 77 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 -32.287399\n\tposy=1 v=2003 171.033005\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=34 0 4 35 0 1 0\n\t\t\tCPC=0\n#NT=20031 0\n\tPC=2\n\tposx=1 v=2003 204.132004\n\tposy=1 v=2003 330.596008\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=1\n\t\t\tC=35 0 4 33 4 5 0\n\t\t\tCPC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=36 0 3 38 0 1 0\n\t\t\tCPC=0\n#NT=20017 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -822.456970\n\tposy=1 v=2003 960.456970\n\tvalue=2 e=0 v=2003 4000.000000\n\tdefineinheader=2 e=0 v=2001 1\n\tgroup=-1\n"
		+ "\tISC=0\n\tOSC=1\n\t\tSVT=5001 2003 1 \n\t\tCC=2\n\t\t\tC=37 0 1 41 1 0 0\n\t\t\tCPC=0\n\t\t\tC=37 0 1 43 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=38 0 3 39 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=39 0 3 40 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=41\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=40 0 2 42 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -392.589996\n\tposy=1 v=2003 803.484985\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=41 0 0 36 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n"
		+ "\t\tCC=1\n\t\t\tC=41 1 0 38 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=41\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=42 0 0 35 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10100 0\n\tPC=5\n\tname=1 v=5000 Contrast\n\tposx=1 v=2003 -179.546997\n\tposy=1 v=2003 556.651978\n\tgrpPosX=1 v=2003 -906.000000\n\tgrpPosY=1 v=2003 672.000000\n\tgroup=-1\n\tISC=3\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 2003 0 0 0 Contrast-Factor\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=43 0 0 45 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 Contrast-Factor\n\t\tCC=1\n\t\t\tC=43 1 0 46 1 2 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 154.000000\n\tposy=1 v=2003 672.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=44 0 0 34 2 3 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20022 0\n\tPC=2\n\tposx=1 v=2003 -696.510010\n\tposy=1 v=2003 586.909973\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n"
		+ "\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=45 0 3 46 0 1 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 -473.750000\n\tposy=1 v=2003 670.000000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=46 0 3 47 0 1 0\n\t\t\tCPC=0\n#NT=20026 0\n\tPC=2\n\tposx=1 v=2003 -257.500000\n\tposy=1 v=2003 667.500000\n\tgroup=43\n\tISC=2\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 1 0 \n\t\tSDV=0.500000\n\tOSC=1\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=47 0 3 48 0 1 0\n\t\t\tCPC=0\n#NT=20023 0\n\tPC=2\n\tposx=1 v=2003 -46.250000\n\tposy=1 v=2003 681.250000\n\tgroup=43\n\tISC=1\n\t\tSVT=5001 2003 1 0 0 \n\tOSC=1\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=48 0 2 44 0 0 0\n\t\t\tCPC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Y_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -571.184998\n\tposy=1 v=2003 232.483002\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n"
		+ "\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=49 0 0 52 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=49 1 0 50 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=49 2 0 60 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n\t\t\tC=49 3 0 51 0 3 0\n\t\t\tCPC=0\n\t\t\tC=49 3 0 50 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=49 4 0 51 1 2 0\n\t\t\tCPC=0\n\t\t\tC=49 4 0 50 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n"
		+ "\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=50 1 6 54 2 3 0\n\t\t\tCPC=0\n\t\t\tC=50 1 6 58 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=50 5 10 53 5 0 0\n\t\t\tCPC=0\n\t\t\tC=50 5 10 59 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=51 0 1 50 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=52 0 3 50 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n"
		+ "\tposy=1 v=2003 3.846410\n\tgroup=49\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=53 1 0 24 1 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=49\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=54 0 4 53 1 0 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 56 0 1 0\n\t\t\tCPC=0\n\t\t\tC=54 0 4 59 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=49\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=55 0 1 60 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n"
		+ "\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=56 0 2 53 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=56 1 3 53 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=56 3 5 53 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=49\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=57 1 0 52 0 1 0\n"
		+ "\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=49\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=58 0 0 54 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=49\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=59 2 9 53 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n"
		+ "\tgroup=49\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=60 0 3 54 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=49\n\tISC=0\n\tOSC=0\n#NT=10100 0\n\tPC=18\n\tname=1 v=5000 Z_Projection\n\tversion=1 v=2003 1.910000\n\tposx=1 v=2003 -567.960022\n\tposy=1 v=2003 503.040985\n\tpreviewswatch=1 v=2002 1\n\tsubmenuname=1 v=5000 Textures\n\tbitmapnodeindex=1 v=2002 64\n\thelpid=1 v=2002 19\n\tgrpnodecolor=1 v=5012 6\n\tgrpPosX=1 v=2003 -1103.290039\n\tgrpPosY=1 v=2003 -17.517900\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tgroup=23\n\tISC=6\n\t\tSVT=5001 3001 0 0 0 _UV\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=2001 2001 0 0 0 _ConvertToLinearSpace\n\t\tSVT=5001 5011 0 0 0 \n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=6\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=62 0 0 65 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=1\n\t\t\tC=62 1 0 63 2 3 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 0 _ConvertToLinearSpace\n\t\tCC=1\n\t\t\tC=62 2 0 73 1 2 0\n\t\t\tCPC=3\n\t\t\tcx=-355.500000\n\t\t\tcy=-202.750000\n\t\t\tcm=1\n\t\tSVT=5001 5011 0 \n\t\tCC=2\n"
		+ "\t\t\tC=62 3 0 64 0 3 0\n\t\t\tCPC=0\n\t\t\tC=62 3 0 63 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2002 2002 0 \n\t\tCC=2\n\t\t\tC=62 4 0 64 1 2 0\n\t\t\tCPC=0\n\t\t\tC=62 4 0 63 6 13 0\n\t\t\tCPC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n#NT=20029 0\n\tPC=2\n\tposx=1 v=2003 -47.002602\n\tposy=1 v=2003 79.977600\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 5011 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\t\tSVT=5001 2003 3 0 0 \n\t\tSVT=5001 5013 4 0 0 \n\t\tSVT=5001 2002 11 0 0 \n\t\tSVT=5001 2002 12 0 0 \n\t\tSVT=2002 2002 13 0 0 \n\tOSC=6\n\t\tSVT=5001 3003 5 \n\t\tCC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=2\n\t\t\tC=63 1 6 67 2 3 0\n\t\t\tCPC=0\n\t\t\tC=63 1 6 71 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n\t\tSVT=5001 2003 8 \n\t\tCC=0\n\t\tSVT=5001 2003 9 \n\t\tCC=0\n\t\tSVT=5001 2003 10 \n\t\tCC=2\n\t\t\tC=63 5 10 66 5 0 0\n\t\t\tCPC=0\n\t\t\tC=63 5 10 72 5 6 0\n\t\t\tCPC=0\n#NT=20092 0\n\tPC=9\n\tname=1 v=5000 Sampler\n\tnote=1 v=5000 Texture input required for OpenGL / HLSL3\n\tposx=1 v=2003 -263.585999\n\tposy=1 v=2003 132.436005\n\tfilter=2 e=6 v=5012 0\n\taddressu=2 e=7 v=5012 0\n\taddressv=2 e=8 v=5012 0\n\taddressw=2 e=9 v=5012 0\n\tbordercolor=2 e=10 v=3003 0.000000,0.000000,0.000000,0.000000\n\tgroup=62\n"
		+ "\tISC=2\n\t\tSVT=5001 5011 3 0 0 \n\t\tSVT=2002 2002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 5013 1 \n\t\tCC=1\n\t\t\tC=64 0 1 63 3 4 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=3\n\tname=1 v=5000 AifBempty\n\tposx=1 v=2003 -288.248993\n\tposy=1 v=2003 -132.005005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3001 1 0 0 \n\t\tSVT=5001 3001 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3001 3 \n\t\tCC=1\n\t\t\tC=65 0 3 63 1 2 0\n\t\t\tCPC=0\n#NT=10101 0\n\tPC=2\n\tposx=1 v=2003 1052.390015\n\tposy=1 v=2003 3.846410\n\tgroup=62\n\tISC=7\n\t\tSVT=5001 3003 0 0 0 _RGBA\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 2003 0 0 0 _Red\n\t\tSVT=5001 2003 0 0 0 _Green\n\t\tSVT=5001 2003 0 0 0 _Blue\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _Color\n\t\tCC=1\n\t\t\tC=66 1 0 24 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 \n\t\tCC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20093 0\n\tPC=3\n\tname=1 v=5000 IftruethenAelseB\n\tposx=1 v=2003 433.980011\n\tposy=1 v=2003 -79.727699\n\tgroup=62\n\tISC=3\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\t\tSVT=5001 3002 3 0 0 \n"
		+ "\tOSC=1\n\t\tSVT=5001 3002 4 \n\t\tCC=3\n\t\t\tC=67 0 4 66 1 0 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 69 0 1 0\n\t\t\tCPC=0\n\t\t\tC=67 0 4 72 4 5 0\n\t\t\tCPC=0\n#NT=20116 0\n\tPC=5\n\tname=1 v=5000 ConvertToLinearSpace\n\tposx=1 v=2003 -0.317993\n\tposy=1 v=2003 -283.127014\n\tcollapsed=1 v=2001 1\n\tvalue=2 e=4 v=2001 0\n\tgroup=62\n\tISC=0\n\tOSC=2\n\t\tSVT=2001 2001 1 \n\t\tCC=1\n\t\t\tC=68 0 1 73 0 1 0\n\t\t\tCPC=0\n\t\tSVT=2001 2001 2 \n\t\tCC=0\n#NT=20108 0\n\tPC=3\n\tposx=1 v=2003 722.294006\n\tposy=1 v=2003 70.809402\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=1\n\t\tSVT=5001 3002 1 0 0 \n\tOSC=6\n\t\tSVT=5001 2003 2 \n\t\tCC=1\n\t\t\tC=69 0 2 66 2 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 3 \n\t\tCC=1\n\t\t\tC=69 1 3 66 3 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3001 4 \n\t\tCC=0\n\t\tSVT=5001 2003 5 \n\t\tCC=1\n\t\t\tC=69 3 5 66 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 3002 6 \n\t\tCC=0\n\t\tSVT=5001 2003 7 \n\t\tCC=0\n#NT=10100 1 UV Set-Hw Shader Nodes-Inputs Common\n\tPC=14\n\tname=1 v=5000 _UVSet\n\tversion=1 v=2003 1.690000\n\tposx=1 v=2003 -494.911987\n\tposy=1 v=2003 -171.755005\n\tclassname=1 v=5000 UV Set\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 65\n\thelpid=1 v=2002 23\n"
		+ "\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -450.000000\n\tgrpPosY=1 v=2003 -221.667007\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuvsetname_UVs=2 e=3 v=5000 \n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tgroup=62\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=3\n\t\tSVT=5001 3003 0 _UVWZ\n\t\tCC=0\n\t\tSVT=5001 3001 0 _UV\n\t\tCC=1\n\t\t\tC=70 1 0 65 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=10100 1 Color to Linear Space-Hw Shader Nodes-Various\n\tPC=12\n\tname=1 v=5000 _ToLinearSpace\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 216.011002\n\tposy=1 v=2003 -47.291901\n\tclassname=1 v=5000 Color to Linear Space\n\tsubmenuname=1 v=5000 Various\n\tbitmapnodeindex=1 v=2002 2\n\tisadvanced=1 v=2001 1\n\thelpid=1 v=2002 3\n\tgrpnodecolor=1 v=5012 7\n\tgrpPosX=1 v=2003 -110.560997\n\tgrpPosY=1 v=2003 -207.921005\n\tgroup=62\n\tISC=2\n\t\tSVT=5001 3002 0 0 0 _Color\n\t\tSVT=5001 1002 0 0 0 \n\tOSC=2\n\t\tSVT=5001 3002 0 _LinearColor\n\t\tCC=1\n\t\t\tC=71 0 0 67 1 2 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n#NT=20020 0\n\tPC=3\n\tposx=1 v=2003 723.010986\n"
		+ "\tposy=1 v=2003 -12.784100\n\tcollapsed=1 v=2001 1\n\tgroup=62\n\tISC=6\n\t\tSVT=5001 2003 1 0 0 \n\t\tSVT=5001 2003 2 0 0 \n\t\tSVT=5001 3001 3 0 0 \n\t\tSVT=5001 2003 4 0 0 \n\t\tSVT=5001 3002 5 0 0 \n\t\tSVT=5001 2003 6 0 0 \n\tOSC=3\n\t\tSVT=5001 3001 7 \n\t\tCC=0\n\t\tSVT=5001 3002 8 \n\t\tCC=0\n\t\tSVT=5001 3003 9 \n\t\tCC=1\n\t\t\tC=72 2 9 66 0 0 0\n\t\t\tCPC=0\n#NT=20109 0\n\tPC=2\n\tposx=1 v=2003 216.250000\n\tposy=1 v=2003 -190.000000\n\tgroup=62\n\tISC=2\n\t\tSVT=2001 2001 1 0 0 \n\t\tSVT=2001 2001 2 0 0 \n\tOSC=1\n\t\tSVT=2001 2001 3 \n\t\tCC=1\n\t\t\tC=73 0 3 67 0 1 0\n\t\t\tCPC=0\n#NT=20175 0\n\tPC=3\n\tposx=1 v=2003 -266.115997\n\tposy=1 v=2003 303.997009\n\ttext=1 v=5000 color tm_texture(string path, float U, float V, int swrap, int twrap, string alphaParam, float a)\\n{\\n    string swrapParam;\\n    string twrapParam;\\n\\n    if(swrap == 0)\\n        swrapParam = \"periodic\";\\n    else if(swrap == 1)\\n        swrapParam = \"clamp\";\\n    else if(swrap == 2)\\n        swrapParam = \"mirror\";\\n    else \\n        swrapParam = \"black\";\\n\\n    if(twrap == 0)\\n        twrapParam = \"periodic\";\\n    else if(twrap == 1)\\n        twrapParam = \"clamp\";\\n    else if(twrap == 2)\\n        twrapParam = \"mirror\";\\n    else\\n        twrapParam = \"black\";\\n\\n    color map = texture(path, U, -V+1, alphaParam, a, \"swrap\", swrapParam, \"twrap\", twrapParam);\\n    return map;\\n}\\n\\ntm_texture( [[ PROP = texturepath_MyTexture ]], [[ INPUT = UV.x ? u ]], [[ INPUT = UV.y ? -v+1 ]], [[ PROP = addressu_Sampler ]], [[ PROP = addressv_Sampler ]] )\n"
		+ "\tgroup=62\n\tISC=0\n\tOSC=0\n#NT=20028 0\n\tPC=13\n\tname=1 v=5000 DiffuseTexture\n\tposx=1 v=2003 -753.237976\n\tposy=1 v=2003 -75.178001\n\tfullpathinshader=2 e=4 v=2001 0\n\texposetoui=2 e=3 v=2001 1\n\tautoPreviewTexture=2 e=4 v=2001 1\n\ttexturepath=2 e=1 v=5000 D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga\n\tdefineinheader=2 e=1 v=2001 1\n\ttexturenodename=2 e=5 v=5000 \n\tmipmaplevels=2 e=5 v=2002 -1\n\tuveditororder=2 e=12 v=2002 -1\n\tuiorder=2 e=13 v=2002 0\n\tuigroup=2 e=13 v=5000 \n\tgroup=-1\n\tISC=3\n\t\tSVT=2002 2002 1 0 0 \n\t\tSVT=2002 2002 3 0 0 \n\t\tSVT=2002 2002 4 0 0 \n\tOSC=1\n\t\tSVT=5001 5011 2 \n\t\tCC=1\n\t\t\tC=75 0 2 23 0 0 0\n\t\t\tCPC=0\n#NT=20159 0\n\tPC=2\n\tposx=1 v=2003 -1046.739990\n\tposy=1 v=2003 -39.187000\n\tgroup=-1\n\tISC=0\n\tOSC=1\n\t\tSVT=2002 2002 1 \n\t\tCC=2\n\t\t\tC=76 0 1 75 2 4 0\n\t\t\tCPC=0\n\t\t\tC=76 0 1 23 1 0 0\n\t\t\tCPC=0\n#NT=20016 0\n\tPC=2\n\tposx=1 v=2003 805.000000\n\tposy=1 v=2003 91.250000\n\tgroup=-1\n\tISC=2\n\t\tSVT=5001 3002 1 0 0 \n\t\tSVT=5001 3002 2 0 0 \n\tOSC=1\n\t\tSVT=5001 3002 3 \n\t\tCC=1\n\t\t\tC=77 0 3 1 3 0 0\n\t\t\tCPC=0\n#NT=10100 1 Vertex Color-Hw Shader Nodes-Inputs Common\n"
		+ "\tPC=14\n\tname=1 v=5000 _VertexColor\n\tversion=1 v=2003 1.640000\n\tposx=1 v=2003 593.976013\n\tposy=1 v=2003 60.924301\n\tclassname=1 v=5000 Vertex Color\n\tsubmenuname=1 v=5000 Inputs Common\n\tbitmapnodeindex=1 v=2002 70\n\thelpid=1 v=2002 24\n\tgrpnodecolor=1 v=5012 5\n\tgrpPosX=1 v=2003 -546.642029\n\tgrpPosY=1 v=2003 -40.049500\n\tcolorsetindex_Vertex=2 e=1 v=2002 0\n\tcolorsetname_Vertex=2 e=2 v=5000 \n\tperinstanceunshared_Vertex=2 e=3 v=2001 0\n\tgroup=-1\n\tISC=4\n\t\tSVT=2002 2002 0 0 0 \n\t\tSVT=2001 2001 0 0 0 \n\t\tSVT=5000 5000 0 0 0 \n\t\tSVT=1001 1002 0 0 0 \n\tOSC=7\n\t\tSVT=5001 3003 0 _RGBA\n\t\tCC=0\n\t\tSVT=5001 3002 0 _RGB\n\t\tCC=1\n\t\t\tC=78 1 0 77 0 1 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _Red\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Green\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Blue\n\t\tCC=0\n\t\tSVT=5001 2003 0 _Alpha\n\t\tCC=1\n\t\t\tC=78 5 0 1 0 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 1002 0 \n\t\tCC=0\n");
	setAttr ".sprm" -type "string" "DiffuseTexture~278~Contrast~317~Specular_Power~317~Specular_Color~319~";
	setAttr ".DiffuseTexture" -type "string" "D:/CGMA/CGMA Level Design for Games/Assets/CGMA/Materials/grid4m.tga";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "0238F43A-49D7-FCE4-1281-D1991D4ABA16";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5012393 13.630384 32.955181 ;
	setAttr ".rs" 61816;
	setAttr ".lt" -type "double3" 1.7763568394002505e-15 3.3417124639741408e-16 1.5049735007533283 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.308115882038047 13.630384797890185 29.792275750701055 ;
	setAttr ".cbx" -type "double3" 9.6943629745708897 13.630384797890185 36.118089729140294 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "E30F527B-47B4-BD8E-C818-97A0546835E1";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5012393 15.225016 32.955181 ;
	setAttr ".rs" 48994;
	setAttr ".lt" -type "double3" 0 4.4914306706516397e-16 2.0227605494707142 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.4955074653172993 15.225016032793157 30.968428020287259 ;
	setAttr ".cbx" -type "double3" 8.5069713912916374 15.225016032793157 34.941931426787768 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "E07D701F-4A9A-8B48-2F73-B1B42138BD28";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.18592949 0.0097673405 -0.18592949
		 -0.18592949 0.0097673405 -0.18592949 -0.18592949 0.0097673405 0.18592949 0.18592949
		 0.0097673405 0.18592949;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "F8757BDF-495D-00F6-A974-F599185A1F14";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5012393 17.247778 32.955177 ;
	setAttr ".rs" 40494;
	setAttr ".lt" -type "double3" 1.7763568394002505e-15 2.1078737138501662e-16 0.94930192722396711 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.4955074653172993 17.247777187652183 30.968426889143572 ;
	setAttr ".cbx" -type "double3" 8.5069710106416476 17.247777187652183 34.941929541548291 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "0BC9C112-49FD-1195-F162-37BCD8E952F8";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5012393 18.340269 32.955177 ;
	setAttr ".rs" 40801;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.0105689353579237 18.340269674524375 32.469151130243375 ;
	setAttr ".cbx" -type "double3" 6.9919095406010241 18.340269674524375 33.441205300448487 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "6A62B510-4194-890E-D09B-4DA7698D63E1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0.23723815 0.015599473 -0.23723812
		 -0.23723815 0.015599473 -0.23723812 -0.23723815 0.015599473 0.23723812 0.23723815
		 0.015599473 0.23723812;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "3C543B6B-46B1-4C7A-A61C-A4970E6B69A9";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5012388 18.340269 32.955177 ;
	setAttr ".rs" 54523;
	setAttr ".lt" -type "double3" 0 6.7764042005734272e-16 3.0518211432614351 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.4237950935926662 18.340269674524375 32.878465747324398 ;
	setAttr ".cbx" -type "double3" 6.5786830017162918 18.340269674524375 33.031887666984304 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "04CFF909-4061-61DC-26B1-F7A9B3E997C1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0.064705677 -7.4505806e-09
		 -0.06470564 -0.064705677 -7.4505806e-09 -0.06470564 -0.064705677 -7.4505806e-09 0.06470564
		 0.064705677 -7.4505806e-09 0.06470564;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "37332394-4B58-6980-7BA7-A3A9021291A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[44:45]" "e[47]" "e[49]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".wt" 0.99674224853515625;
	setAttr ".dr" no;
	setAttr ".re" 45;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "787AC258-4654-E1A7-AA29-7EA79BF55FA2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[44:45]" "e[47]" "e[49]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".wt" 0.79328644275665283;
	setAttr ".dr" no;
	setAttr ".re" 45;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "3C62A5EB-4AF2-E7CF-4ACC-1D96FE486D53";
	setAttr ".ics" -type "componentList" 1 "f[33]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5786829 21.067751 32.955173 ;
	setAttr ".rs" 62418;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.5786826686475504 20.753352058035695 32.878464050608869 ;
	setAttr ".cbx" -type "double3" 6.5786826686475504 21.382149155955702 33.031886347316672 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "B310BC8C-48DD-3800-B12D-D980A15F1E05";
	setAttr ".ics" -type "componentList" 1 "f[33]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5786829 21.067749 32.955173 ;
	setAttr ".rs" 60386;
	setAttr ".lt" -type "double3" -6.9239678000066398e-15 3.6527944109838649e-15 0.81722119596478215 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.5786826686475504 20.753350963780914 32.896483652608318 ;
	setAttr ".cbx" -type "double3" 6.5786826686475504 21.382146967446133 33.013863728934062 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "11A93C47-48E8-42BC-68CA-B7AFBF7536EF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  0 0 0.0028485819 0 0 -0.0028485819
		 0 0 0.0028485819 0 0 -0.0028485819;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "F6A87F3E-4C5F-F763-9691-1BAE651B6446";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[60:61]" "e[63]" "e[65]" "e[72]" "e[75]" "e[80]" "e[83]";
	setAttr ".ix" -type "matrix" 6.3862470925328427 0 0 0 0 9.1792744367964296 0 0 0 0 6.3258139784392382 0
		 6.5012394283044683 9.0407475794919705 32.955182739920673 1;
	setAttr ".wt" 0.49473592638969421;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "39D88BAA-470B-D216-2F63-A1955D8881DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 4.2393272720917556 0 0 0 0 5.3151377663670205 0 0 0 0 2.8502395182467928 0
		 5.6716906804040246 7.1086792442772646 27.163178384924613 1;
	setAttr ".wt" 0.49897313117980957;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "332FBF7E-4844-0DFA-7B2F-86B9A6E8421E";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".ix" -type "matrix" 4.2393272720917556 0 0 0 0 5.3151377663670205 0 0 0 0 2.8502395182467928 0
		 5.6716906804040246 7.1086792442772646 27.163178384924613 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6716905 10.618271 27.163177 ;
	setAttr ".rs" 52266;
	setAttr ".lt" -type "double3" 4.7184478546569153e-16 3.1460299816518416e-17 0.45169967171821046 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.5520270443581468 9.7662481274607753 25.738058625801216 ;
	setAttr ".cbx" -type "double3" 7.7913543164499028 11.470294142004498 28.588298144048011 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "2E8DE3DF-4457-CB58-5B8D-2D9F9CD8E18E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -1.4901161e-08 0.32060239
		 0 1.4901161e-08 7.4505806e-09 0 1.4901161e-08 7.4505806e-09 0 -1.4901161e-08 0.32060239
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "5C95BE47-4DF9-AE57-4FCF-06A37CFBEA35";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 4.2393272720917556 0 0 0 0 5.3151377663670205 0 0 0 0 2.8502395182467928 0
		 5.6716906804040246 7.1086792442772646 27.163178384924613 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.9326859 9.9424124 27.163177 ;
	setAttr ".rs" 57755;
	setAttr ".lt" -type "double3" 1.6653345369377348e-16 -4.6154833159757989e-17 0.53298018965874405 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.7913543164499028 9.7662487610745714 25.738058625801216 ;
	setAttr ".cbx" -type "double3" 8.0740178105371427 10.118576049030576 28.588298144048011 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "3C61F7F2-4CA0-0990-44C9-5E8F6D6FD4AB";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 4.2393272720917556 0 0 0 0 5.3151377663670205 0 0 0 0 2.8502395182467928 0
		 5.6716906804040246 7.1086792442772646 27.163178384924613 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.4103422 9.9421282 27.163177 ;
	setAttr ".rs" 42631;
	setAttr ".lt" -type "double3" 2.2204460492503131e-16 -1.1211478354902372e-16 0.49662007958332549 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.2686575523032921 9.7662487610745714 25.738058625801216 ;
	setAttr ".cbx" -type "double3" 3.5520270443581468 10.118007697454674 28.588298144048011 ;
createNode polyColorPerVertex -n "polyColorPerVertex2";
	rename -uid "855AF80C-4BE4-BB20-8A67-CC9F654911FC";
	setAttr ".uopa" yes;
	setAttr -s 12 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr -s 2 ".vclr[0].vfcl";
	setAttr ".vclr[0].vfcl[0].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[0].vfcl[0].vfal" 1;
	setAttr ".vclr[0].vfcl[5].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[0].vfcl[5].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr ".vclr[1].vfcl[4].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[1].vfcl[4].vfal" 1;
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 2 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[0].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[2].vfcl[0].vfal" 1;
	setAttr ".vclr[2].vfcl[5].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[2].vfcl[5].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr ".vclr[3].vfcl[4].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[3].vfcl[4].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 2 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[2].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[4].vfcl[2].vfal" 1;
	setAttr ".vclr[4].vfcl[5].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[4].vfcl[5].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 2 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[4].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[5].vfcl[4].vfal" 1;
	setAttr ".vclr[5].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[5].vfcl[6].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr -s 2 ".vclr[6].vfcl";
	setAttr ".vclr[6].vfcl[2].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[6].vfcl[2].vfal" 1;
	setAttr ".vclr[6].vfcl[5].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[6].vfcl[5].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr -s 2 ".vclr[7].vfcl";
	setAttr ".vclr[7].vfcl[4].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[7].vfcl[4].vfal" 1;
	setAttr ".vclr[7].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[7].vfcl[6].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 2 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[2].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[8].vfcl[2].vfal" 1;
	setAttr ".vclr[8].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[8].vfcl[6].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 2 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[2].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[9].vfcl[2].vfal" 1;
	setAttr ".vclr[9].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[9].vfcl[6].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr ".vclr[10].vfcl[0].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[10].vfcl[0].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr ".vclr[11].vfcl[0].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[11].vfcl[0].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex3";
	rename -uid "0E285CE6-4DA6-AB4B-8B71-879F0298C79D";
	setAttr ".uopa" yes;
	setAttr -s 16 ".vclr";
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 2 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[2].vfcl[6].vfal" 1;
	setAttr ".vclr[2].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[2].vfcl[9].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 2 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[3].vfcl[6].vfal" 1;
	setAttr ".vclr[3].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[3].vfcl[7].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 2 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[4].vfcl[8].vfal" 1;
	setAttr ".vclr[4].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[4].vfcl[9].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 2 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[5].vfcl[7].vfal" 1;
	setAttr ".vclr[5].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[5].vfcl[8].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 2 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[8].vfcl[6].vfal" 1;
	setAttr ".vclr[8].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[8].vfcl[9].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 2 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[9].vfcl[6].vfal" 1;
	setAttr ".vclr[9].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[9].vfcl[7].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 2 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[10].vfcl[7].vfal" 1;
	setAttr ".vclr[10].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[10].vfcl[8].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 2 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[11].vfcl[8].vfal" 1;
	setAttr ".vclr[11].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[11].vfcl[9].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 2 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[14].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[12].vfcl[14].vfal" 1;
	setAttr ".vclr[12].vfcl[17].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[12].vfcl[17].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 2 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[14].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[13].vfcl[14].vfal" 1;
	setAttr ".vclr[13].vfcl[15].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[13].vfcl[15].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 2 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[15].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[14].vfcl[15].vfal" 1;
	setAttr ".vclr[14].vfcl[16].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[14].vfcl[16].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 2 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[16].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[15].vfcl[16].vfal" 1;
	setAttr ".vclr[15].vfcl[17].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[15].vfcl[17].vfal" 1;
	setAttr ".vclr[16].vxal" 1;
	setAttr -s 2 ".vclr[16].vfcl";
	setAttr ".vclr[16].vfcl[14].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[16].vfcl[14].vfal" 1;
	setAttr ".vclr[16].vfcl[17].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[16].vfcl[17].vfal" 1;
	setAttr ".vclr[17].vxal" 1;
	setAttr -s 2 ".vclr[17].vfcl";
	setAttr ".vclr[17].vfcl[14].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[17].vfcl[14].vfal" 1;
	setAttr ".vclr[17].vfcl[15].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[17].vfcl[15].vfal" 1;
	setAttr ".vclr[18].vxal" 1;
	setAttr -s 2 ".vclr[18].vfcl";
	setAttr ".vclr[18].vfcl[15].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[18].vfcl[15].vfal" 1;
	setAttr ".vclr[18].vfcl[16].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[18].vfcl[16].vfal" 1;
	setAttr ".vclr[19].vxal" 1;
	setAttr -s 2 ".vclr[19].vfcl";
	setAttr ".vclr[19].vfcl[16].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[19].vfcl[16].vfal" 1;
	setAttr ".vclr[19].vfcl[17].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[19].vfcl[17].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "577CD606-44DE-68D0-26ED-BFB7CCEFE52C";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" -0.09217757768413623 0 -5.034917000603933 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5512010383821959 6.8039144232103732 29.844673240456995 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.5512009 11.161914 29.844673 ;
	setAttr ".rs" 61920;
	setAttr ".lt" -type "double3" 0 4.0488285251021049e-15 2.2343026369368744 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.6567518293037509 11.161914114185763 27.234587800787274 ;
	setAttr ".cbx" -type "double3" 0.55434975253935903 11.161914114185763 32.454758680126716 ;
createNode polyColorPerVertex -n "polyColorPerVertex4";
	rename -uid "E814BA4A-4038-8B6B-69AF-6DAFA7BDE172";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vclr";
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 2 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[2].vfcl[6].vfal" 1;
	setAttr ".vclr[2].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[2].vfcl[9].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 2 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[3].vfcl[6].vfal" 1;
	setAttr ".vclr[3].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[3].vfcl[7].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 2 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[4].vfcl[8].vfal" 1;
	setAttr ".vclr[4].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[4].vfcl[9].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 2 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[5].vfcl[7].vfal" 1;
	setAttr ".vclr[5].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[5].vfcl[8].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 3 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[1].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[8].vfcl[1].vfal" 1;
	setAttr ".vclr[8].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[8].vfcl[6].vfal" 1;
	setAttr ".vclr[8].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[8].vfcl[9].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 3 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[1].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[9].vfcl[1].vfal" 1;
	setAttr ".vclr[9].vfcl[6].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[9].vfcl[6].vfal" 1;
	setAttr ".vclr[9].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[9].vfcl[7].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 3 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[1].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[10].vfcl[1].vfal" 1;
	setAttr ".vclr[10].vfcl[7].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[10].vfcl[7].vfal" 1;
	setAttr ".vclr[10].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[10].vfcl[8].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 3 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[1].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[11].vfcl[1].vfal" 1;
	setAttr ".vclr[11].vfcl[8].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[11].vfcl[8].vfal" 1;
	setAttr ".vclr[11].vfcl[9].frgb" -type "float3" 0.0126 0.086599998 0 ;
	setAttr ".vclr[11].vfcl[9].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "70036C46-42AC-7F66-0BC9-3EB6228E159D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" -0.09217757768413623 0 -5.034917000603933 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5512010383821959 6.8039144232103732 30.790182951997974 1;
	setAttr ".wt" 0.074820809066295624;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "49475029-4F47-E3D1-F887-C992A1DCD692";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" -1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".tk[3]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[4]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[5]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[8]" -type "float3" 0.17496389 -0.035390921 -0.17496388 ;
	setAttr ".tk[9]" -type "float3" -0.17496385 -0.035390921 -0.17496388 ;
	setAttr ".tk[10]" -type "float3" -0.17496385 -0.035390921 0.17496388 ;
	setAttr ".tk[11]" -type "float3" 0.17496385 -0.035390921 0.17496388 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "88D2DB80-4AB7-BEDC-CAB3-7085563A315E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 1.1637876923046662 0
		 4.3215309973780727 6.1415409198999793 24.651376773229821 1;
	setAttr ".wt" 0.62269645929336548;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "9DFA14D8-4B0A-F9DF-3E13-6FB442EF0D8E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 1.1637876923046662 0
		 4.3215309973780727 6.1415409198999793 24.651376773229821 1;
	setAttr ".wt" 0.33922174572944641;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "00F45518-4743-7CD9-087D-36A46C9C45DC";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.6844416 6.141541 24.151592 ;
	setAttr ".rs" 42756;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 1.6448968304959032e-15 1.0734524353950476 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1059664515702621 4.4511103610937539 24.151592959176675 ;
	setAttr ".cbx" -type "double3" 5.262916831557618 7.8319714787062047 24.151592959176675 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "414F48FB-4C78-641C-B8F0-45BD3E9BB045";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[20:21]" "e[23]" "e[25]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.86900526285171509;
	setAttr ".dr" no;
	setAttr ".re" 30;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "13313E08-438A-8441-F3BA-1FAC95B9B310";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[20:21]" "e[23]" "e[25]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.11727367341518402;
	setAttr ".re" 30;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "2B4914A6-4A0F-8708-45AB-B08F2301A778";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[28:29]" "e[31]" "e[33]" "e[40]" "e[47]" "e[52]" "e[59]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.71194165945053101;
	setAttr ".dr" no;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "6812D9BE-4788-7B6F-3ACC-86B3E631658B";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.6385343 6.141541 24.704411 ;
	setAttr ".rs" 49084;
	setAttr ".lt" -type "double3" 8.8817841970012523e-16 0 -1.2998019214848142 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.4276957299373727 4.4511103610937539 24.704411201503067 ;
	setAttr ".cbx" -type "double3" 4.8493728286264615 7.8319718817362567 24.704411201503067 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "A9BD9578-4B33-E441-0115-5186212A0E8C";
	setAttr ".dc" -type "componentList" 1 "e[55]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "29B7283D-49A1-CFC3-2D44-12A9BAB28F0E";
	setAttr ".dc" -type "componentList" 1 "e[56]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "2BFEA59D-4220-AB11-1522-BBAA26B3E56D";
	setAttr ".dc" -type "componentList" 1 "e[53]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "35C6B13A-45AF-07F0-353E-368A4C326E31";
	setAttr ".dc" -type "componentList" 1 "e[51]";
createNode polySplitRing -n "polySplitRing11";
	rename -uid "4123E767-4E70-795A-A6EB-7E9DD77EEF96";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[4:5]" "e[8:9]" "e[14]" "e[18]" "e[22]" "e[26]" "e[32]" "e[35]" "e[38]" "e[44]" "e[50]" "e[53]" "e[58]" "e[66]" "e[74]" "e[78]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.95767384767532349;
	setAttr ".dr" no;
	setAttr ".re" 38;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "3E87BF03-4E57-FE29-EF69-A48C7B572AD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[8:9]" "e[14]" "e[22]" "e[32]" "e[35]" "e[38]" "e[50]" "e[58]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]" "e[103]" "e[105]" "e[111]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.26517421007156372;
	setAttr ".re" 38;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "4D31E78B-41DC-06F1-4F4E-73BEB71D3C91";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[36:37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[64]" "e[68]" "e[104]" "e[115]" "e[140]" "e[151]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.96120923757553101;
	setAttr ".dr" no;
	setAttr ".re" 151;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "3F6BFEA0-4F66-6EC8-0ED5-D1A8E5E9B459";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[48:49]" "e[62]" "e[70]" "e[82]" "e[118]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.27983856201171875;
	setAttr ".re" 118;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "B0608608-4FCB-2E45-A32F-C88B72D8A1E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[48:49]" "e[62]" "e[179]" "e[181]" "e[185]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".wt" 0.7831912636756897;
	setAttr ".dr" no;
	setAttr ".re" 181;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "05892527-42EC-E7B2-4902-00A94DD4F848";
	setAttr ".ics" -type "componentList" 1 "f[88]";
	setAttr ".ix" -type "matrix" 7.6724766572105727 0 0 0 0 3.3808611176124512 0 0 0 0 0.55281830822747091 0
		 4.3215309973780727 6.1415409198999793 24.428002113290411 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.4887519 5.7838049 23.078138 ;
	setAttr ".rs" 63551;
	setAttr ".lt" -type "double3" -4.4408920985006262e-16 4.8007693073100205e-17 -0.39201256318576938 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.8058095771943163 4.5942092037463942 23.078139265855047 ;
	setAttr ".cbx" -type "double3" 4.171694229522557 6.9734006902007284 23.078139265855047 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "9F3E8388-4100-9AB4-8EA4-B7B1891068B0";
	setAttr ".dc" -type "componentList" 1 "f[65]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "DC564BEC-400F-24B5-1F86-2798063B6A90";
	setAttr ".dc" -type "componentList" 1 "f[87]";
createNode polySplitRing -n "polySplitRing16";
	rename -uid "052E6147-486F-7026-F68B-AEA4EF51FDB0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 15.100616930732814 0 0 0 0 3.3808611176124512 0 0 0 0 0.74974472897835265 0
		 -8.3954972493972342 7.0262331749328695 26.780449947071972 1;
	setAttr ".wt" 0.087531276047229767;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyColorPerVertex -n "polyColorPerVertex5";
	rename -uid "D8653C0E-4F48-010A-BE5B-32943A88A67A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr ".vclr[0].vfcl[8].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[0].vfcl[8].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr ".vclr[1].vfcl[8].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[1].vfcl[8].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr ".vclr[6].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[6].vfcl[6].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr ".vclr[7].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[7].vfcl[6].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr ".vclr[8].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[8].vfcl[6].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr ".vclr[9].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[9].vfcl[6].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr ".vclr[10].vfcl[8].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[10].vfcl[8].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr ".vclr[11].vfcl[8].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[11].vfcl[8].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "BA44957E-4B1A-30EA-56CC-989FF1119CFA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".wt" 0.54589718580245972;
	setAttr ".re" 8;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "0221AAC9-45D8-AB33-0CBC-6D842F3A2643";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.06096559 -0.0075376322 -0.06096562
		 0.06096559 -0.0075376322 0.06096562 -0.060965631 -0.0075376322 0.06096562 -0.06096559
		 -0.0075376322 -0.06096562;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "7215D4FE-473C-7F0A-CC5D-BD8072F0565A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[14]" "e[18]" "e[24]" "e[27]" "e[32]" "e[35]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".wt" 0.400430828332901;
	setAttr ".re" 35;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "CA692929-43A5-D1DC-8F47-0BA6BECC25A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[14]" "e[18]" "e[27]" "e[32]" "e[36]" "e[45]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".wt" 0.32412436604499817;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "C85BFA24-4645-1343-3FC5-B08616470347";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[8:9]" "e[29]" "e[31]" "e[38]" "e[50]" "e[58]" "e[70]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".wt" 0.48252642154693604;
	setAttr ".dr" no;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "A7BAC049-46CA-157E-2F96-0D82BCA46A72";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" -0.31811003931812515 0 -17.375783626187211 0 0 6.5445804126046463 0 0
		 9.2046027683970539 0 -0.16851479113434503 0 -8.5929710135976123 2.8171835868012636 6.9884056149464113 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.5929708 6.0894737 6.9884057 ;
	setAttr ".rs" 55141;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -13.354327417455202 6.0894737931035863 -1.7837435937143669 ;
	setAttr ".cbx" -type "double3" -3.831614609740023 6.0894737931035863 15.76055482360719 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "473645CC-4248-EC50-264C-46A27971B76C";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" -0.31811003931812515 0 -17.375783626187211 0 0 6.5445804126046463 0 0
		 9.2046027683970539 0 -0.16851479113434503 0 -8.5929710135976123 2.8171835868012636 6.9884056149464113 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.5929718 6.8047018 6.9884071 ;
	setAttr ".rs" 55499;
	setAttr ".lt" -type "double3" -8.7616059051302811e-16 -7.3401950318413226e-16 0.46003385998945978 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -13.843739850463695 6.8047017545587831 -2.6473728620621282 ;
	setAttr ".cbx" -type "double3" -3.3422032171231786 6.8047017545587831 16.624184091954952 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "0001EBFC-4C9E-0115-6005-A4988ECFB07E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -0.049203914 0.10928553 0.051469784
		 0.049203902 0.10928553 0.051469784 0.049203902 0.10928553 -0.051469788 -0.049203902
		 0.10928553 -0.051469777;
createNode polyTweak -n "polyTweak9";
	rename -uid "CC97D8BC-4871-FC95-9287-5283BED325B2";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk[88:120]" -type "float3"  0 -0.047760237 -0.010008669
		 0 -0.047760237 -0.010008669 0 -0.047760237 -0.010008669 0 -0.047760237 -0.010008669
		 0 -0.047760237 -0.010008669 0 -0.047760237 -0.010008669 0 -0.047760237 -0.010008669
		 0 -0.047760237 -0.010008669 0 -0.047760237 -0.010008669 0 -0.047760237 -0.010008669
		 0 -0.047760237 -0.010008669 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -3.7252903e-09
		 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -3.7252903e-09
		 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -3.7252903e-09
		 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -3.7252903e-09
		 0 0.70429295 -2.35980439 0 0.70429295 -2.35980439 0 0.70429295 -2.35980439 0 0.70429295
		 -2.35980439 0 0.70429295 -2.35980439 0 0.70429295 -2.35980439 0 0.70429295 -2.35980439
		 0 0.70429295 -2.35980439 0 0.70429295 -2.35980439 0 0.70429295 -2.35980439 0 0.70429295
		 -2.35980439;
createNode polySplit -n "polySplit1";
	rename -uid "7DC55C90-49B7-DAD5-0DB7-3EB73375B663";
	setAttr -s 13 ".v[0:12]" -type "float3"  0.66270298 0.055220999 -4.2634292 
		0.70071602 -0.016883001 -3.650034 0.85379601 -0.023229999 -2.4912491 1.121949 0 -0.51603001 
		1.490103 0 0.175588 2.5658 0 1.2334239 2.837374 0 4.524076 2.766259 0 4.7526631 4.8352408 
		0 4.3587961 4.6945758 0.32076499 -5.5301971 3.7409959 0.34448099 -5.6433339 2.6081331 
		0.339093 -5.6176319 1.401996 0.28869399 -5.377202;
	setAttr -s 44 ".e[0:43]"  0.25294599 95 0.681099 85 0.78749102 75 0.94588202
		 0.75146401 0.074176297 56 0.39663601 46 0.379751 0.350411 37 0.87914503 0.70433497
		 1 0.54582 0.91703498 7 7 0.15409499 0.386291 0.27158499 9 0.863033 0.940494 0.76819998
		 0.992989 0.96274197 0.932495 0.90224898 0.87200201 0.85197198 0.81150901 99 0.47997001
		 98 0.48411199 97 0.44538501 96 0.25294599;
	setAttr -s 44 ".d[0:43]"  -2147483446 0 -2147483449 1 -2147483470 2 
		-2147483491 -2147483509 -2147483510 3 -2147483531 4 -2147483549 -2147483550 5 -2147483571 -2147483589 -2147483592 
		-2147483610 -2147483613 6 7 -2147483631 -2147483632 -2147483629 8 -2147483609 -2147483588 -2147483586 -2147483567 
		-2147483546 -2147483525 -2147483504 -2147483483 -2147483462 -2147483441 9 -2147483440 10 -2147483442 11 -2147483444 
		12 -2147483446;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "931F0AB0-42CE-E039-1D36-5D95C05FD928";
	setAttr ".ics" -type "componentList" 10 "f[7:9]" "f[18:19]" "f[27:29]" "f[37:39]" "f[46:49]" "f[56:59]" "f[65:69]" "f[75:79]" "f[85:89]" "f[95:99]";
	setAttr ".ix" -type "matrix" 4.3546127613917047 0 0 0 0 4.2620331849924602 -0.89315476357600554 0
		 0 0.89315476357600554 4.2620331849924602 0 0 3.3251669421253491 17.326718232012858 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.329439 3.6701853 15.823255 ;
	setAttr ".rs" 40220;
	setAttr ".lt" -type "double3" -1.7763568394002505e-15 4.0592529337857286e-16 0.085841365989687585 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.8858148435188391 -0.24745208042404743 -7.0330330128778691 ;
	setAttr ".cbx" -type "double3" 21.773063806958525 7.7909407600053715 38.636884156975157 ;
createNode polyColorPerVertex -n "polyColorPerVertex6";
	rename -uid "E35B5B6C-4241-F182-9B5D-1DBF1736E915";
	setAttr ".uopa" yes;
	setAttr -s 68 ".vclr";
	setAttr ".vclr[139].vxal" 1;
	setAttr ".vclr[139].vfcl[7].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[139].vfcl[7].vfal" 1;
	setAttr ".vclr[140].vxal" 1;
	setAttr ".vclr[140].vfcl[7].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[140].vfcl[7].vfal" 1;
	setAttr ".vclr[141].vxal" 1;
	setAttr ".vclr[141].vfcl[7].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[141].vfcl[7].vfal" 1;
	setAttr ".vclr[142].vxal" 1;
	setAttr -s 2 ".vclr[142].vfcl";
	setAttr ".vclr[142].vfcl[7].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[142].vfcl[7].vfal" 1;
	setAttr ".vclr[142].vfcl[8].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[142].vfcl[8].vfal" 1;
	setAttr ".vclr[143].vxal" 1;
	setAttr -s 3 ".vclr[143].vfcl";
	setAttr ".vclr[143].vfcl[7].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[143].vfcl[7].vfal" 1;
	setAttr ".vclr[143].vfcl[8].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[143].vfcl[8].vfal" 1;
	setAttr ".vclr[143].vfcl[18].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[143].vfcl[18].vfal" 1;
	setAttr ".vclr[144].vxal" 1;
	setAttr ".vclr[144].vfcl[8].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[144].vfcl[8].vfal" 1;
	setAttr ".vclr[145].vxal" 1;
	setAttr -s 2 ".vclr[145].vfcl";
	setAttr ".vclr[145].vfcl[8].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[145].vfcl[8].vfal" 1;
	setAttr ".vclr[145].vfcl[9].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[145].vfcl[9].vfal" 1;
	setAttr ".vclr[146].vxal" 1;
	setAttr -s 4 ".vclr[146].vfcl";
	setAttr ".vclr[146].vfcl[8].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[146].vfcl[8].vfal" 1;
	setAttr ".vclr[146].vfcl[9].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[146].vfcl[9].vfal" 1;
	setAttr ".vclr[146].vfcl[18].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[146].vfcl[18].vfal" 1;
	setAttr ".vclr[146].vfcl[19].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[146].vfcl[19].vfal" 1;
	setAttr ".vclr[147].vxal" 1;
	setAttr ".vclr[147].vfcl[9].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[147].vfcl[9].vfal" 1;
	setAttr ".vclr[148].vxal" 1;
	setAttr -s 2 ".vclr[148].vfcl";
	setAttr ".vclr[148].vfcl[9].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[148].vfcl[9].vfal" 1;
	setAttr ".vclr[148].vfcl[19].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[148].vfcl[19].vfal" 1;
	setAttr ".vclr[149].vxal" 1;
	setAttr -s 4 ".vclr[149].vfcl";
	setAttr ".vclr[149].vfcl[18].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[149].vfcl[18].vfal" 1;
	setAttr ".vclr[149].vfcl[19].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[149].vfcl[19].vfal" 1;
	setAttr ".vclr[149].vfcl[28].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[149].vfcl[28].vfal" 1;
	setAttr ".vclr[149].vfcl[29].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[149].vfcl[29].vfal" 1;
	setAttr ".vclr[150].vxal" 1;
	setAttr -s 2 ".vclr[150].vfcl";
	setAttr ".vclr[150].vfcl[18].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[150].vfcl[18].vfal" 1;
	setAttr ".vclr[150].vfcl[28].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[150].vfcl[28].vfal" 1;
	setAttr ".vclr[151].vxal" 1;
	setAttr ".vclr[151].vfcl[18].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[151].vfcl[18].vfal" 1;
	setAttr ".vclr[152].vxal" 1;
	setAttr -s 2 ".vclr[152].vfcl";
	setAttr ".vclr[152].vfcl[19].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[152].vfcl[19].vfal" 1;
	setAttr ".vclr[152].vfcl[29].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[152].vfcl[29].vfal" 1;
	setAttr ".vclr[153].vxal" 1;
	setAttr -s 2 ".vclr[153].vfcl";
	setAttr ".vclr[153].vfcl[27].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[153].vfcl[27].vfal" 1;
	setAttr ".vclr[153].vfcl[37].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[153].vfcl[37].vfal" 1;
	setAttr ".vclr[154].vxal" 1;
	setAttr -s 2 ".vclr[154].vfcl";
	setAttr ".vclr[154].vfcl[27].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[154].vfcl[27].vfal" 1;
	setAttr ".vclr[154].vfcl[28].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[154].vfcl[28].vfal" 1;
	setAttr ".vclr[155].vxal" 1;
	setAttr -s 4 ".vclr[155].vfcl";
	setAttr ".vclr[155].vfcl[27].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[155].vfcl[27].vfal" 1;
	setAttr ".vclr[155].vfcl[28].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[155].vfcl[28].vfal" 1;
	setAttr ".vclr[155].vfcl[37].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[155].vfcl[37].vfal" 1;
	setAttr ".vclr[155].vfcl[38].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[155].vfcl[38].vfal" 1;
	setAttr ".vclr[156].vxal" 1;
	setAttr -s 4 ".vclr[156].vfcl";
	setAttr ".vclr[156].vfcl[28].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[156].vfcl[28].vfal" 1;
	setAttr ".vclr[156].vfcl[29].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[156].vfcl[29].vfal" 1;
	setAttr ".vclr[156].vfcl[38].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[156].vfcl[38].vfal" 1;
	setAttr ".vclr[156].vfcl[39].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[156].vfcl[39].vfal" 1;
	setAttr ".vclr[157].vxal" 1;
	setAttr ".vclr[157].vfcl[29].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[157].vfcl[29].vfal" 1;
	setAttr ".vclr[158].vxal" 1;
	setAttr -s 2 ".vclr[158].vfcl";
	setAttr ".vclr[158].vfcl[29].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[158].vfcl[29].vfal" 1;
	setAttr ".vclr[158].vfcl[39].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[158].vfcl[39].vfal" 1;
	setAttr ".vclr[159].vxal" 1;
	setAttr -s 2 ".vclr[159].vfcl";
	setAttr ".vclr[159].vfcl[37].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[159].vfcl[37].vfal" 1;
	setAttr ".vclr[159].vfcl[47].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[159].vfcl[47].vfal" 1;
	setAttr ".vclr[160].vxal" 1;
	setAttr ".vclr[160].vfcl[37].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[160].vfcl[37].vfal" 1;
	setAttr ".vclr[161].vxal" 1;
	setAttr -s 4 ".vclr[161].vfcl";
	setAttr ".vclr[161].vfcl[37].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[161].vfcl[37].vfal" 1;
	setAttr ".vclr[161].vfcl[38].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[161].vfcl[38].vfal" 1;
	setAttr ".vclr[161].vfcl[47].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[161].vfcl[47].vfal" 1;
	setAttr ".vclr[161].vfcl[48].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[161].vfcl[48].vfal" 1;
	setAttr ".vclr[162].vxal" 1;
	setAttr -s 4 ".vclr[162].vfcl";
	setAttr ".vclr[162].vfcl[38].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[162].vfcl[38].vfal" 1;
	setAttr ".vclr[162].vfcl[39].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[162].vfcl[39].vfal" 1;
	setAttr ".vclr[162].vfcl[48].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[162].vfcl[48].vfal" 1;
	setAttr ".vclr[162].vfcl[49].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[162].vfcl[49].vfal" 1;
	setAttr ".vclr[163].vxal" 1;
	setAttr -s 2 ".vclr[163].vfcl";
	setAttr ".vclr[163].vfcl[39].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[163].vfcl[39].vfal" 1;
	setAttr ".vclr[163].vfcl[49].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[163].vfcl[49].vfal" 1;
	setAttr ".vclr[164].vxal" 1;
	setAttr -s 2 ".vclr[164].vfcl";
	setAttr ".vclr[164].vfcl[46].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[164].vfcl[46].vfal" 1;
	setAttr ".vclr[164].vfcl[56].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[164].vfcl[56].vfal" 1;
	setAttr ".vclr[165].vxal" 1;
	setAttr ".vclr[165].vfcl[46].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[165].vfcl[46].vfal" 1;
	setAttr ".vclr[166].vxal" 1;
	setAttr -s 2 ".vclr[166].vfcl";
	setAttr ".vclr[166].vfcl[46].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[166].vfcl[46].vfal" 1;
	setAttr ".vclr[166].vfcl[47].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[166].vfcl[47].vfal" 1;
	setAttr ".vclr[167].vxal" 1;
	setAttr -s 4 ".vclr[167].vfcl";
	setAttr ".vclr[167].vfcl[46].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[167].vfcl[46].vfal" 1;
	setAttr ".vclr[167].vfcl[47].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[167].vfcl[47].vfal" 1;
	setAttr ".vclr[167].vfcl[56].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[167].vfcl[56].vfal" 1;
	setAttr ".vclr[167].vfcl[57].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[167].vfcl[57].vfal" 1;
	setAttr ".vclr[168].vxal" 1;
	setAttr -s 4 ".vclr[168].vfcl";
	setAttr ".vclr[168].vfcl[47].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[168].vfcl[47].vfal" 1;
	setAttr ".vclr[168].vfcl[48].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[168].vfcl[48].vfal" 1;
	setAttr ".vclr[168].vfcl[57].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[168].vfcl[57].vfal" 1;
	setAttr ".vclr[168].vfcl[58].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[168].vfcl[58].vfal" 1;
	setAttr ".vclr[169].vxal" 1;
	setAttr -s 4 ".vclr[169].vfcl";
	setAttr ".vclr[169].vfcl[48].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[169].vfcl[48].vfal" 1;
	setAttr ".vclr[169].vfcl[49].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[169].vfcl[49].vfal" 1;
	setAttr ".vclr[169].vfcl[58].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[169].vfcl[58].vfal" 1;
	setAttr ".vclr[169].vfcl[59].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[169].vfcl[59].vfal" 1;
	setAttr ".vclr[170].vxal" 1;
	setAttr -s 2 ".vclr[170].vfcl";
	setAttr ".vclr[170].vfcl[49].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[170].vfcl[49].vfal" 1;
	setAttr ".vclr[170].vfcl[59].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[170].vfcl[59].vfal" 1;
	setAttr ".vclr[171].vxal" 1;
	setAttr -s 2 ".vclr[171].vfcl";
	setAttr ".vclr[171].vfcl[56].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[171].vfcl[56].vfal" 1;
	setAttr ".vclr[171].vfcl[66].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[171].vfcl[66].vfal" 1;
	setAttr ".vclr[172].vxal" 1;
	setAttr ".vclr[172].vfcl[56].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[172].vfcl[56].vfal" 1;
	setAttr ".vclr[173].vxal" 1;
	setAttr -s 4 ".vclr[173].vfcl";
	setAttr ".vclr[173].vfcl[56].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[173].vfcl[56].vfal" 1;
	setAttr ".vclr[173].vfcl[57].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[173].vfcl[57].vfal" 1;
	setAttr ".vclr[173].vfcl[66].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[173].vfcl[66].vfal" 1;
	setAttr ".vclr[173].vfcl[67].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[173].vfcl[67].vfal" 1;
	setAttr ".vclr[174].vxal" 1;
	setAttr -s 4 ".vclr[174].vfcl";
	setAttr ".vclr[174].vfcl[57].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[174].vfcl[57].vfal" 1;
	setAttr ".vclr[174].vfcl[58].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[174].vfcl[58].vfal" 1;
	setAttr ".vclr[174].vfcl[67].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[174].vfcl[67].vfal" 1;
	setAttr ".vclr[174].vfcl[68].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[174].vfcl[68].vfal" 1;
	setAttr ".vclr[175].vxal" 1;
	setAttr -s 4 ".vclr[175].vfcl";
	setAttr ".vclr[175].vfcl[58].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[175].vfcl[58].vfal" 1;
	setAttr ".vclr[175].vfcl[59].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[175].vfcl[59].vfal" 1;
	setAttr ".vclr[175].vfcl[68].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[175].vfcl[68].vfal" 1;
	setAttr ".vclr[175].vfcl[69].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[175].vfcl[69].vfal" 1;
	setAttr ".vclr[176].vxal" 1;
	setAttr -s 2 ".vclr[176].vfcl";
	setAttr ".vclr[176].vfcl[59].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[176].vfcl[59].vfal" 1;
	setAttr ".vclr[176].vfcl[69].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[176].vfcl[69].vfal" 1;
	setAttr ".vclr[177].vxal" 1;
	setAttr -s 2 ".vclr[177].vfcl";
	setAttr ".vclr[177].vfcl[65].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[177].vfcl[65].vfal" 1;
	setAttr ".vclr[177].vfcl[75].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[177].vfcl[75].vfal" 1;
	setAttr ".vclr[178].vxal" 1;
	setAttr -s 2 ".vclr[178].vfcl";
	setAttr ".vclr[178].vfcl[65].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[178].vfcl[65].vfal" 1;
	setAttr ".vclr[178].vfcl[66].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[178].vfcl[66].vfal" 1;
	setAttr ".vclr[179].vxal" 1;
	setAttr -s 4 ".vclr[179].vfcl";
	setAttr ".vclr[179].vfcl[65].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[179].vfcl[65].vfal" 1;
	setAttr ".vclr[179].vfcl[66].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[179].vfcl[66].vfal" 1;
	setAttr ".vclr[179].vfcl[75].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[179].vfcl[75].vfal" 1;
	setAttr ".vclr[179].vfcl[76].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[179].vfcl[76].vfal" 1;
	setAttr ".vclr[180].vxal" 1;
	setAttr -s 4 ".vclr[180].vfcl";
	setAttr ".vclr[180].vfcl[66].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[180].vfcl[66].vfal" 1;
	setAttr ".vclr[180].vfcl[67].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[180].vfcl[67].vfal" 1;
	setAttr ".vclr[180].vfcl[76].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[180].vfcl[76].vfal" 1;
	setAttr ".vclr[180].vfcl[77].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[180].vfcl[77].vfal" 1;
	setAttr ".vclr[181].vxal" 1;
	setAttr -s 4 ".vclr[181].vfcl";
	setAttr ".vclr[181].vfcl[67].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[181].vfcl[67].vfal" 1;
	setAttr ".vclr[181].vfcl[68].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[181].vfcl[68].vfal" 1;
	setAttr ".vclr[181].vfcl[77].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[181].vfcl[77].vfal" 1;
	setAttr ".vclr[181].vfcl[78].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[181].vfcl[78].vfal" 1;
	setAttr ".vclr[182].vxal" 1;
	setAttr -s 4 ".vclr[182].vfcl";
	setAttr ".vclr[182].vfcl[68].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[182].vfcl[68].vfal" 1;
	setAttr ".vclr[182].vfcl[69].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[182].vfcl[69].vfal" 1;
	setAttr ".vclr[182].vfcl[78].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[182].vfcl[78].vfal" 1;
	setAttr ".vclr[182].vfcl[79].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[182].vfcl[79].vfal" 1;
	setAttr ".vclr[183].vxal" 1;
	setAttr -s 2 ".vclr[183].vfcl";
	setAttr ".vclr[183].vfcl[69].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[183].vfcl[69].vfal" 1;
	setAttr ".vclr[183].vfcl[79].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[183].vfcl[79].vfal" 1;
	setAttr ".vclr[184].vxal" 1;
	setAttr -s 2 ".vclr[184].vfcl";
	setAttr ".vclr[184].vfcl[75].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[184].vfcl[75].vfal" 1;
	setAttr ".vclr[184].vfcl[85].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[184].vfcl[85].vfal" 1;
	setAttr ".vclr[185].vxal" 1;
	setAttr ".vclr[185].vfcl[75].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[185].vfcl[75].vfal" 1;
	setAttr ".vclr[186].vxal" 1;
	setAttr -s 4 ".vclr[186].vfcl";
	setAttr ".vclr[186].vfcl[75].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[186].vfcl[75].vfal" 1;
	setAttr ".vclr[186].vfcl[76].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[186].vfcl[76].vfal" 1;
	setAttr ".vclr[186].vfcl[85].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[186].vfcl[85].vfal" 1;
	setAttr ".vclr[186].vfcl[86].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[186].vfcl[86].vfal" 1;
	setAttr ".vclr[187].vxal" 1;
	setAttr -s 4 ".vclr[187].vfcl";
	setAttr ".vclr[187].vfcl[76].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[187].vfcl[76].vfal" 1;
	setAttr ".vclr[187].vfcl[77].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[187].vfcl[77].vfal" 1;
	setAttr ".vclr[187].vfcl[86].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[187].vfcl[86].vfal" 1;
	setAttr ".vclr[187].vfcl[87].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[187].vfcl[87].vfal" 1;
	setAttr ".vclr[188].vxal" 1;
	setAttr -s 4 ".vclr[188].vfcl";
	setAttr ".vclr[188].vfcl[77].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[188].vfcl[77].vfal" 1;
	setAttr ".vclr[188].vfcl[78].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[188].vfcl[78].vfal" 1;
	setAttr ".vclr[188].vfcl[87].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[188].vfcl[87].vfal" 1;
	setAttr ".vclr[188].vfcl[88].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[188].vfcl[88].vfal" 1;
	setAttr ".vclr[189].vxal" 1;
	setAttr -s 4 ".vclr[189].vfcl";
	setAttr ".vclr[189].vfcl[78].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[189].vfcl[78].vfal" 1;
	setAttr ".vclr[189].vfcl[79].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[189].vfcl[79].vfal" 1;
	setAttr ".vclr[189].vfcl[88].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[189].vfcl[88].vfal" 1;
	setAttr ".vclr[189].vfcl[89].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[189].vfcl[89].vfal" 1;
	setAttr ".vclr[190].vxal" 1;
	setAttr -s 2 ".vclr[190].vfcl";
	setAttr ".vclr[190].vfcl[79].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[190].vfcl[79].vfal" 1;
	setAttr ".vclr[190].vfcl[89].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[190].vfcl[89].vfal" 1;
	setAttr ".vclr[191].vxal" 1;
	setAttr -s 2 ".vclr[191].vfcl";
	setAttr ".vclr[191].vfcl[85].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[191].vfcl[85].vfal" 1;
	setAttr ".vclr[191].vfcl[95].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[191].vfcl[95].vfal" 1;
	setAttr ".vclr[192].vxal" 1;
	setAttr ".vclr[192].vfcl[85].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[192].vfcl[85].vfal" 1;
	setAttr ".vclr[193].vxal" 1;
	setAttr -s 4 ".vclr[193].vfcl";
	setAttr ".vclr[193].vfcl[85].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[193].vfcl[85].vfal" 1;
	setAttr ".vclr[193].vfcl[86].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[193].vfcl[86].vfal" 1;
	setAttr ".vclr[193].vfcl[95].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[193].vfcl[95].vfal" 1;
	setAttr ".vclr[193].vfcl[96].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[193].vfcl[96].vfal" 1;
	setAttr ".vclr[194].vxal" 1;
	setAttr -s 4 ".vclr[194].vfcl";
	setAttr ".vclr[194].vfcl[86].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[194].vfcl[86].vfal" 1;
	setAttr ".vclr[194].vfcl[87].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[194].vfcl[87].vfal" 1;
	setAttr ".vclr[194].vfcl[96].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[194].vfcl[96].vfal" 1;
	setAttr ".vclr[194].vfcl[97].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[194].vfcl[97].vfal" 1;
	setAttr ".vclr[195].vxal" 1;
	setAttr -s 4 ".vclr[195].vfcl";
	setAttr ".vclr[195].vfcl[87].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[195].vfcl[87].vfal" 1;
	setAttr ".vclr[195].vfcl[88].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[195].vfcl[88].vfal" 1;
	setAttr ".vclr[195].vfcl[97].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[195].vfcl[97].vfal" 1;
	setAttr ".vclr[195].vfcl[98].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[195].vfcl[98].vfal" 1;
	setAttr ".vclr[196].vxal" 1;
	setAttr -s 4 ".vclr[196].vfcl";
	setAttr ".vclr[196].vfcl[88].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[196].vfcl[88].vfal" 1;
	setAttr ".vclr[196].vfcl[89].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[196].vfcl[89].vfal" 1;
	setAttr ".vclr[196].vfcl[98].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[196].vfcl[98].vfal" 1;
	setAttr ".vclr[196].vfcl[99].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[196].vfcl[99].vfal" 1;
	setAttr ".vclr[197].vxal" 1;
	setAttr -s 2 ".vclr[197].vfcl";
	setAttr ".vclr[197].vfcl[89].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[197].vfcl[89].vfal" 1;
	setAttr ".vclr[197].vfcl[99].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[197].vfcl[99].vfal" 1;
	setAttr ".vclr[198].vxal" 1;
	setAttr -s 2 ".vclr[198].vfcl";
	setAttr ".vclr[198].vfcl[95].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[198].vfcl[95].vfal" 1;
	setAttr ".vclr[198].vfcl[96].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[198].vfcl[96].vfal" 1;
	setAttr ".vclr[199].vxal" 1;
	setAttr ".vclr[199].vfcl[95].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[199].vfcl[95].vfal" 1;
	setAttr ".vclr[200].vxal" 1;
	setAttr -s 2 ".vclr[200].vfcl";
	setAttr ".vclr[200].vfcl[96].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[200].vfcl[96].vfal" 1;
	setAttr ".vclr[200].vfcl[97].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[200].vfcl[97].vfal" 1;
	setAttr ".vclr[201].vxal" 1;
	setAttr ".vclr[201].vfcl[96].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[201].vfcl[96].vfal" 1;
	setAttr ".vclr[202].vxal" 1;
	setAttr -s 2 ".vclr[202].vfcl";
	setAttr ".vclr[202].vfcl[97].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[202].vfcl[97].vfal" 1;
	setAttr ".vclr[202].vfcl[98].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[202].vfcl[98].vfal" 1;
	setAttr ".vclr[203].vxal" 1;
	setAttr ".vclr[203].vfcl[97].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[203].vfcl[97].vfal" 1;
	setAttr ".vclr[204].vxal" 1;
	setAttr -s 2 ".vclr[204].vfcl";
	setAttr ".vclr[204].vfcl[98].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[204].vfcl[98].vfal" 1;
	setAttr ".vclr[204].vfcl[99].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[204].vfcl[99].vfal" 1;
	setAttr ".vclr[205].vxal" 1;
	setAttr ".vclr[205].vfcl[98].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[205].vfcl[98].vfal" 1;
	setAttr ".vclr[206].vxal" 1;
	setAttr ".vclr[206].vfcl[99].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[206].vfcl[99].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyTweak -n "polyTweak10";
	rename -uid "75CF8320-4720-570D-0B6B-22BEAAB0B5CC";
	setAttr ".uopa" yes;
	setAttr -s 68 ".tk[139:206]" -type "float3"  -0.00058047706 0.001164709
		 -0.029264357 -4.0800478e-05 0.0011647106 -0.032814808 0.00044098063 0.0011647106
		 -0.034363404 -0.0011425413 0.0011647099 -0.034995098 -0.0011425413 0.001164709 -0.029264357
		 -0.0037595374 0.0011647106 -0.036039036 -0.0079172179 0.001164709 -0.034199137 -0.0079172179
		 0.0011647106 -0.029264363 -0.013575707 0.0011647099 -0.03169509 -0.013763991 0.001164709
		 -0.029264357 -0.0079172179 0.0011647115 -0.022489682 -0.0011425413 0.0011647115 -0.022489686
		 -0.0011425413 0.0011647099 -0.0255666 -0.014288758 0.0011647115 -0.022489686 -0.00032378512
		 0.0011647115 -0.015715005 -0.0011425413 0.0011647099 -0.017718039 -0.0011425413 0.0011647106
		 -0.015715003 -0.0079172179 0.0011647106 -0.015715003 -0.014691898 0.0011647106 -0.017285377
		 -0.014644397 0.0011647115 -0.015715005 0.0032582178 0.0011647111 -0.0089403307 0.0017990264
		 0.0011647106 -0.010521698 -0.0011425413 0.0011647111 -0.008940327 -0.0079172179 0.0011647111
		 -0.008940327 -0.014439485 0.0011647111 -0.0089403307 0.0097197369 0.001164712 -0.0021656489
		 0.0090865279 0.0011647115 -0.0033552023 0.0056321397 0.001164712 -0.0063676387 0.0056321397
		 0.0011647111 -0.0021656458 -0.0011425413 0.0011647111 -0.0021656458 -0.0079172179
		 0.0011647111 -0.0021656458 -0.014234573 0.001164712 -0.0021656489 0.011904297 0.0011647115
		 0.004609033 0.011580653 0.0011647111 0.0013302907 0.0056321397 0.0011647115 0.004609033
		 -0.0011425413 0.0011647115 0.004609033 -0.0079172179 0.0011647115 0.004609033 -0.014029665
		 0.0011647115 0.004609033 0.01277345 0.0011647858 0.011386862 0.012406818 0.0011647111
		 0.0096999593 0.012406818 0.0011647483 0.011386865 0.0056321397 0.0011647483 0.011386865
		 -0.0011425413 0.0011647483 0.011386865 -0.0079172179 0.0011647483 0.011386865 -0.013824752
		 0.0011647858 0.011386862 0.013846498 0.0014884238 0.01822613 0.013397303 0.0013222366
		 0.014718071 0.012406818 0.0014882716 0.01822613 0.0056321397 0.0014882716 0.01822613
		 -0.0011425413 0.0014882716 0.01822613 -0.0079172179 0.0014882716 0.01822613 -0.013689055
		 0.0014884238 0.01822613 0.01456727 0.0011662093 0.02491615 0.014434372 0.0012792434
		 0.022555724 0.012406818 0.001165794 0.024916096 0.0056321397 0.001165794 0.024916096
		 -0.0011425413 0.001165794 0.024916096 -0.0079172179 0.001165794 0.024916096 -0.013414932
		 0.0011662093 0.02491615 0.012406818 -3.9343464e-05 0.030663118 0.014691898 0.00079344783
		 0.026690312 0.0056321397 -0.00095753925 0.03504334 0.0096834246 -0.0007882574 0.034235768
		 -0.0011425413 -0.0011423198 0.03592483 0.0015122331 -0.0011296937 0.035864603 -0.0079172179
		 -0.0011225569 0.03583055 -0.0061625475 -0.0011661951 0.036038727 -0.012622747 -0.0010055277
		 0.035272263;
createNode polySplit -n "polySplit2";
	rename -uid "B2ECEDCC-47FB-D336-8C31-BD9206650AC4";
	setAttr -s 29 ".e[0:28]"  0.22480001 0.19810601 0.253746 0.265367 0.259027
		 0.61596102 0.58454698 0.76927298 0.37456101 0.194387 0.13429099 0.15236799 0.20181499
		 0 0 0 0 0 0 0 0.066740699 0.133481 0.195105 0.26806 0.23394001 0.55355603 0.54754001
		 0.244533 0.22480001;
	setAttr -s 29 ".d[0:28]"  -2147483493 -2147483506 -2147483519 -2147483534 -2147483549 -2147483565 
		-2147483568 -2147483584 -2147483586 -2147483589 -2147483607 -2147483625 -2147483646 -2147483645 -2147483647 -2147483627 -2147483609 -2147483591 
		-2147483574 -2147483557 -2147483542 -2147483527 -2147483514 -2147483501 -2147483498 -2147483496 -2147483494 -2147483492 -2147483493;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyColorPerVertex -n "polyColorPerVertex7";
	rename -uid "1C88F1A9-4796-6CC4-BE66-8EB1AADB54A8";
	setAttr ".uopa" yes;
	setAttr -s 52 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr ".vclr[0].vfcl[0].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[0].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr -s 2 ".vclr[1].vfcl";
	setAttr ".vclr[1].vfcl[0].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[1].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vfcl[183].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[1].vfcl[183].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 2 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[0].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[11].vfcl[0].vfal" 1;
	setAttr ".vclr[11].vfcl[10].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[11].vfcl[10].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 4 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[0].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[12].vfcl[0].vfal" 1;
	setAttr ".vclr[12].vfcl[10].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[12].vfcl[10].vfal" 1;
	setAttr ".vclr[12].vfcl[182].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[12].vfcl[182].vfal" 1;
	setAttr ".vclr[12].vfcl[183].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[12].vfcl[183].vfal" 1;
	setAttr ".vclr[21].vxal" 1;
	setAttr -s 2 ".vclr[21].vfcl";
	setAttr ".vclr[21].vfcl[10].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[21].vfcl[10].vfal" 1;
	setAttr ".vclr[21].vfcl[20].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[21].vfcl[20].vfal" 1;
	setAttr ".vclr[22].vxal" 1;
	setAttr -s 4 ".vclr[22].vfcl";
	setAttr ".vclr[22].vfcl[10].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[22].vfcl[10].vfal" 1;
	setAttr ".vclr[22].vfcl[20].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[22].vfcl[20].vfal" 1;
	setAttr ".vclr[22].vfcl[181].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[22].vfcl[181].vfal" 1;
	setAttr ".vclr[22].vfcl[182].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[22].vfcl[182].vfal" 1;
	setAttr ".vclr[31].vxal" 1;
	setAttr -s 2 ".vclr[31].vfcl";
	setAttr ".vclr[31].vfcl[20].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[31].vfcl[20].vfal" 1;
	setAttr ".vclr[31].vfcl[30].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[31].vfcl[30].vfal" 1;
	setAttr ".vclr[32].vxal" 1;
	setAttr -s 4 ".vclr[32].vfcl";
	setAttr ".vclr[32].vfcl[20].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[32].vfcl[20].vfal" 1;
	setAttr ".vclr[32].vfcl[30].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[32].vfcl[30].vfal" 1;
	setAttr ".vclr[32].vfcl[180].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[32].vfcl[180].vfal" 1;
	setAttr ".vclr[32].vfcl[181].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[32].vfcl[181].vfal" 1;
	setAttr ".vclr[40].vxal" 1;
	setAttr -s 2 ".vclr[40].vfcl";
	setAttr ".vclr[40].vfcl[30].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[40].vfcl[30].vfal" 1;
	setAttr ".vclr[40].vfcl[40].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[40].vfcl[40].vfal" 1;
	setAttr ".vclr[41].vxal" 1;
	setAttr -s 4 ".vclr[41].vfcl";
	setAttr ".vclr[41].vfcl[30].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[41].vfcl[30].vfal" 1;
	setAttr ".vclr[41].vfcl[40].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[41].vfcl[40].vfal" 1;
	setAttr ".vclr[41].vfcl[41].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[41].vfcl[41].vfal" 1;
	setAttr ".vclr[41].vfcl[180].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[41].vfcl[180].vfal" 1;
	setAttr ".vclr[42].vxal" 1;
	setAttr -s 4 ".vclr[42].vfcl";
	setAttr ".vclr[42].vfcl[41].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[42].vfcl[41].vfal" 1;
	setAttr ".vclr[42].vfcl[42].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[42].vfcl[42].vfal" 1;
	setAttr ".vclr[42].vfcl[179].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[42].vfcl[179].vfal" 1;
	setAttr ".vclr[42].vfcl[180].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[42].vfcl[180].vfal" 1;
	setAttr ".vclr[43].vxal" 1;
	setAttr -s 4 ".vclr[43].vfcl";
	setAttr ".vclr[43].vfcl[42].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[43].vfcl[42].vfal" 1;
	setAttr ".vclr[43].vfcl[177].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[43].vfcl[177].vfal" 1;
	setAttr ".vclr[43].vfcl[178].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[43].vfcl[178].vfal" 1;
	setAttr ".vclr[43].vfcl[179].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[43].vfcl[179].vfal" 1;
	setAttr ".vclr[49].vxal" 1;
	setAttr -s 2 ".vclr[49].vfcl";
	setAttr ".vclr[49].vfcl[40].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[49].vfcl[40].vfal" 1;
	setAttr ".vclr[49].vfcl[184].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[49].vfcl[184].vfal" 1;
	setAttr ".vclr[50].vxal" 1;
	setAttr -s 4 ".vclr[50].vfcl";
	setAttr ".vclr[50].vfcl[40].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[50].vfcl[40].vfal" 1;
	setAttr ".vclr[50].vfcl[41].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[50].vfcl[41].vfal" 1;
	setAttr ".vclr[50].vfcl[51].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[50].vfcl[51].vfal" 1;
	setAttr ".vclr[50].vfcl[184].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[50].vfcl[184].vfal" 1;
	setAttr ".vclr[51].vxal" 1;
	setAttr -s 4 ".vclr[51].vfcl";
	setAttr ".vclr[51].vfcl[41].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[51].vfcl[41].vfal" 1;
	setAttr ".vclr[51].vfcl[42].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[51].vfcl[42].vfal" 1;
	setAttr ".vclr[51].vfcl[51].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[51].vfcl[51].vfal" 1;
	setAttr ".vclr[51].vfcl[52].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[51].vfcl[52].vfal" 1;
	setAttr ".vclr[52].vxal" 1;
	setAttr -s 4 ".vclr[52].vfcl";
	setAttr ".vclr[52].vfcl[42].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[52].vfcl[42].vfal" 1;
	setAttr ".vclr[52].vfcl[52].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[52].vfcl[52].vfal" 1;
	setAttr ".vclr[52].vfcl[53].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[52].vfcl[53].vfal" 1;
	setAttr ".vclr[52].vfcl[177].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[52].vfcl[177].vfal" 1;
	setAttr ".vclr[53].vxal" 1;
	setAttr -s 4 ".vclr[53].vfcl";
	setAttr ".vclr[53].vfcl[53].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[53].vfcl[53].vfal" 1;
	setAttr ".vclr[53].vfcl[175].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[53].vfcl[175].vfal" 1;
	setAttr ".vclr[53].vfcl[176].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[53].vfcl[176].vfal" 1;
	setAttr ".vclr[53].vfcl[177].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[53].vfcl[177].vfal" 1;
	setAttr ".vclr[58].vxal" 1;
	setAttr -s 4 ".vclr[58].vfcl";
	setAttr ".vclr[58].vfcl[51].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[58].vfcl[51].vfal" 1;
	setAttr ".vclr[58].vfcl[61].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[58].vfcl[61].vfal" 1;
	setAttr ".vclr[58].vfcl[184].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[58].vfcl[184].vfal" 1;
	setAttr ".vclr[58].vfcl[185].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[58].vfcl[185].vfal" 1;
	setAttr ".vclr[59].vxal" 1;
	setAttr -s 3 ".vclr[59].vfcl";
	setAttr ".vclr[59].vfcl[51].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[59].vfcl[51].vfal" 1;
	setAttr ".vclr[59].vfcl[52].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[59].vfcl[52].vfal" 1;
	setAttr ".vclr[59].vfcl[61].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[59].vfcl[61].vfal" 1;
	setAttr ".vclr[60].vxal" 1;
	setAttr -s 2 ".vclr[60].vfcl";
	setAttr ".vclr[60].vfcl[52].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[60].vfcl[52].vfal" 1;
	setAttr ".vclr[60].vfcl[53].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[60].vfcl[53].vfal" 1;
	setAttr ".vclr[61].vxal" 1;
	setAttr -s 3 ".vclr[61].vfcl";
	setAttr ".vclr[61].vfcl[53].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[61].vfcl[53].vfal" 1;
	setAttr ".vclr[61].vfcl[174].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[61].vfcl[174].vfal" 1;
	setAttr ".vclr[61].vfcl[175].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[61].vfcl[175].vfal" 1;
	setAttr ".vclr[66].vxal" 1;
	setAttr -s 4 ".vclr[66].vfcl";
	setAttr ".vclr[66].vfcl[61].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[66].vfcl[61].vfal" 1;
	setAttr ".vclr[66].vfcl[71].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[66].vfcl[71].vfal" 1;
	setAttr ".vclr[66].vfcl[185].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[66].vfcl[185].vfal" 1;
	setAttr ".vclr[66].vfcl[186].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[66].vfcl[186].vfal" 1;
	setAttr ".vclr[67].vxal" 1;
	setAttr -s 2 ".vclr[67].vfcl";
	setAttr ".vclr[67].vfcl[61].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[67].vfcl[61].vfal" 1;
	setAttr ".vclr[67].vfcl[71].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[67].vfcl[71].vfal" 1;
	setAttr ".vclr[69].vxal" 1;
	setAttr -s 2 ".vclr[69].vfcl";
	setAttr ".vclr[69].vfcl[173].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[69].vfcl[173].vfal" 1;
	setAttr ".vclr[69].vfcl[174].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[69].vfcl[174].vfal" 1;
	setAttr ".vclr[73].vxal" 1;
	setAttr -s 4 ".vclr[73].vfcl";
	setAttr ".vclr[73].vfcl[71].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[73].vfcl[71].vfal" 1;
	setAttr ".vclr[73].vfcl[81].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[73].vfcl[81].vfal" 1;
	setAttr ".vclr[73].vfcl[186].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[73].vfcl[186].vfal" 1;
	setAttr ".vclr[73].vfcl[187].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[73].vfcl[187].vfal" 1;
	setAttr ".vclr[74].vxal" 1;
	setAttr -s 2 ".vclr[74].vfcl";
	setAttr ".vclr[74].vfcl[71].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[74].vfcl[71].vfal" 1;
	setAttr ".vclr[74].vfcl[81].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[74].vfcl[81].vfal" 1;
	setAttr ".vclr[76].vxal" 1;
	setAttr -s 2 ".vclr[76].vfcl";
	setAttr ".vclr[76].vfcl[172].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[76].vfcl[172].vfal" 1;
	setAttr ".vclr[76].vfcl[173].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[76].vfcl[173].vfal" 1;
	setAttr ".vclr[80].vxal" 1;
	setAttr -s 4 ".vclr[80].vfcl";
	setAttr ".vclr[80].vfcl[81].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[80].vfcl[81].vfal" 1;
	setAttr ".vclr[80].vfcl[187].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[80].vfcl[187].vfal" 1;
	setAttr ".vclr[80].vfcl[188].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[80].vfcl[188].vfal" 1;
	setAttr ".vclr[80].vfcl[189].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[80].vfcl[189].vfal" 1;
	setAttr ".vclr[81].vxal" 1;
	setAttr -s 3 ".vclr[81].vfcl";
	setAttr ".vclr[81].vfcl[81].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[81].vfcl[81].vfal" 1;
	setAttr ".vclr[81].vfcl[189].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[81].vfcl[189].vfal" 1;
	setAttr ".vclr[81].vfcl[190].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[81].vfcl[190].vfal" 1;
	setAttr ".vclr[82].vxal" 1;
	setAttr -s 2 ".vclr[82].vfcl";
	setAttr ".vclr[82].vfcl[190].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[82].vfcl[190].vfal" 1;
	setAttr ".vclr[82].vfcl[191].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[82].vfcl[191].vfal" 1;
	setAttr ".vclr[83].vxal" 1;
	setAttr -s 3 ".vclr[83].vfcl";
	setAttr ".vclr[83].vfcl[172].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[83].vfcl[172].vfal" 1;
	setAttr ".vclr[83].vfcl[191].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[83].vfcl[191].vfal" 1;
	setAttr ".vclr[83].vfcl[192].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[83].vfcl[192].vfal" 1;
	setAttr ".vclr[207].vxal" 1;
	setAttr -s 2 ".vclr[207].vfcl";
	setAttr ".vclr[207].vfcl[172].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[207].vfcl[172].vfal" 1;
	setAttr ".vclr[207].vfcl[192].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[207].vfcl[192].vfal" 1;
	setAttr ".vclr[208].vxal" 1;
	setAttr -s 2 ".vclr[208].vfcl";
	setAttr ".vclr[208].vfcl[172].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[208].vfcl[172].vfal" 1;
	setAttr ".vclr[208].vfcl[173].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[208].vfcl[173].vfal" 1;
	setAttr ".vclr[209].vxal" 1;
	setAttr -s 2 ".vclr[209].vfcl";
	setAttr ".vclr[209].vfcl[173].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[209].vfcl[173].vfal" 1;
	setAttr ".vclr[209].vfcl[174].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[209].vfcl[174].vfal" 1;
	setAttr ".vclr[210].vxal" 1;
	setAttr -s 2 ".vclr[210].vfcl";
	setAttr ".vclr[210].vfcl[174].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[210].vfcl[174].vfal" 1;
	setAttr ".vclr[210].vfcl[175].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[210].vfcl[175].vfal" 1;
	setAttr ".vclr[211].vxal" 1;
	setAttr -s 2 ".vclr[211].vfcl";
	setAttr ".vclr[211].vfcl[175].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[211].vfcl[175].vfal" 1;
	setAttr ".vclr[211].vfcl[176].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[211].vfcl[176].vfal" 1;
	setAttr ".vclr[212].vxal" 1;
	setAttr -s 2 ".vclr[212].vfcl";
	setAttr ".vclr[212].vfcl[176].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[212].vfcl[176].vfal" 1;
	setAttr ".vclr[212].vfcl[177].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[212].vfcl[177].vfal" 1;
	setAttr ".vclr[213].vxal" 1;
	setAttr -s 2 ".vclr[213].vfcl";
	setAttr ".vclr[213].vfcl[177].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[213].vfcl[177].vfal" 1;
	setAttr ".vclr[213].vfcl[178].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[213].vfcl[178].vfal" 1;
	setAttr ".vclr[214].vxal" 1;
	setAttr -s 2 ".vclr[214].vfcl";
	setAttr ".vclr[214].vfcl[178].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[214].vfcl[178].vfal" 1;
	setAttr ".vclr[214].vfcl[179].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[214].vfcl[179].vfal" 1;
	setAttr ".vclr[215].vxal" 1;
	setAttr -s 2 ".vclr[215].vfcl";
	setAttr ".vclr[215].vfcl[179].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[215].vfcl[179].vfal" 1;
	setAttr ".vclr[215].vfcl[180].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[215].vfcl[180].vfal" 1;
	setAttr ".vclr[216].vxal" 1;
	setAttr -s 2 ".vclr[216].vfcl";
	setAttr ".vclr[216].vfcl[180].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[216].vfcl[180].vfal" 1;
	setAttr ".vclr[216].vfcl[181].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[216].vfcl[181].vfal" 1;
	setAttr ".vclr[217].vxal" 1;
	setAttr -s 2 ".vclr[217].vfcl";
	setAttr ".vclr[217].vfcl[181].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[217].vfcl[181].vfal" 1;
	setAttr ".vclr[217].vfcl[182].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[217].vfcl[182].vfal" 1;
	setAttr ".vclr[218].vxal" 1;
	setAttr -s 2 ".vclr[218].vfcl";
	setAttr ".vclr[218].vfcl[182].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[218].vfcl[182].vfal" 1;
	setAttr ".vclr[218].vfcl[183].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[218].vfcl[183].vfal" 1;
	setAttr ".vclr[219].vxal" 1;
	setAttr ".vclr[219].vfcl[183].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[219].vfcl[183].vfal" 1;
	setAttr ".vclr[220].vxal" 1;
	setAttr -s 2 ".vclr[220].vfcl";
	setAttr ".vclr[220].vfcl[184].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[220].vfcl[184].vfal" 1;
	setAttr ".vclr[220].vfcl[185].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[220].vfcl[185].vfal" 1;
	setAttr ".vclr[221].vxal" 1;
	setAttr -s 2 ".vclr[221].vfcl";
	setAttr ".vclr[221].vfcl[185].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[221].vfcl[185].vfal" 1;
	setAttr ".vclr[221].vfcl[186].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[221].vfcl[186].vfal" 1;
	setAttr ".vclr[222].vxal" 1;
	setAttr -s 2 ".vclr[222].vfcl";
	setAttr ".vclr[222].vfcl[186].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[222].vfcl[186].vfal" 1;
	setAttr ".vclr[222].vfcl[187].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[222].vfcl[187].vfal" 1;
	setAttr ".vclr[223].vxal" 1;
	setAttr -s 2 ".vclr[223].vfcl";
	setAttr ".vclr[223].vfcl[187].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[223].vfcl[187].vfal" 1;
	setAttr ".vclr[223].vfcl[188].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[223].vfcl[188].vfal" 1;
	setAttr ".vclr[224].vxal" 1;
	setAttr -s 2 ".vclr[224].vfcl";
	setAttr ".vclr[224].vfcl[188].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[224].vfcl[188].vfal" 1;
	setAttr ".vclr[224].vfcl[189].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[224].vfcl[189].vfal" 1;
	setAttr ".vclr[225].vxal" 1;
	setAttr -s 2 ".vclr[225].vfcl";
	setAttr ".vclr[225].vfcl[189].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[225].vfcl[189].vfal" 1;
	setAttr ".vclr[225].vfcl[190].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[225].vfcl[190].vfal" 1;
	setAttr ".vclr[226].vxal" 1;
	setAttr -s 2 ".vclr[226].vfcl";
	setAttr ".vclr[226].vfcl[190].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[226].vfcl[190].vfal" 1;
	setAttr ".vclr[226].vfcl[191].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[226].vfcl[191].vfal" 1;
	setAttr ".vclr[227].vxal" 1;
	setAttr -s 2 ".vclr[227].vfcl";
	setAttr ".vclr[227].vfcl[191].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[227].vfcl[191].vfal" 1;
	setAttr ".vclr[227].vfcl[192].frgb" -type "float3" 0.3581 0.33219999 0.077200003 ;
	setAttr ".vclr[227].vfcl[192].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "85C23900-4F7E-7340-B12E-A1BA24E358CD";
	setAttr ".sa" 7;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "3DB8847C-4E8D-D4C3-B150-93A2813D8D79";
	setAttr ".ics" -type "componentList" 1 "f[7:20]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-16 -1 0 0 1 2.2204460492503131e-16 0 0
		 0 0 1 0 0 4.8797834317520161 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.8302679 0 ;
	setAttr ".rs" 57315;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000000000000002 3.8797834317520161 -0.97492790222167969 ;
	setAttr ".cbx" -type "double3" 1.0000000000000002 5.7807522814109822 0.97492790222167969 ;
createNode polyColorPerVertex -n "polyColorPerVertex8";
	rename -uid "5EB81692-4DE2-838F-CFB6-FF970E544BD6";
	setAttr ".uopa" yes;
	setAttr -s 30 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr -s 4 ".vclr[0].vfcl";
	setAttr ".vclr[0].vfcl[0].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[0].vfcl[0].vfal" 1;
	setAttr ".vclr[0].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[0].vfcl[6].vfal" 1;
	setAttr ".vclr[0].vfcl[21].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[0].vfcl[21].vfal" 1;
	setAttr ".vclr[0].vfcl[27].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[0].vfcl[27].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr -s 4 ".vclr[1].vfcl";
	setAttr ".vclr[1].vfcl[0].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[1].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[1].vfcl[1].vfal" 1;
	setAttr ".vclr[1].vfcl[21].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[1].vfcl[21].vfal" 1;
	setAttr ".vclr[1].vfcl[22].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[1].vfcl[22].vfal" 1;
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 4 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[2].vfcl[1].vfal" 1;
	setAttr ".vclr[2].vfcl[2].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[2].vfcl[2].vfal" 1;
	setAttr ".vclr[2].vfcl[22].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[2].vfcl[22].vfal" 1;
	setAttr ".vclr[2].vfcl[23].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[2].vfcl[23].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 4 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[2].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[3].vfcl[2].vfal" 1;
	setAttr ".vclr[3].vfcl[3].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[3].vfcl[3].vfal" 1;
	setAttr ".vclr[3].vfcl[23].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[3].vfcl[23].vfal" 1;
	setAttr ".vclr[3].vfcl[24].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[3].vfcl[24].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 4 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[3].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[4].vfcl[3].vfal" 1;
	setAttr ".vclr[4].vfcl[4].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[4].vfcl[4].vfal" 1;
	setAttr ".vclr[4].vfcl[24].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[4].vfcl[24].vfal" 1;
	setAttr ".vclr[4].vfcl[25].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[4].vfcl[25].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 4 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[4].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[5].vfcl[4].vfal" 1;
	setAttr ".vclr[5].vfcl[5].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[5].vfcl[5].vfal" 1;
	setAttr ".vclr[5].vfcl[25].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[5].vfcl[25].vfal" 1;
	setAttr ".vclr[5].vfcl[26].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[5].vfcl[26].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr -s 4 ".vclr[6].vfcl";
	setAttr ".vclr[6].vfcl[5].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[6].vfcl[5].vfal" 1;
	setAttr ".vclr[6].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[6].vfcl[6].vfal" 1;
	setAttr ".vclr[6].vfcl[26].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[6].vfcl[26].vfal" 1;
	setAttr ".vclr[6].vfcl[27].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[6].vfcl[27].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr -s 4 ".vclr[7].vfcl";
	setAttr ".vclr[7].vfcl[0].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[7].vfcl[0].vfal" 1;
	setAttr ".vclr[7].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[7].vfcl[6].vfal" 1;
	setAttr ".vclr[7].vfcl[28].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[7].vfcl[28].vfal" 1;
	setAttr ".vclr[7].vfcl[34].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[7].vfcl[34].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 4 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[0].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[8].vfcl[0].vfal" 1;
	setAttr ".vclr[8].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[8].vfcl[1].vfal" 1;
	setAttr ".vclr[8].vfcl[28].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[8].vfcl[28].vfal" 1;
	setAttr ".vclr[8].vfcl[29].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[8].vfcl[29].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 4 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[9].vfcl[1].vfal" 1;
	setAttr ".vclr[9].vfcl[2].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[9].vfcl[2].vfal" 1;
	setAttr ".vclr[9].vfcl[29].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[9].vfcl[29].vfal" 1;
	setAttr ".vclr[9].vfcl[30].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[9].vfcl[30].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 4 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[2].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[10].vfcl[2].vfal" 1;
	setAttr ".vclr[10].vfcl[3].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[10].vfcl[3].vfal" 1;
	setAttr ".vclr[10].vfcl[30].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[10].vfcl[30].vfal" 1;
	setAttr ".vclr[10].vfcl[31].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[10].vfcl[31].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 4 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[3].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[11].vfcl[3].vfal" 1;
	setAttr ".vclr[11].vfcl[4].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[11].vfcl[4].vfal" 1;
	setAttr ".vclr[11].vfcl[31].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[11].vfcl[31].vfal" 1;
	setAttr ".vclr[11].vfcl[32].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[11].vfcl[32].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 4 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[4].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[12].vfcl[4].vfal" 1;
	setAttr ".vclr[12].vfcl[5].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[12].vfcl[5].vfal" 1;
	setAttr ".vclr[12].vfcl[32].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[12].vfcl[32].vfal" 1;
	setAttr ".vclr[12].vfcl[33].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[12].vfcl[33].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 4 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[5].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[13].vfcl[5].vfal" 1;
	setAttr ".vclr[13].vfcl[6].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[13].vfcl[6].vfal" 1;
	setAttr ".vclr[13].vfcl[33].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[13].vfcl[33].vfal" 1;
	setAttr ".vclr[13].vfcl[34].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[13].vfcl[34].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 4 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[7].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[14].vfcl[7].vfal" 1;
	setAttr ".vclr[14].vfcl[13].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[14].vfcl[13].vfal" 1;
	setAttr ".vclr[14].vfcl[21].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[14].vfcl[21].vfal" 1;
	setAttr ".vclr[14].vfcl[27].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[14].vfcl[27].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 4 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[7].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[15].vfcl[7].vfal" 1;
	setAttr ".vclr[15].vfcl[8].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[15].vfcl[8].vfal" 1;
	setAttr ".vclr[15].vfcl[21].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[15].vfcl[21].vfal" 1;
	setAttr ".vclr[15].vfcl[22].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[15].vfcl[22].vfal" 1;
	setAttr ".vclr[16].vxal" 1;
	setAttr -s 7 ".vclr[16].vfcl";
	setAttr ".vclr[16].vfcl[7].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[16].vfcl[7].vfal" 1;
	setAttr ".vclr[16].vfcl[8].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[16].vfcl[8].vfal" 1;
	setAttr ".vclr[16].vfcl[9].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[16].vfcl[9].vfal" 1;
	setAttr ".vclr[16].vfcl[10].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[16].vfcl[10].vfal" 1;
	setAttr ".vclr[16].vfcl[11].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[16].vfcl[11].vfal" 1;
	setAttr ".vclr[16].vfcl[12].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[16].vfcl[12].vfal" 1;
	setAttr ".vclr[16].vfcl[13].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[16].vfcl[13].vfal" 1;
	setAttr ".vclr[17].vxal" 1;
	setAttr -s 4 ".vclr[17].vfcl";
	setAttr ".vclr[17].vfcl[8].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[17].vfcl[8].vfal" 1;
	setAttr ".vclr[17].vfcl[9].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[17].vfcl[9].vfal" 1;
	setAttr ".vclr[17].vfcl[22].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[17].vfcl[22].vfal" 1;
	setAttr ".vclr[17].vfcl[23].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[17].vfcl[23].vfal" 1;
	setAttr ".vclr[18].vxal" 1;
	setAttr -s 4 ".vclr[18].vfcl";
	setAttr ".vclr[18].vfcl[9].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[18].vfcl[9].vfal" 1;
	setAttr ".vclr[18].vfcl[10].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[18].vfcl[10].vfal" 1;
	setAttr ".vclr[18].vfcl[23].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[18].vfcl[23].vfal" 1;
	setAttr ".vclr[18].vfcl[24].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[18].vfcl[24].vfal" 1;
	setAttr ".vclr[19].vxal" 1;
	setAttr -s 4 ".vclr[19].vfcl";
	setAttr ".vclr[19].vfcl[10].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[19].vfcl[10].vfal" 1;
	setAttr ".vclr[19].vfcl[11].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[19].vfcl[11].vfal" 1;
	setAttr ".vclr[19].vfcl[24].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[19].vfcl[24].vfal" 1;
	setAttr ".vclr[19].vfcl[25].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[19].vfcl[25].vfal" 1;
	setAttr ".vclr[20].vxal" 1;
	setAttr -s 4 ".vclr[20].vfcl";
	setAttr ".vclr[20].vfcl[11].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[20].vfcl[11].vfal" 1;
	setAttr ".vclr[20].vfcl[12].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[20].vfcl[12].vfal" 1;
	setAttr ".vclr[20].vfcl[25].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[20].vfcl[25].vfal" 1;
	setAttr ".vclr[20].vfcl[26].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[20].vfcl[26].vfal" 1;
	setAttr ".vclr[21].vxal" 1;
	setAttr -s 4 ".vclr[21].vfcl";
	setAttr ".vclr[21].vfcl[12].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[21].vfcl[12].vfal" 1;
	setAttr ".vclr[21].vfcl[13].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[21].vfcl[13].vfal" 1;
	setAttr ".vclr[21].vfcl[26].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[21].vfcl[26].vfal" 1;
	setAttr ".vclr[21].vfcl[27].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[21].vfcl[27].vfal" 1;
	setAttr ".vclr[22].vxal" 1;
	setAttr -s 4 ".vclr[22].vfcl";
	setAttr ".vclr[22].vfcl[14].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[22].vfcl[14].vfal" 1;
	setAttr ".vclr[22].vfcl[20].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[22].vfcl[20].vfal" 1;
	setAttr ".vclr[22].vfcl[28].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[22].vfcl[28].vfal" 1;
	setAttr ".vclr[22].vfcl[34].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[22].vfcl[34].vfal" 1;
	setAttr ".vclr[23].vxal" 1;
	setAttr -s 4 ".vclr[23].vfcl";
	setAttr ".vclr[23].vfcl[14].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[23].vfcl[14].vfal" 1;
	setAttr ".vclr[23].vfcl[15].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[23].vfcl[15].vfal" 1;
	setAttr ".vclr[23].vfcl[28].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[23].vfcl[28].vfal" 1;
	setAttr ".vclr[23].vfcl[29].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[23].vfcl[29].vfal" 1;
	setAttr ".vclr[24].vxal" 1;
	setAttr -s 7 ".vclr[24].vfcl";
	setAttr ".vclr[24].vfcl[14].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[24].vfcl[14].vfal" 1;
	setAttr ".vclr[24].vfcl[15].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[24].vfcl[15].vfal" 1;
	setAttr ".vclr[24].vfcl[16].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[24].vfcl[16].vfal" 1;
	setAttr ".vclr[24].vfcl[17].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[24].vfcl[17].vfal" 1;
	setAttr ".vclr[24].vfcl[18].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[24].vfcl[18].vfal" 1;
	setAttr ".vclr[24].vfcl[19].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[24].vfcl[19].vfal" 1;
	setAttr ".vclr[24].vfcl[20].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[24].vfcl[20].vfal" 1;
	setAttr ".vclr[25].vxal" 1;
	setAttr -s 4 ".vclr[25].vfcl";
	setAttr ".vclr[25].vfcl[15].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[25].vfcl[15].vfal" 1;
	setAttr ".vclr[25].vfcl[16].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[25].vfcl[16].vfal" 1;
	setAttr ".vclr[25].vfcl[29].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[25].vfcl[29].vfal" 1;
	setAttr ".vclr[25].vfcl[30].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[25].vfcl[30].vfal" 1;
	setAttr ".vclr[26].vxal" 1;
	setAttr -s 4 ".vclr[26].vfcl";
	setAttr ".vclr[26].vfcl[16].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[26].vfcl[16].vfal" 1;
	setAttr ".vclr[26].vfcl[17].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[26].vfcl[17].vfal" 1;
	setAttr ".vclr[26].vfcl[30].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[26].vfcl[30].vfal" 1;
	setAttr ".vclr[26].vfcl[31].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[26].vfcl[31].vfal" 1;
	setAttr ".vclr[27].vxal" 1;
	setAttr -s 4 ".vclr[27].vfcl";
	setAttr ".vclr[27].vfcl[17].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[27].vfcl[17].vfal" 1;
	setAttr ".vclr[27].vfcl[18].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[27].vfcl[18].vfal" 1;
	setAttr ".vclr[27].vfcl[31].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[27].vfcl[31].vfal" 1;
	setAttr ".vclr[27].vfcl[32].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[27].vfcl[32].vfal" 1;
	setAttr ".vclr[28].vxal" 1;
	setAttr -s 4 ".vclr[28].vfcl";
	setAttr ".vclr[28].vfcl[18].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[28].vfcl[18].vfal" 1;
	setAttr ".vclr[28].vfcl[19].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[28].vfcl[19].vfal" 1;
	setAttr ".vclr[28].vfcl[32].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[28].vfcl[32].vfal" 1;
	setAttr ".vclr[28].vfcl[33].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[28].vfcl[33].vfal" 1;
	setAttr ".vclr[29].vxal" 1;
	setAttr -s 4 ".vclr[29].vfcl";
	setAttr ".vclr[29].vfcl[19].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[29].vfcl[19].vfal" 1;
	setAttr ".vclr[29].vfcl[20].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[29].vfcl[20].vfal" 1;
	setAttr ".vclr[29].vfcl[33].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[29].vfcl[33].vfal" 1;
	setAttr ".vclr[29].vfcl[34].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[29].vfcl[34].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyColorPerVertex -n "polyColorPerVertex9";
	rename -uid "39D34793-48E2-9631-AF12-488634497DDA";
	setAttr ".uopa" yes;
	setAttr -s 8 ".vclr";
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 2 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[10].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[8].vfcl[10].vfal" 1;
	setAttr ".vclr[8].vfcl[13].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[8].vfcl[13].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 2 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[10].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[9].vfcl[10].vfal" 1;
	setAttr ".vclr[9].vfcl[11].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[9].vfcl[11].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 2 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[11].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[10].vfcl[11].vfal" 1;
	setAttr ".vclr[10].vfcl[12].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[10].vfcl[12].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 2 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[12].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[11].vfcl[12].vfal" 1;
	setAttr ".vclr[11].vfcl[13].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[11].vfcl[13].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 3 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[12].vfcl[1].vfal" 1;
	setAttr ".vclr[12].vfcl[10].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[12].vfcl[10].vfal" 1;
	setAttr ".vclr[12].vfcl[13].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[12].vfcl[13].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 3 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[13].vfcl[1].vfal" 1;
	setAttr ".vclr[13].vfcl[10].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[13].vfcl[10].vfal" 1;
	setAttr ".vclr[13].vfcl[11].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[13].vfcl[11].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 3 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[14].vfcl[1].vfal" 1;
	setAttr ".vclr[14].vfcl[11].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[14].vfcl[11].vfal" 1;
	setAttr ".vclr[14].vfcl[12].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[14].vfcl[12].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 3 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[1].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[15].vfcl[1].vfal" 1;
	setAttr ".vclr[15].vfcl[12].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[15].vfcl[12].vfal" 1;
	setAttr ".vclr[15].vfcl[13].frgb" -type "float3" 0 0.063500002 0.086599998 ;
	setAttr ".vclr[15].vfcl[13].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "4A3AD69F-447F-8BEE-47A8-61BE5B5E9177";
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.5971909 7.551815 31.618704 ;
	setAttr ".rs" 48561;
	setAttr ".lt" -type "double3" 6.3005156647477634e-15 0 -7.3400905073132714 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.6088212619351481 6.4038750996369016 30.983411385216744 ;
	setAttr ".cbx" -type "double3" -9.585559848294956 8.6997552154239877 32.253994643505692 ;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "BE56D96D-4DCC-2AF7-6427-32B9197C9270";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[92:93]" "e[95]" "e[97]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".wt" 0.04292779415845871;
	setAttr ".re" 92;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "EAD2B434-48F4-40C1-7892-61811BDFE585";
	setAttr ".ics" -type "componentList" 1 "f[50]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7586088 7.5518155 32.183929 ;
	setAttr ".rs" 37889;
	setAttr ".lt" -type "double3" 2.6020852139652106e-15 3.1917510257059761e-16 -2.6062624978305551 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.2705181193493758 6.4038750996369016 32.119632033946502 ;
	setAttr ".cbx" -type "double3" -2.2466998781207059 8.6997557349380354 32.24822472328848 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "64D0F0C0-4B27-96A4-C611-B2AF24100153";
	setAttr ".ics" -type "componentList" 1 "f[52]";
	setAttr ".ix" -type "matrix" -0.11969756032726768 0 -6.5381115078520233 0 0 8.7159993819507804 0 0
		 10.118924004158973 0 -0.18525387873550916 0 -4.5374410470606303 6.8039144232103732 31.541780205622018 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7818713 7.5518155 30.913345 ;
	setAttr ".rs" 37447;
	setAttr ".lt" -type "double3" 3.0739299994309022e-15 0 -2.5170379176001454 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.293780991776849 6.4038750996369016 30.849048202146825 ;
	setAttr ".cbx" -type "double3" -2.2699619055975666 8.6997557349380354 30.977644171804489 ;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "B3D0D4BA-4C41-91B4-1716-3F97918FEDD3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[4]" "e[25]" "e[43]" "e[61]" "e[78]" "e[95]" "e[110]" "e[125]" "e[138]" "e[151]" "e[162]" "e[406]" "e[417]";
	setAttr ".ix" -type "matrix" 4.3546127613917047 0 0 0 0 4.2620331849924602 -0.89315476357600554 0
		 0 0.89315476357600554 4.2620331849924602 0 0 3.3251669421253491 17.326718232012858 1;
	setAttr ".wt" 0.89763540029525757;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "8708486E-42D9-691F-C898-BB8FC95EE508";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[8]" "e[29]" "e[47]" "e[65]" "e[82]";
	setAttr ".ix" -type "matrix" 4.3546127613917047 0 0 0 0 4.2620331849924602 -0.89315476357600554 0
		 0 0.89315476357600554 4.2620331849924602 0 0 3.3251669421253491 17.326718232012858 1;
	setAttr ".wt" 0.47172147035598755;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "E499905C-4ACC-7A2F-B3F7-8486693E7861";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1]" "e[3]" "e[5]" "e[7]" "e[9]" "e[11]" "e[13]" "e[15]" "e[410]" "e[422]" "e[447]";
	setAttr ".ix" -type "matrix" 4.3546127613917047 0 0 0 0 4.2620331849924602 -0.89315476357600554 0
		 0 0.89315476357600554 4.2620331849924602 0 0 3.3251669421253491 17.326718232012858 1;
	setAttr ".wt" 0.92594975233078003;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "B43576A5-487C-7AC7-FC49-D080342EE559";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[22]" "e[24]" "e[26]" "e[28]" "e[30]" "e[32]" "e[34]" "e[36]" "e[409]" "e[424]" "e[449]";
	setAttr ".ix" -type "matrix" 4.3546127613917047 0 0 0 0 4.2620331849924602 -0.89315476357600554 0
		 0 0.89315476357600554 4.2620331849924602 0 0 3.3251669421253491 17.326718232012858 1;
	setAttr ".wt" 0.55396121740341187;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "480652C6-4A1D-BD23-631A-DF8F8FE1364E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1]" "e[3]" "e[5]" "e[7]" "e[9]" "e[11]" "e[13]" "e[15]" "e[422]" "e[447]" "e[469]";
	setAttr ".ix" -type "matrix" 4.3546127613917047 0 0 0 0 4.2620331849924602 -0.89315476357600554 0
		 0 0.89315476357600554 4.2620331849924602 0 0 3.3251669421253491 17.326718232012858 1;
	setAttr ".wt" 0.92231309413909912;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "222B36A0-4036-B3ED-FAF0-BBA045B1D30E";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[14]" -type "float3" 0 -0.13938209 -0.029209012 ;
	setAttr ".tk[15]" -type "float3" 0 -0.13938209 -0.029209012 ;
	setAttr ".tk[229]" -type "float3" 0 -0.13938209 -0.029209012 ;
	setAttr ".tk[242]" -type "float3" 0 -0.13938209 -0.029209012 ;
	setAttr ".tk[249]" -type "float3" 0 -0.13938209 -0.029209012 ;
	setAttr ".tk[250]" -type "float3" 0 -0.13938209 -0.029209012 ;
	setAttr ".tk[251]" -type "float3" 0 -0.13938209 -0.029209012 ;
	setAttr ".tk[252]" -type "float3" 0 -0.13938209 -0.029209012 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
	setAttr -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".ta" 3;
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr -av ".aoam";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware2";
	setAttr ".outf" 8;
	setAttr ".ifp" -type "string" "volume-exp";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w" 1280;
	setAttr -av -k on ".h" 720;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1.7777777910232544;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "polySplitRing26.out" "pPlaneShape1.i";
connectAttr "polyColorPerVertex3.out" "pCubeShape2.i";
connectAttr "polyColorPerVertex2.out" "pCubeShape4.i";
connectAttr "deleteComponent6.og" "pCubeShape5.i";
connectAttr "polyColorPerVertex9.out" "pCubeShape8.i";
connectAttr "polyExtrudeFace21.out" "pCubeShape9.i";
connectAttr "polyColorPerVertex5.out" "pCubeShape14.i";
connectAttr "polyColorPerVertex8.out" "pCylinderShape1.i";
connectAttr "ShaderfxShader3SG.msg" "materialInfo3.sg";
connectAttr "SolidColor.msg" "materialInfo3.m";
connectAttr "SolidColor.oc" "ShaderfxShader3SG.ss";
connectAttr "ShaderfxShader2SG.msg" "materialInfo2.sg";
connectAttr "autogrid.msg" "materialInfo2.m";
connectAttr "autogrid.oc" "ShaderfxShader2SG.ss";
connectAttr "pPlaneShape1.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape2.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape4.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape5.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape6.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape7.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape8.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape9.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape10.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape11.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape12.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape13.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape14.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape15.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape16.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape17.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape18.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape19.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape20.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape21.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape22.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape23.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape24.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape25.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape26.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape27.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape28.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape29.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape30.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape31.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape32.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape33.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape34.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape35.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape36.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape37.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape38.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape39.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape40.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape41.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape42.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape43.iog" "ShaderfxShader2SG.dsm" -na;
connectAttr "pCubeShape44.iog" "ShaderfxShader2SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ShaderfxShader3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ShaderfxShader3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__pasted__ShaderfxShader2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPlane1.out" "polyColorPerVertex1.ip";
connectAttr "pasted__ShaderfxShader2SG.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__autogrid.msg" "pasted__materialInfo2.m";
connectAttr "pasted__autogrid.oc" "pasted__ShaderfxShader2SG.ss";
connectAttr "pasted__pasted__ShaderfxShader2SG.msg" "pasted__pasted__materialInfo2.sg"
		;
connectAttr "pasted__pasted__autogrid.msg" "pasted__pasted__materialInfo2.m";
connectAttr "pasted__pasted__autogrid.oc" "pasted__pasted__ShaderfxShader2SG.ss"
		;
connectAttr "pasted__pasted__pasted__ShaderfxShader2SG.msg" "pasted__pasted__pasted__materialInfo2.sg"
		;
connectAttr "pasted__pasted__pasted__autogrid.msg" "pasted__pasted__pasted__materialInfo2.m"
		;
connectAttr "pasted__pasted__pasted__autogrid.oc" "pasted__pasted__pasted__ShaderfxShader2SG.ss"
		;
connectAttr "pasted__pasted__pasted__pasted__ShaderfxShader2SG.msg" "pasted__pasted__pasted__pasted__materialInfo2.sg"
		;
connectAttr "pasted__pasted__pasted__pasted__autogrid.msg" "pasted__pasted__pasted__pasted__materialInfo2.m"
		;
connectAttr "pasted__pasted__pasted__pasted__autogrid.oc" "pasted__pasted__pasted__pasted__ShaderfxShader2SG.ss"
		;
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace5.out" "polySplitRing1.ip";
connectAttr "pCubeShape2.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape2.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace7.out" "polySplitRing3.ip";
connectAttr "pCubeShape2.wm" "polySplitRing3.mp";
connectAttr "polySurfaceShape2.o" "polySplitRing4.ip";
connectAttr "pCubeShape4.wm" "polySplitRing4.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace8.mp";
connectAttr "polySplitRing4.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyColorPerVertex2.ip";
connectAttr "polySplitRing3.out" "polyColorPerVertex3.ip";
connectAttr "polySurfaceShape3.o" "polyExtrudeFace11.ip";
connectAttr "pCubeShape9.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyColorPerVertex4.ip";
connectAttr "polyTweak6.out" "polySplitRing5.ip";
connectAttr "pCubeShape9.wm" "polySplitRing5.mp";
connectAttr "polyColorPerVertex4.out" "polyTweak6.ip";
connectAttr "polySurfaceShape4.o" "polySplitRing6.ip";
connectAttr "pCubeShape5.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape5.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polySplitRing8.ip";
connectAttr "pCubeShape5.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape5.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape5.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polySplitRing11.ip";
connectAttr "pCubeShape5.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape5.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape5.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape5.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCubeShape5.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "polySurfaceShape5.o" "polySplitRing16.ip";
connectAttr "pCubeShape14.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polyColorPerVertex5.ip";
connectAttr "polyTweak7.out" "polySplitRing17.ip";
connectAttr "pCubeShape9.wm" "polySplitRing17.mp";
connectAttr "polySplitRing5.out" "polyTweak7.ip";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape9.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCubeShape9.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "pCubeShape9.wm" "polySplitRing20.mp";
connectAttr "polySurfaceShape6.o" "polyExtrudeFace15.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak8.ip";
connectAttr "polyColorPerVertex1.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyExtrudeFace17.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyColorPerVertex6.ip";
connectAttr "polyColorPerVertex6.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyColorPerVertex7.ip";
connectAttr "polyCylinder1.out" "polyExtrudeFace18.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace18.out" "polyColorPerVertex8.ip";
connectAttr "polyExtrudeFace16.out" "polyColorPerVertex9.ip";
connectAttr "polySplitRing20.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape9.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polySplitRing21.ip";
connectAttr "pCubeShape9.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape9.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace20.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape9.wm" "polyExtrudeFace21.mp";
connectAttr "polyColorPerVertex7.out" "polySplitRing22.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing23.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing25.mp";
connectAttr "polyTweak11.out" "polySplitRing26.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing26.mp";
connectAttr "polySplitRing25.out" "polyTweak11.ip";
connectAttr "ShaderfxShader2SG.pa" ":renderPartition.st" -na;
connectAttr "ShaderfxShader3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__ShaderfxShader2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__ShaderfxShader2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__ShaderfxShader2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__ShaderfxShader2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "autogrid.msg" ":defaultShaderList1.s" -na;
connectAttr "SolidColor.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__autogrid.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__autogrid.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__autogrid.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__pasted__autogrid.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of week1-map.ma
