	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s25, 0xff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s26, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s14, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s27, s14, s26
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s27
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph34
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 283 27 is_stmt 1              ; generate_amdgcn.py:283:27
	s_lshl_b32 s24, s3, 4
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s1, s14, 2
	v_lshlrev_b32_e32 v11, 2, v0
	v_bfe_i32 v12, v0, 0, 1
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v1, 7, v0
	v_and_b32_e32 v13, 0xf0, v0
	v_and_b32_e32 v14, 1, v0
	v_and_b32_e32 v11, 0x3f8, v11
	v_and_b32_e32 v12, 0x840, v12
	v_and_b32_e32 v16, 14, v0
	v_lshlrev_b32_e32 v2, 1, v0
	v_bfe_i32 v3, v0, 6, 1
	v_bfe_i32 v4, v0, 3, 1
	v_xor_b32_e32 v11, v12, v11
	v_lshlrev_b32_e32 v8, 4, v1
	v_lshlrev_b32_e32 v17, 5, v14
	v_lshlrev_b32_e32 v12, 1, v16
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_lshl_or_b32 v40, v16, 11, v11
	s_add_i32 s0, s15, s0
	v_lshlrev_b32_e32 v11, 3, v13
	s_ashr_i32 s3, s0, 1
	v_lshlrev_b32_e32 v16, 2, v16
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s3, 0x7f
	v_lshlrev_b32_e32 v14, 6, v14
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s16, s0, 31
.Ltmp12:
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_and_b32_e32 v38, 15, v0
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_lshr_b32 s16, s16, 25
	v_lshrrev_b32_e32 v7, 1, v0
	s_add_i32 s0, s0, s16
	s_mov_b32 s16, s4
	s_ashr_i32 s0, s0, 7
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s6, -1, 0
	s_abs_i32 s39, s1
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_cvt_f32_u32 s7, s39
	v_and_b32_e32 v2, 0x17e, v2
	v_and_b32_e32 v3, 0x88, v3
	v_and_or_b32 v4, 0x88, v4, v8
	v_rcp_iflag_f32_e32 v33, s7
	v_lshlrev_b32_e32 v15, 2, v13
	v_or3_b32 v41, v11, v14, v16
	v_or_b32_e32 v5, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_add_nc_u32_e32 v8, 0, v38
	v_xor_b32_e32 v2, v3, v2
	v_xor_b32_e32 v3, 8, v4
	v_or_b32_e32 v9, 0xb00, v0
	v_or_b32_e32 v10, 0xf00, v0
	v_readfirstlane_b32 s7, v33
	v_and_b32_e32 v7, 0x70, v7
	v_add3_u32 v15, 0, v15, v17
	v_lshlrev_b32_e32 v13, 1, v13
	v_xor_b32_e32 v17, 8, v40
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_xor_b32_e32 v18, 16, v40
	v_xor_b32_e32 v19, 24, v40
	v_xor_b32_e32 v11, 32, v40
	v_xor_b32_e32 v14, 40, v40
	v_xor_b32_e32 v16, 48, v40
	v_xor_b32_e32 v20, 56, v40
	v_xor_b32_e32 v21, 0x840, v41
	v_xor_b32_e32 v22, 0x1008, v41
	v_xor_b32_e32 v23, 0x1848, v41
	v_xor_b32_e32 v24, 0x2010, v41
	v_xor_b32_e32 v25, 0x2850, v41
	v_xor_b32_e32 v26, 0x3018, v41
	v_xor_b32_e32 v27, 0x3858, v41
	v_xor_b32_e32 v28, 0x4020, v41
	v_xor_b32_e32 v29, 0x4860, v41
	v_xor_b32_e32 v30, 0x5028, v41
	v_xor_b32_e32 v31, 0x5868, v41
	v_xor_b32_e32 v32, 0x6030, v41
	v_xor_b32_e32 v34, 0x6870, v41
	v_xor_b32_e32 v35, 0x7038, v41
	v_xor_b32_e32 v36, 0x7878, v41
	s_cvt_u32_f32 s7, s7
.Ltmp14:
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_or_b32 v33, v1, 1, s24
	v_cndmask_b32_e64 v1, 0, 1, s6
	s_mov_b32 s20, s10
	s_sub_i32 s10, 0, s39
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v37, 3, v0
	s_mul_i32 s10, s10, s7
	v_or_b32_e32 v39, 16, v38
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_max_i32 s60, s0, 1
	v_add_nc_u32_e32 v42, 0, v2
	v_add_nc_u32_e32 v43, 0, v4
	v_add_nc_u32_e32 v44, 0, v3
	v_add_nc_u32_e32 v45, 0, v0
	v_add_nc_u32_e32 v46, 0, v5
	v_add_nc_u32_e32 v47, 0, v6
	v_add_nc_u32_e32 v48, 0, v9
	v_add_nc_u32_e32 v49, 0, v10
	v_add_nc_u32_e32 v50, v8, v7
	v_add_nc_u32_e32 v51, v15, v12
	v_add_nc_u32_e32 v52, 0, v13
	v_add_nc_u32_e32 v53, 0, v17
	v_add_nc_u32_e32 v54, 0, v18
	v_add_nc_u32_e32 v55, 0, v19
	v_add_nc_u32_e32 v56, 0, v11
	v_add_nc_u32_e32 v57, 0, v14
	v_add_nc_u32_e32 v58, 0, v16
	v_add_nc_u32_e32 v59, 0, v20
	v_add_nc_u32_e32 v60, 0, v21
	v_add_nc_u32_e32 v61, 0, v22
	v_add_nc_u32_e32 v62, 0, v23
	v_add_nc_u32_e32 v63, 0, v24
	v_add_nc_u32_e32 v64, 0, v25
	v_add_nc_u32_e32 v65, 0, v26
	v_add_nc_u32_e32 v66, 0, v27
	v_add_nc_u32_e32 v67, 0, v28
	v_add_nc_u32_e32 v68, 0, v29
	v_add_nc_u32_e32 v69, 0, v30
	v_add_nc_u32_e32 v70, 0, v31
	v_add_nc_u32_e32 v71, 0, v32
	v_add_nc_u32_e32 v72, 0, v34
	v_add_nc_u32_e32 v73, 0, v35
	v_add_nc_u32_e32 v74, 0, v36
	v_cmp_ne_u32_e64 s0, 1, v1
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mul_hi_u32 s10, s7, s10
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	s_lshl_b32 s28, s25, 1
	s_mul_i32 s29, s25, 3
	s_lshl_b32 s30, s25, 2
	s_mul_i32 s31, s25, 5
	s_mul_i32 s33, s25, 6
	s_mul_i32 s34, s25, 7
	s_lshl_b32 s35, s25, 3
	s_mul_i32 s36, s25, 9
	s_mul_i32 s37, s25, 10
	s_mul_i32 s38, s25, 11
	s_mul_i32 s40, s25, 12
	s_mul_i32 s41, s25, 13
	s_mul_i32 s42, s25, 14
	s_mul_i32 s43, s25, 15
	s_lshl_b32 s44, s25, 4
	s_mul_i32 s45, s25, 17
	s_mul_i32 s46, s25, 18
	s_mul_i32 s47, s25, 19
	s_mul_i32 s48, s25, 20
	s_mul_i32 s49, s25, 21
	s_mul_i32 s50, s25, 22
	s_mul_i32 s51, s25, 23
	s_mul_i32 s52, s25, 24
	s_mul_i32 s53, s25, 25
	s_mul_i32 s54, s25, 26
	s_mul_i32 s55, s25, 27
	s_mul_i32 s56, s25, 28
	s_mul_i32 s57, s25, 29
	s_mul_i32 s58, s25, 30
	s_mul_i32 s59, s25, 31
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s61, s14, 0x1001d
	s_add_i32 s62, s7, s10
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 297 26                        ; generate_amdgcn.py:297:26
	v_or_b32_e32 v18, s14, v38
	v_or_b32_e32 v19, s14, v39
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	v_lshl_or_b32 v89, s15, 8, v0
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s6, s14, s25
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	s_mov_b32 s14, s18
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s25
	.loc	1 297 18 is_stmt 1              ; generate_amdgcn.py:297:18
	s_clause 0x1
	buffer_load_u16 v88, v18, s[8:11], 0 offen
	buffer_load_u16 v90, v19, s[8:11], 0 offen
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v93, s6, v89, 2
	v_add_lshl_u32 v94, s7, v89, 2
	.loc	1 334 27 is_stmt 0              ; generate_amdgcn.py:334:27
	s_add_i32 s63, s6, s30
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	s_mov_b32 s15, s19
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s64, s6, s31
	s_add_i32 s65, s6, s33
	s_add_i32 s66, s6, s34
	s_add_i32 s67, s6, s35
	s_add_i32 s68, s6, s36
	s_add_i32 s69, s6, s37
	s_add_i32 s70, s6, s38
	s_add_i32 s71, s6, s40
	s_add_i32 s72, s6, s41
	s_add_i32 s73, s6, s42
	s_add_i32 s74, s6, s43
	s_add_i32 s75, s6, s44
	s_add_i32 s76, s6, s45
	s_add_i32 s77, s6, s46
	s_add_i32 s78, s6, s47
	s_add_i32 s79, s6, s48
	s_add_i32 s80, s6, s49
	s_add_i32 s81, s6, s50
	s_add_i32 s82, s6, s51
	s_add_i32 s83, s6, s52
	s_add_i32 s84, s6, s53
	s_add_i32 s85, s6, s54
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v97, s63, v89, 2
	v_add_lshl_u32 v98, s64, v89, 2
	v_add_lshl_u32 v99, s65, v89, 2
	v_add_lshl_u32 v100, s66, v89, 2
	v_add_lshl_u32 v101, s67, v89, 2
	v_add_lshl_u32 v102, s68, v89, 2
	v_add_lshl_u32 v103, s69, v89, 2
	v_add_lshl_u32 v104, s70, v89, 2
	v_add_lshl_u32 v105, s71, v89, 2
	v_add_lshl_u32 v106, s72, v89, 2
	v_add_lshl_u32 v107, s73, v89, 2
	v_add_lshl_u32 v108, s74, v89, 2
	v_add_lshl_u32 v109, s75, v89, 2
	v_add_lshl_u32 v110, s76, v89, 2
	v_add_lshl_u32 v111, s77, v89, 2
	v_add_lshl_u32 v112, s78, v89, 2
	v_add_lshl_u32 v113, s79, v89, 2
	v_add_lshl_u32 v114, s80, v89, 2
	v_add_lshl_u32 v115, s81, v89, 2
	v_add_lshl_u32 v116, s82, v89, 2
	v_add_lshl_u32 v117, s83, v89, 2
	v_add_lshl_u32 v118, s84, v89, 2
	v_add_lshl_u32 v119, s85, v89, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s86, s6, s55
	s_add_i32 s87, s6, s56
	s_add_i32 s88, s6, s57
	s_add_i32 s89, s6, s58
	s_add_i32 s90, s6, s59
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v90, 16, v90
	v_lshlrev_b32_e32 v88, 16, v88
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v17, 1, v89
	buffer_load_u16 v17, v17, s[20:23], 0 offen
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s22, s6, s28
	s_add_i32 s23, s6, s29
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v95, s22, v89, 2
	v_add_lshl_u32 v96, s23, v89, 2
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_cmp_lt_i32 s2, s27
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	ds_store_b32 v51, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v52
	ds_load_b128 v[21:24], v52 offset:16
	ds_load_b128 v[25:28], v52 offset:512
	ds_load_b128 v[29:32], v52 offset:528
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v135, v17, v90 :: v_dual_add_nc_u32 v92, 0, v41
	v_mul_f32_e32 v121, v18, v88
	v_mul_f32_e32 v120, v17, v88
	v_mul_f32_e32 v125, v22, v88
	v_dual_mul_f32 v127, v24, v88 :: v_dual_mul_f32 v140, v22, v90
	v_dual_mul_f32 v128, v25, v88 :: v_dual_mul_f32 v137, v19, v90
	v_dual_mul_f32 v130, v27, v88 :: v_dual_mul_f32 v143, v25, v90
	v_dual_mul_f32 v136, v18, v90 :: v_dual_add_nc_u32 v91, 0, v40
	v_mul_f32_e32 v124, v21, v88
	v_dual_mul_f32 v126, v23, v88 :: v_dual_mul_f32 v139, v21, v90
	v_dual_mul_f32 v129, v26, v88 :: v_dual_mul_f32 v138, v20, v90
	v_dual_mul_f32 v131, v28, v88 :: v_dual_mul_f32 v144, v26, v90
	v_mul_f32_e32 v122, v19, v88
	v_mul_f32_e32 v123, v20, v88
	v_dual_mul_f32 v132, v29, v88 :: v_dual_mul_f32 v141, v23, v90
	v_dual_mul_f32 v133, v30, v88 :: v_dual_mul_f32 v142, v24, v90
	v_dual_mul_f32 v134, v31, v88 :: v_dual_mul_f32 v147, v29, v90
	v_dual_mul_f32 v88, v32, v88 :: v_dual_mul_f32 v145, v27, v90
	v_dual_mul_f32 v146, v28, v90 :: v_dual_mul_f32 v21, v122, v85
	v_dual_mul_f32 v148, v30, v90 :: v_dual_mul_f32 v17, v120, v87
	v_dual_mul_f32 v149, v31, v90 :: v_dual_mul_f32 v20, v136, v15
	v_dual_mul_f32 v90, v32, v90 :: v_dual_mul_f32 v23, v123, v84
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v19, v121, v86 :: v_dual_mul_f32 v18, v135, v16
	v_dual_mul_f32 v31, v127, v80 :: v_dual_mul_f32 v28, v140, v11
	v_dual_mul_f32 v79, v128, v79 :: v_dual_mul_f32 v30, v141, v10
	v_dual_mul_f32 v77, v130, v77 :: v_dual_mul_f32 v80, v143, v8
	v_dual_mul_f32 v25, v124, v83 :: v_dual_mul_f32 v22, v137, v14
	v_dual_mul_f32 v27, v125, v82 :: v_dual_mul_f32 v24, v138, v13
	v_dual_mul_f32 v29, v126, v81 :: v_dual_mul_f32 v26, v139, v12
	v_dual_mul_f32 v81, v129, v78 :: v_dual_mul_f32 v32, v142, v9
	v_dual_mul_f32 v83, v131, v76 :: v_dual_mul_f32 v82, v144, v7
	v_dual_mul_f32 v75, v132, v75 :: v_dual_mul_f32 v78, v145, v6
	v_dual_mul_f32 v85, v133, v36 :: v_dual_mul_f32 v84, v146, v5
	v_dual_mul_f32 v35, v134, v35 :: v_dual_mul_f32 v76, v147, v4
	v_dual_mul_f32 v87, v88, v34 :: v_dual_mul_f32 v88, v90, v1
	v_mul_f32_e32 v86, v148, v3
	v_mul_f32_e32 v36, v149, v2
	ds_store_2addr_stride64_b64 v91, v[17:18], v[79:80] offset1:2
	ds_store_2addr_stride64_b64 v53, v[19:20], v[81:82] offset1:2
	ds_store_2addr_stride64_b64 v54, v[21:22], v[77:78] offset1:2
	ds_store_2addr_stride64_b64 v55, v[23:24], v[83:84] offset1:2
	ds_store_2addr_stride64_b64 v56, v[25:26], v[75:76] offset1:2
	ds_store_2addr_stride64_b64 v57, v[27:28], v[85:86] offset1:2
	ds_store_2addr_stride64_b64 v58, v[29:30], v[35:36] offset1:2
	ds_store_2addr_stride64_b64 v59, v[31:32], v[87:88] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v92
	ds_load_b64 v[3:4], v60
	ds_load_b64 v[5:6], v61
	ds_load_b64 v[7:8], v62
	ds_load_b64 v[9:10], v63
	ds_load_b64 v[11:12], v64
	ds_load_b64 v[13:14], v65
	ds_load_b64 v[15:16], v66
	ds_load_b64 v[17:18], v67
	ds_load_b64 v[19:20], v68
	ds_load_b64 v[21:22], v69
	ds_load_b64 v[23:24], v70
	ds_load_b64 v[25:26], v71
	ds_load_b64 v[27:28], v72
	ds_load_b64 v[29:30], v73
	ds_load_b64 v[31:32], v74
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v93, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v3, v94, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v5, v95, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v7, v96, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v9, v97, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v11, v98, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v13, v99, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v15, v100, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v101, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v102, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v103, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v104, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v105, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v106, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v107, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v108, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v109, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v110, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v111, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v112, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v113, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v114, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v115, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v116, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v117, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v118, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v119, s[12:15], 0 offen
	v_add_lshl_u32 v34, s86, v89, 2
	v_add_lshl_u32 v35, s87, v89, 2
	v_add_lshl_u32 v36, s88, v89, 2
	v_add_lshl_u32 v75, s89, v89, 2
	v_add_lshl_u32 v1, s90, v89, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v34, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v35, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v36, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v75, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v1, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s14, s2, 31
	s_mul_hi_u32 s7, s6, s62
	s_xor_b32 s14, s14, s61
	s_mul_i32 s15, s7, s39
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s6, s6, s15
	s_add_i32 s15, s7, 1
	s_sub_i32 s22, s6, s39
	s_cmp_ge_u32 s6, s39
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s7, s15, s7
	s_cselect_b32 s6, s22, s6
	s_add_i32 s15, s7, 1
	s_cmp_ge_u32 s6, s39
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s6, s15, s7
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s6, s6, s14
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s6, s6, s14
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s14, s6, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s6, s6, s1
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s7, s26, s14
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s63, s2, s6
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s22, s7, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s7, s22
	v_mov_b32_e32 v15, 0
	s_cvt_f32_u32 s15, s7
	s_sub_i32 s23, 0, s7
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v16, s15
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s15, v16
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	s_mul_f32 s15, s15, 0x4f7ffffe
	s_cvt_u32_f32 s15, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s23, s23, s15
	s_mul_hi_u32 s6, s15, s23
	s_abs_i32 s23, s63
	s_add_i32 s15, s15, s6
	s_xor_b32 s6, s63, s22
	s_mul_hi_u32 s15, s23, s15
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s64, s15, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s23, s23, s64
	s_add_i32 s64, s15, 1
	s_sub_i32 s65, s23, s7
	s_cmp_ge_u32 s23, s7
	s_cselect_b32 s15, s64, s15
	s_cselect_b32 s23, s65, s23
	s_add_i32 s64, s15, 1
	s_cmp_ge_u32 s23, s7
	s_cselect_b32 s7, s64, s15
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s15, s7, s6
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s22, s15, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s22, s63, s22
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s22, s22, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s14, s22, 5
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v2, s7, 8, v0
	s_lshl_b32 s6, s6, 8
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s14, v37
	s_mov_b32 s22, s60
	v_subrev_nc_u32_e32 v4, s6, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v2, v1
	v_mad_u64_u32 v[34:35], null, s3, v3, v[33:34]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[35:36], null, s3, v4, s[24:25]
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	buffer_load_b128 v[75:78], v35, s[4:7], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_u16 v36, v34, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v34, 0x80, v34
	v_add_nc_u32_e32 v35, 0x80, v35
	s_add_i32 s22, s22, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s22, 0
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v87, 24, v75
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v42, v36
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	v_lshrrev_b32_e32 v36, 8, v75
	v_lshrrev_b32_e32 v88, 8, v76
	v_lshrrev_b32_e32 v89, 24, v76
	v_lshrrev_b32_e32 v90, 8, v77
	v_lshrrev_b32_e32 v91, 24, v77
	v_lshrrev_b32_e32 v92, 8, v78
	v_lshrrev_b32_e32 v93, 24, v78
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[79:82], v43 offset1:32
	ds_load_2addr_b64 v[83:86], v44 offset1:32
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v45, v77 offset:2560
	ds_store_b8 v45, v78 offset:3072
	ds_store_b8 v45, v75
	ds_store_b8 v45, v36 offset:256
	ds_store_b8_d16_hi v45, v75 offset:512
	ds_store_b8 v45, v76 offset:1024
	ds_store_b8 v45, v88 offset:1280
	ds_store_b8_d16_hi v45, v76 offset:1536
	ds_store_b8 v45, v77 offset:2048
	ds_store_b8 v45, v90 offset:2304
	ds_store_b8 v45, v92 offset:3328
	ds_store_b8 v46, v87
	ds_store_b8 v47, v89
	ds_store_b8 v48, v91
	ds_store_b8_d16_hi v45, v78 offset:3584
	ds_store_b8 v49, v93
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v36, v50 offset:3328
	ds_load_u8 v75, v50 offset:3072
	ds_load_u8 v76, v50 offset:3840
	ds_load_u8 v77, v50 offset:3584
	ds_load_u8 v78, v50 offset:2304
	ds_load_u8 v87, v50 offset:2048
	ds_load_u8 v88, v50 offset:2816
	ds_load_u8 v89, v50 offset:2560
	ds_load_u8 v90, v50 offset:1280
	ds_load_u8 v91, v50 offset:1024
	ds_load_u8 v92, v50 offset:1792
	ds_load_u8 v93, v50 offset:1536
	ds_load_u8 v94, v50 offset:1920
	ds_load_u8 v95, v50 offset:1664
	ds_load_u8 v96, v50 offset:1408
	ds_load_u8 v97, v50 offset:1152
	ds_load_u8 v98, v50 offset:256
	ds_load_u8 v99, v50
	ds_load_u8 v100, v50 offset:768
	ds_load_u8 v101, v50 offset:512
	ds_load_u8 v102, v50 offset:896
	ds_load_u8 v103, v50 offset:640
	ds_load_u8 v104, v50 offset:384
	ds_load_u8 v105, v50 offset:128
	ds_load_u8 v106, v50 offset:3968
	ds_load_u8 v107, v50 offset:3712
	ds_load_u8 v108, v50 offset:3456
	ds_load_u8 v109, v50 offset:3200
	ds_load_u8 v110, v50 offset:2944
	ds_load_u8 v111, v50 offset:2688
	ds_load_u8 v112, v50 offset:2432
	ds_load_u8 v113, v50 offset:2176
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v91, v93, v92, 0xc0c0004
	v_perm_b32 v89, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v88, v95, v94, 0xc0c0004
	v_perm_b32 v36, v75, v36, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v99, v98, 0xc0c0004
	v_perm_b32 v98, v87, v78, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v93, v101, v100, 0xc0c0004
	v_perm_b32 v87, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v95, v103, v102, 0xc0c0004
	v_perm_b32 v77, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v105, v104, 0xc0c0004
	v_lshl_or_b32 v76, v91, 16, v90
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v107, v106, 0xc0c0004
	v_lshl_or_b32 v75, v93, 16, v92
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v109, v108, 0xc0c0004
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v111, v110, 0xc0c0004
	v_lshl_or_b32 v87, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v113, v112, 0xc0c0004
	v_lshl_or_b32 v78, v77, 16, v36
	v_lshl_or_b32 v77, v89, 16, v98
	v_lshl_or_b32 v90, v97, 16, v96
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v100, 16, v99
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[83:84], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[85:86], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[85:86], v[25:32] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 296 19                        ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v87, v1
	v_cvt_f32_i32_e32 v86, v2
	v_cvt_f32_i32_e32 v85, v3
	v_cvt_f32_i32_e32 v84, v4
	v_cvt_f32_i32_e32 v83, v5
	v_cvt_f32_i32_e32 v82, v6
	v_cvt_f32_i32_e32 v81, v7
	v_cvt_f32_i32_e32 v80, v8
	v_cvt_f32_i32_e32 v79, v9
	v_cvt_f32_i32_e32 v78, v10
	v_cvt_f32_i32_e32 v77, v11
	v_cvt_f32_i32_e32 v76, v12
	v_cvt_f32_i32_e32 v75, v13
	v_cvt_f32_i32_e32 v36, v14
	v_cvt_f32_i32_e32 v35, v15
	v_cvt_f32_i32_e32 v34, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge35
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 91
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 31
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_vgpr, 150
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.numbered_sgpr, 91
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3884
; TotalNumSgprs: 93
; NumVgprs: 150
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 93
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	261                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	281                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     93
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     150
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
