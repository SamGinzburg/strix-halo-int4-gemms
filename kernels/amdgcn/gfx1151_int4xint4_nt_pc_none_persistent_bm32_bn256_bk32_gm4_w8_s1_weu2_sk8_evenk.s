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
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_ashr_i32 s24, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s14, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s26, s14, s24
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s26
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph38
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 283 27 is_stmt 1              ; generate_amdgcn.py:283:27
	s_lshl_b32 s1, s3, 4
	v_lshlrev_b32_e32 v5, 1, v0
	v_bfe_i32 v6, v0, 6, 1
	v_bfe_u32 v8, v0, 4, 1
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s27, s14, 2
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v1, 7, v0
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v4, 0xfe, v0
	v_and_b32_e32 v9, 0x17e, v5
	v_and_or_b32 v5, v5, 30, v8
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v2, 1, v0
	v_bfe_i32 v7, v0, 3, 1
	v_lshlrev_b32_e32 v10, 4, v1
	v_lshlrev_b32_e32 v43, 2, v5
	v_and_b32_e32 v5, 16, v0
	v_xor_b32_e32 v6, v6, v9
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_and_b32_e32 v9, 0xf0, v0
	s_add_i32 s0, s15, s0
	v_lshlrev_b32_e32 v4, 2, v4
	s_ashr_i32 s3, s0, 1
	v_and_b32_e32 v3, 0x840, v3
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s3, 0x7f
	v_and_or_b32 v7, 0x88, v7, v10
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s16, s0, 31
	v_and_b32_e32 v10, 14, v0
	s_lshr_b32 s16, s16, 25
	v_lshlrev_b32_e32 v11, 5, v2
	s_add_i32 s0, s0, s16
	s_mov_b32 s16, s4
	s_ashr_i32 s22, s0, 7
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s15, -1, 0
	s_abs_i32 s39, s27
	v_cmp_eq_u32_e64 s0, 0, v5
	s_cvt_f32_u32 s6, s39
	v_lshlrev_b32_e32 v5, 2, v9
	v_xor_b32_e32 v3, v3, v4
	v_lshlrev_b32_e32 v4, 1, v10
	v_rcp_iflag_f32_e32 v31, s6
.Ltmp12:
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_and_b32_e32 v40, 15, v0
	v_add3_u32 v5, 0, v5, v11
	v_lshl_or_b32 v45, v10, 11, v3
	v_lshlrev_b32_e32 v3, 3, v9
	v_lshlrev_b32_e32 v10, 2, v10
	v_lshlrev_b32_e32 v11, 6, v2
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v41, 1, v0
	v_xor_b32_e32 v8, 8, v7
	v_lshlrev_b32_e32 v9, 1, v9
	v_readfirstlane_b32 s6, v31
	v_or3_b32 v46, v3, v11, v10
	v_xor_b32_e32 v12, 8, v45
	v_xor_b32_e32 v13, 16, v45
	v_xor_b32_e32 v14, 24, v45
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v3, 32, v45
	v_xor_b32_e32 v10, 40, v45
	v_xor_b32_e32 v11, 48, v45
	v_xor_b32_e32 v15, 56, v45
	v_xor_b32_e32 v16, 0x840, v46
	v_xor_b32_e32 v17, 0x1008, v46
	v_xor_b32_e32 v18, 0x1848, v46
	v_xor_b32_e32 v19, 0x2010, v46
	v_xor_b32_e32 v20, 0x2850, v46
	v_xor_b32_e32 v21, 0x3018, v46
	v_xor_b32_e32 v22, 0x3858, v46
	v_xor_b32_e32 v23, 0x4020, v46
	v_xor_b32_e32 v24, 0x4860, v46
	v_xor_b32_e32 v25, 0x5028, v46
	v_xor_b32_e32 v26, 0x5868, v46
	v_xor_b32_e32 v27, 0x6030, v46
	v_xor_b32_e32 v28, 0x6870, v46
	v_xor_b32_e32 v29, 0x7038, v46
	v_xor_b32_e32 v30, 0x7878, v46
	s_cvt_u32_f32 s6, s6
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_or_b32 v33, v1, 1, s1
	v_cndmask_b32_e64 v1, 0, 1, s15
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s39
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v39, 3, v0
	s_mul_i32 s7, s7, s6
	v_or_b32_e32 v42, 16, v40
	v_xor_b32_e32 v44, 4, v43
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_lshl_or_b32 v34, v2, 3, s1
	v_or_b32_e32 v47, 0x80, v41
	v_add_nc_u32_e32 v48, 0, v6
	v_add_nc_u32_e32 v49, 0, v7
	v_add_nc_u32_e32 v50, 0, v8
	v_add_nc_u32_e32 v51, v5, v4
	v_add_nc_u32_e32 v52, 0, v9
	v_add_nc_u32_e32 v53, 0, v12
	v_add_nc_u32_e32 v54, 0, v13
	v_add_nc_u32_e32 v55, 0, v14
	v_add_nc_u32_e32 v56, 0, v3
	v_add_nc_u32_e32 v57, 0, v10
	v_add_nc_u32_e32 v58, 0, v11
	v_add_nc_u32_e32 v59, 0, v15
	v_add_nc_u32_e32 v60, 0, v16
	v_add_nc_u32_e32 v61, 0, v17
	v_add_nc_u32_e32 v62, 0, v18
	v_add_nc_u32_e32 v63, 0, v19
	v_add_nc_u32_e32 v64, 0, v20
	v_add_nc_u32_e32 v65, 0, v21
	v_add_nc_u32_e32 v66, 0, v22
	v_add_nc_u32_e32 v67, 0, v23
	v_add_nc_u32_e32 v68, 0, v24
	v_add_nc_u32_e32 v69, 0, v25
	v_add_nc_u32_e32 v70, 0, v26
	v_add_nc_u32_e32 v71, 0, v27
	v_add_nc_u32_e32 v72, 0, v28
	v_add_nc_u32_e32 v73, 0, v29
	v_add_nc_u32_e32 v74, 0, v30
	v_cmp_ne_u32_e64 s1, 1, v1
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
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
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_max_i32 s60, s22, 1
	s_bfe_i32 s61, s14, 0x1001d
	s_add_i32 s62, s6, s7
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 297 26                        ; generate_amdgcn.py:297:26
	v_or_b32_e32 v18, s14, v40
	v_or_b32_e32 v19, s14, v42
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	v_lshl_or_b32 v88, s10, 8, v0
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s6, s14, s25
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_clause 0x1
	buffer_load_u16 v87, v18, s[8:11], 0 offen
	buffer_load_u16 v89, v19, s[8:11], 0 offen
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s25
	s_add_i32 s10, s6, s28
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v92, s6, v88, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s11, s6, s29
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v93, s7, v88, 2
	v_add_lshl_u32 v94, s10, v88, 2
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s63, s6, s33
	s_add_i32 s64, s6, s34
	s_add_i32 s65, s6, s35
	s_add_i32 s66, s6, s36
	s_add_i32 s67, s6, s37
	s_add_i32 s68, s6, s38
	s_add_i32 s69, s6, s40
	s_add_i32 s70, s6, s41
	s_add_i32 s71, s6, s42
	s_add_i32 s72, s6, s43
	s_add_i32 s73, s6, s44
	s_add_i32 s74, s6, s45
	s_add_i32 s75, s6, s46
	s_add_i32 s76, s6, s47
	s_add_i32 s77, s6, s48
	s_add_i32 s78, s6, s49
	s_add_i32 s79, s6, s50
	s_add_i32 s80, s6, s51
	s_add_i32 s81, s6, s52
	s_add_i32 s82, s6, s53
	s_add_i32 s83, s6, s54
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v95, s11, v88, 2
	v_add_lshl_u32 v98, s63, v88, 2
	v_add_lshl_u32 v99, s64, v88, 2
	v_add_lshl_u32 v100, s65, v88, 2
	v_add_lshl_u32 v101, s66, v88, 2
	v_add_lshl_u32 v102, s67, v88, 2
	v_add_lshl_u32 v103, s68, v88, 2
	v_add_lshl_u32 v104, s69, v88, 2
	v_add_lshl_u32 v105, s70, v88, 2
	v_add_lshl_u32 v106, s71, v88, 2
	v_add_lshl_u32 v107, s72, v88, 2
	v_add_lshl_u32 v108, s73, v88, 2
	v_add_lshl_u32 v109, s74, v88, 2
	v_add_lshl_u32 v110, s75, v88, 2
	v_add_lshl_u32 v111, s76, v88, 2
	v_add_lshl_u32 v112, s77, v88, 2
	v_add_lshl_u32 v113, s78, v88, 2
	v_add_lshl_u32 v114, s79, v88, 2
	v_add_lshl_u32 v115, s80, v88, 2
	v_add_lshl_u32 v116, s81, v88, 2
	v_add_lshl_u32 v117, s82, v88, 2
	v_add_lshl_u32 v118, s83, v88, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s84, s6, s55
	s_add_i32 s85, s6, s56
	s_add_i32 s86, s6, s57
	s_add_i32 s87, s6, s58
	s_add_i32 s88, s6, s59
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v89, 16, v89
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v17, 1, v88
	buffer_load_u16 v17, v17, s[20:23], 0 offen
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s22, s6, s30
	s_add_i32 s23, s6, s31
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v96, s22, v88, 2
	v_add_lshl_u32 v97, s23, v88, 2
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_cmp_lt_i32 s2, s26
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
	v_dual_mul_f32 v136, v19, v89 :: v_dual_mul_f32 v119, v17, v87
	v_mul_f32_e32 v126, v24, v87
	v_dual_mul_f32 v127, v25, v87 :: v_dual_mul_f32 v144, v27, v89
	v_dual_mul_f32 v129, v27, v87 :: v_dual_mul_f32 v142, v25, v89
	v_mul_f32_e32 v134, v17, v89
	v_dual_mul_f32 v121, v19, v87 :: v_dual_add_nc_u32 v90, 0, v45
	v_mul_f32_e32 v120, v18, v87
	v_mul_f32_e32 v124, v22, v87
	v_dual_mul_f32 v125, v23, v87 :: v_dual_mul_f32 v138, v21, v89
	v_dual_mul_f32 v128, v26, v87 :: v_dual_mul_f32 v137, v20, v89
	v_dual_mul_f32 v130, v28, v87 :: v_dual_mul_f32 v135, v18, v89
	v_dual_mul_f32 v131, v29, v87 :: v_dual_mul_f32 v148, v31, v89
	v_mul_f32_e32 v143, v26, v89
	v_dual_mul_f32 v122, v20, v87 :: v_dual_add_nc_u32 v91, 0, v46
	v_dual_mul_f32 v123, v21, v87 :: v_dual_mul_f32 v140, v23, v89
	v_dual_mul_f32 v145, v28, v89 :: v_dual_mul_f32 v132, v30, v87
	v_mul_f32_e32 v141, v24, v89
	v_dual_mul_f32 v133, v31, v87 :: v_dual_mul_f32 v146, v29, v89
	v_dual_mul_f32 v139, v22, v89 :: v_dual_mul_f32 v76, v129, v76
	v_dual_mul_f32 v87, v32, v87 :: v_dual_mul_f32 v78, v127, v78
	v_mul_f32_e32 v147, v30, v89
	v_dual_mul_f32 v89, v32, v89 :: v_dual_mul_f32 v18, v134, v16
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v17, v119, v86
	v_dual_mul_f32 v31, v126, v79 :: v_dual_mul_f32 v32, v141, v9
	v_mul_f32_e32 v79, v142, v8
	v_dual_mul_f32 v19, v120, v85 :: v_dual_mul_f32 v20, v135, v15
	v_dual_mul_f32 v21, v121, v84 :: v_dual_mul_f32 v22, v136, v14
	v_dual_mul_f32 v27, v124, v81 :: v_dual_mul_f32 v28, v139, v11
	v_dual_mul_f32 v29, v125, v80 :: v_dual_mul_f32 v30, v140, v10
	v_mul_f32_e32 v80, v128, v77
	v_mul_f32_e32 v84, v131, v38
	v_mul_f32_e32 v81, v143, v7
	v_mul_f32_e32 v77, v144, v6
	v_dual_mul_f32 v23, v122, v83 :: v_dual_mul_f32 v24, v137, v13
	v_dual_mul_f32 v25, v123, v82 :: v_dual_mul_f32 v26, v138, v12
	v_dual_mul_f32 v82, v130, v75 :: v_dual_mul_f32 v83, v145, v5
	v_mul_f32_e32 v85, v146, v4
	v_dual_mul_f32 v86, v133, v36 :: v_dual_mul_f32 v37, v132, v37
	v_mul_f32_e32 v38, v147, v3
	v_dual_mul_f32 v35, v87, v35 :: v_dual_mul_f32 v36, v89, v1
	v_mul_f32_e32 v87, v148, v2
	ds_store_2addr_stride64_b64 v90, v[17:18], v[78:79] offset1:2
	ds_store_2addr_stride64_b64 v53, v[19:20], v[80:81] offset1:2
	ds_store_2addr_stride64_b64 v54, v[21:22], v[76:77] offset1:2
	ds_store_2addr_stride64_b64 v55, v[23:24], v[82:83] offset1:2
	ds_store_2addr_stride64_b64 v56, v[25:26], v[84:85] offset1:2
	ds_store_2addr_stride64_b64 v57, v[27:28], v[37:38] offset1:2
	ds_store_2addr_stride64_b64 v58, v[29:30], v[86:87] offset1:2
	ds_store_2addr_stride64_b64 v59, v[31:32], v[35:36] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v91
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
	buffer_atomic_add_f32 v1, v92, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v3, v93, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v5, v94, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v7, v95, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v9, v96, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v11, v97, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v13, v98, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v15, v99, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v100, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v101, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v102, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v103, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v104, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v105, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v106, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v107, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v108, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v109, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v110, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v111, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v112, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v113, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v114, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v115, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v116, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v117, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v118, s[12:15], 0 offen
	v_add_lshl_u32 v35, s84, v88, 2
	v_add_lshl_u32 v36, s85, v88, 2
	v_add_lshl_u32 v37, s86, v88, 2
	v_add_lshl_u32 v38, s87, v88, 2
	v_add_lshl_u32 v1, s88, v88, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v35, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v36, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v37, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v38, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v1, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s7, s6, s62
	s_xor_b32 s10, s10, s61
	s_mul_i32 s11, s7, s39
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s14, s6, s39
	s_cmp_ge_u32 s6, s39
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s6, s14, s6
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s6, s39
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s11, s6, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s6, s6, s27
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s7, s24, s11
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s22, s2, s6
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s7, s14
	v_mov_b32_e32 v15, 0
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v16, s10
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v16
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v86, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s10
	s_mul_hi_u32 s6, s10, s15
	s_abs_i32 s15, s22
	s_add_i32 s10, s10, s6
	s_xor_b32 s6, s22, s14
	s_mul_hi_u32 s10, s15, s10
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s23, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s15, s15, s23
	s_add_i32 s23, s10, 1
	s_sub_i32 s63, s15, s7
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s15, s63, s15
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s7, s23, s10
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s7, s6
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s14, s10, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s22, s14
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s14, s14, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s14, s14, 5
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v4, s14, v39
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_lshl_b32 s7, s7, 8
	s_lshl_b32 s6, s6, 8
	v_or_b32_e32 v2, s7, v47
	v_or_b32_e32 v3, s7, v41
	v_mad_u64_u32 v[35:36], null, s3, v4, v[33:34]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s6, v2
	v_subrev_nc_u32_e32 v3, s6, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[36:37], null, s3, v2, v[34:35]
	v_mad_u64_u32 v[37:38], null, s3, v3, v[34:35]
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
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
	s_mov_b32 s11, s60
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 292 26 is_stmt 1              ; generate_amdgcn.py:292:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_clause 0x1
	buffer_load_b64 v[75:76], v37, s[4:7], 0 offen
	buffer_load_b64 v[77:78], v36, s[4:7], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_u16 v38, v35, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v35, 0x80, v35
	v_add_nc_u32_e32 v36, 0x80, v36
	v_add_nc_u32_e32 v37, 0x80, v37
	s_add_i32 s11, s11, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s11, 0
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v86, v43, v76
	ds_bpermute_b32 v84, v44, v75
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v48, v38
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	ds_bpermute_b32 v38, v43, v75
	ds_bpermute_b32 v89, v44, v76
	ds_bpermute_b32 v90, v43, v77
	ds_bpermute_b32 v91, v43, v78
	ds_bpermute_b32 v92, v44, v77
	ds_bpermute_b32 v93, v44, v78
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[75:78], v49 offset1:32
	ds_load_2addr_b64 v[79:82], v50 offset1:32
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	v_cndmask_b32_e64 v83, v84, v38, s0
	v_cndmask_b32_e64 v85, v38, v84, s0
	v_cndmask_b32_e64 v84, v89, v86, s0
	v_cndmask_b32_e64 v86, v86, v89, s0
	v_cndmask_b32_e64 v87, v92, v90, s0
	v_cndmask_b32_e64 v88, v93, v91, s0
	v_cndmask_b32_e64 v89, v90, v92, s0
	v_cndmask_b32_e64 v90, v91, v93, s0
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[75:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[77:78], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[81:82], v[25:32] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 296 19                        ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v86, v1
	v_cvt_f32_i32_e32 v85, v2
	v_cvt_f32_i32_e32 v84, v3
	v_cvt_f32_i32_e32 v83, v4
	v_cvt_f32_i32_e32 v82, v5
	v_cvt_f32_i32_e32 v81, v6
	v_cvt_f32_i32_e32 v80, v7
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v78, v9
	v_cvt_f32_i32_e32 v77, v10
	v_cvt_f32_i32_e32 v76, v11
	v_cvt_f32_i32_e32 v75, v12
	v_cvt_f32_i32_e32 v38, v13
	v_cvt_f32_i32_e32 v37, v14
	v_cvt_f32_i32_e32 v36, v15
	v_cvt_f32_i32_e32 v35, v16
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
.LBB0_7:                                ; %._crit_edge39
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp13:
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
		.amdhsa_next_free_sgpr 89
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
		.amdhsa_inst_pref_size 26
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
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_vgpr, 149
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.numbered_sgpr, 89
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3296
; TotalNumSgprs: 91
; NumVgprs: 149
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 91
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x5b:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
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
    .sgpr_count:     91
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     149
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
