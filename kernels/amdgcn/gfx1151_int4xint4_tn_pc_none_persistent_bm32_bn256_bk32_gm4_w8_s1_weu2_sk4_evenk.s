	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 222 0                         ; generate_amdgcn.py:222:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:231:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s25, 0xff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_lshr_b32 s7, s7, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s26, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s14, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 233 17 is_stmt 1              ; generate_amdgcn.py:233:17
	s_mul_i32 s27, s14, s26
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_ge_i32 s2, s27
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph36
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 234 24 is_stmt 1              ; generate_amdgcn.py:234:24
	s_lshl_b32 s1, s14, 2
	v_bfe_i32 v8, v0, 0, 1
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 239 14                        ; generate_amdgcn.py:239:14
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v1, 0xf0, v0
	v_and_b32_e32 v6, 14, v0
	v_and_b32_e32 v8, 0x840, v8
	v_and_b32_e32 v9, 0x3f8, v9
	v_and_b32_e32 v7, 1, v0
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_lshl_or_b32 v2, s3, 4, v2
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_and_b32_e32 v33, 15, v0
	v_lshrrev_b32_e32 v5, 1, v0
	v_xor_b32_e32 v8, v8, v9
	v_lshlrev_b32_e32 v11, 5, v7
	v_lshlrev_b32_e32 v9, 1, v6
	v_lshlrev_b32_e32 v7, 6, v7
	v_lshlrev_b32_e32 v10, 2, v1
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_lshl_or_b32 v36, v6, 11, v8
	s_add_i32 s0, s15, s0
	v_lshlrev_b32_e32 v8, 3, v1
	s_ashr_i32 s0, s0, 1
	v_lshlrev_b32_e32 v6, 2, v6
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:252:36 ]
	s_add_i32 s0, s0, 63
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_ashr_i32 s16, s0, 31
	v_lshlrev_b32_e32 v4, 4, v0
	s_lshr_b32 s16, s16, 26
	v_or3_b32 v37, v8, v7, v6
	s_add_i32 s0, s0, s16
	s_mov_b32 s16, s4
	s_ashr_i32 s0, s0, 6
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s6, -1, 0
	s_abs_i32 s40, s1
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_cvt_f32_u32 s7, s40
	s_sub_i32 s15, 0, s40
	v_add_nc_u32_e32 v35, 0, v33
	v_and_b32_e32 v5, 0x70, v5
	v_rcp_iflag_f32_e32 v30, s7
	v_add3_u32 v10, 0, v10, v11
	v_lshlrev_b32_e32 v1, 1, v1
	v_xor_b32_e32 v11, 8, v36
	v_xor_b32_e32 v12, 16, v36
	v_xor_b32_e32 v13, 24, v36
	v_xor_b32_e32 v6, 32, v36
	v_xor_b32_e32 v7, 40, v36
	v_xor_b32_e32 v8, 48, v36
	v_xor_b32_e32 v14, 56, v36
	v_readfirstlane_b32 s7, v30
.Ltmp12:
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	v_mul_lo_u32 v30, s25, v2
	v_mul_lo_u32 v2, s24, v2
	v_xor_b32_e32 v15, 0x840, v37
	v_xor_b32_e32 v16, 0x1008, v37
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_xor_b32_e32 v17, 0x1848, v37
	v_xor_b32_e32 v18, 0x2010, v37
	v_xor_b32_e32 v19, 0x2850, v37
	s_cvt_u32_f32 s7, s7
	v_xor_b32_e32 v20, 0x3018, v37
	v_xor_b32_e32 v21, 0x3858, v37
	v_xor_b32_e32 v22, 0x4020, v37
	v_xor_b32_e32 v23, 0x4860, v37
	v_xor_b32_e32 v24, 0x5028, v37
	v_xor_b32_e32 v25, 0x5868, v37
	v_xor_b32_e32 v26, 0x6030, v37
	v_xor_b32_e32 v27, 0x6870, v37
	v_xor_b32_e32 v28, 0x7038, v37
	v_xor_b32_e32 v29, 0x7878, v37
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v39, v33, 1, v2
	v_cndmask_b32_e64 v2, 0, 1, s6
	s_mul_i32 s15, s15, s7
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_max_i32 s59, s0, 1
	s_mul_hi_u32 s0, s7, s15
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_or_b32_e32 v34, 16, v33
	s_add_i32 s61, s7, s0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v38, v33, 4, v30
	v_add_nc_u32_e32 v40, 0, v3
	v_add_nc_u32_e32 v41, 0, v4
	v_add_nc_u32_e32 v42, v35, v5
	v_add_nc_u32_e32 v43, v10, v9
	v_add_nc_u32_e32 v44, 0, v1
	v_add_nc_u32_e32 v45, 0, v11
	v_add_nc_u32_e32 v46, 0, v12
	v_add_nc_u32_e32 v47, 0, v13
	v_add_nc_u32_e32 v48, 0, v6
	v_add_nc_u32_e32 v49, 0, v7
	v_add_nc_u32_e32 v50, 0, v8
	v_add_nc_u32_e32 v51, 0, v14
	v_add_nc_u32_e32 v52, 0, v15
	v_add_nc_u32_e32 v53, 0, v16
	v_add_nc_u32_e32 v54, 0, v17
	v_add_nc_u32_e32 v55, 0, v18
	v_add_nc_u32_e32 v56, 0, v19
	v_add_nc_u32_e32 v57, 0, v20
	v_add_nc_u32_e32 v58, 0, v21
	v_add_nc_u32_e32 v59, 0, v22
	v_add_nc_u32_e32 v60, 0, v23
	v_add_nc_u32_e32 v61, 0, v24
	v_add_nc_u32_e32 v62, 0, v25
	v_add_nc_u32_e32 v63, 0, v26
	v_add_nc_u32_e32 v64, 0, v27
	v_add_nc_u32_e32 v65, 0, v28
	v_add_nc_u32_e32 v66, 0, v29
	v_cmp_ne_u32_e64 s0, 1, v2
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
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
	s_mul_i32 s39, s25, 12
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
	s_mul_i32 s3, s25, 30
	s_mul_i32 s58, s25, 31
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s60, s14, 0x1001d
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s62, s25, 6
	s_lshl_b32 s24, s24, 6
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 268 26                        ; generate_amdgcn.py:268:26
	v_or_b32_e32 v18, s14, v33
	v_or_b32_e32 v19, s14, v34
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	v_lshl_or_b32 v84, s15, 8, v0
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s6, s14, s25
	.loc	1 305 13 is_stmt 0              ; generate_amdgcn.py:305:13
	s_mov_b32 s14, s18
	.loc	1 268 18 is_stmt 1              ; generate_amdgcn.py:268:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s7, s6, s25
	s_add_i32 s63, s6, s28
	.loc	1 305 13 is_stmt 0              ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v88, s6, v84, 2
	.loc	1 268 18 is_stmt 1              ; generate_amdgcn.py:268:18
	s_clause 0x1
	buffer_load_u16 v83, v18, s[20:23], 0 offen
	buffer_load_u16 v85, v19, s[20:23], 0 offen
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s64, s6, s29
	.loc	1 305 13 is_stmt 0              ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v89, s7, v84, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s65, s6, s30
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v90, s63, v84, 2
	s_mov_b32 s15, s19
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s66, s6, s31
	s_add_i32 s67, s6, s33
	s_add_i32 s68, s6, s34
	s_add_i32 s69, s6, s35
	s_add_i32 s70, s6, s36
	s_add_i32 s71, s6, s37
	s_add_i32 s72, s6, s38
	s_add_i32 s73, s6, s39
	s_add_i32 s74, s6, s41
	s_add_i32 s75, s6, s42
	s_add_i32 s76, s6, s43
	s_add_i32 s77, s6, s44
	s_add_i32 s78, s6, s45
	s_add_i32 s79, s6, s46
	s_add_i32 s80, s6, s47
	s_add_i32 s81, s6, s48
	s_add_i32 s82, s6, s49
	s_add_i32 s83, s6, s50
	s_add_i32 s84, s6, s51
	s_add_i32 s85, s6, s52
	s_add_i32 s86, s6, s53
	s_add_i32 s87, s6, s54
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v91, s64, v84, 2
	v_add_lshl_u32 v92, s65, v84, 2
	v_add_lshl_u32 v93, s66, v84, 2
	v_add_lshl_u32 v94, s67, v84, 2
	v_add_lshl_u32 v95, s68, v84, 2
	v_add_lshl_u32 v96, s69, v84, 2
	v_add_lshl_u32 v97, s70, v84, 2
	v_add_lshl_u32 v98, s71, v84, 2
	v_add_lshl_u32 v99, s72, v84, 2
	v_add_lshl_u32 v100, s73, v84, 2
	v_add_lshl_u32 v101, s74, v84, 2
	v_add_lshl_u32 v102, s75, v84, 2
	v_add_lshl_u32 v103, s76, v84, 2
	v_add_lshl_u32 v104, s77, v84, 2
	v_add_lshl_u32 v105, s78, v84, 2
	v_add_lshl_u32 v106, s79, v84, 2
	v_add_lshl_u32 v107, s80, v84, 2
	v_add_lshl_u32 v108, s81, v84, 2
	v_add_lshl_u32 v109, s82, v84, 2
	v_add_lshl_u32 v110, s83, v84, 2
	v_add_lshl_u32 v111, s84, v84, 2
	v_add_lshl_u32 v112, s85, v84, 2
	v_add_lshl_u32 v113, s86, v84, 2
	v_add_lshl_u32 v114, s87, v84, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s88, s6, s55
	s_add_i32 s89, s6, s56
	s_add_i32 s90, s6, s57
	s_add_i32 s91, s6, s3
	s_add_i32 s92, s6, s58
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s27
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v85, 16, v85
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	v_lshlrev_b32_e32 v17, 1, v84
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	ds_store_b32 v43, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v44
	ds_load_b128 v[21:24], v44 offset:16
	ds_load_b128 v[25:28], v44 offset:512
	ds_load_b128 v[29:32], v44 offset:528
	.loc	1 270 13 is_stmt 0              ; generate_amdgcn.py:270:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_dual_mul_f32 v132, v19, v85 :: v_dual_mul_f32 v115, v17, v83
	v_mul_f32_e32 v116, v18, v83
	v_mul_f32_e32 v122, v24, v83
	v_dual_mul_f32 v123, v25, v83 :: v_dual_mul_f32 v140, v27, v85
	v_dual_mul_f32 v125, v27, v83 :: v_dual_mul_f32 v138, v25, v85
	v_dual_mul_f32 v128, v30, v83 :: v_dual_mul_f32 v137, v24, v85
	v_mul_f32_e32 v130, v17, v85
	v_mul_f32_e32 v120, v22, v83
	v_dual_mul_f32 v121, v23, v83 :: v_dual_mul_f32 v134, v21, v85
	v_dual_mul_f32 v124, v26, v83 :: v_dual_mul_f32 v133, v20, v85
	v_dual_mul_f32 v126, v28, v83 :: v_dual_mul_f32 v131, v18, v85
	v_dual_mul_f32 v127, v29, v83 :: v_dual_mul_f32 v144, v31, v85
	v_dual_mul_f32 v139, v26, v85 :: v_dual_add_nc_u32 v86, 0, v36
	v_mul_f32_e32 v117, v19, v83
	v_dual_mul_f32 v118, v20, v83 :: v_dual_add_nc_u32 v87, 0, v37
	v_dual_mul_f32 v119, v21, v83 :: v_dual_mul_f32 v136, v23, v85
	v_mul_f32_e32 v141, v28, v85
	v_dual_mul_f32 v129, v31, v83 :: v_dual_mul_f32 v142, v29, v85
	v_dual_mul_f32 v135, v22, v85 :: v_dual_mul_f32 v72, v125, v72
	v_dual_mul_f32 v83, v32, v83 :: v_dual_mul_f32 v74, v123, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v143, v30, v85 :: v_dual_mul_f32 v68, v129, v68
	v_mul_f32_e32 v85, v32, v85
	.loc	1 270 13                        ; generate_amdgcn.py:270:13
	v_mul_f32_e32 v17, v115, v82
	v_dual_mul_f32 v19, v116, v81 :: v_dual_mul_f32 v18, v130, v16
	v_dual_mul_f32 v31, v122, v75 :: v_dual_mul_f32 v30, v136, v10
	v_dual_mul_f32 v32, v137, v9 :: v_dual_mul_f32 v75, v138, v8
	v_dual_mul_f32 v27, v120, v77 :: v_dual_mul_f32 v20, v131, v15
	v_dual_mul_f32 v29, v121, v76 :: v_dual_mul_f32 v28, v135, v11
	v_mul_f32_e32 v76, v124, v73
	v_mul_f32_e32 v70, v127, v70
	v_dual_mul_f32 v26, v134, v12 :: v_dual_mul_f32 v77, v139, v7
	v_dual_mul_f32 v21, v117, v80 :: v_dual_mul_f32 v80, v128, v69
	v_dual_mul_f32 v23, v118, v79 :: v_dual_mul_f32 v22, v132, v14
	v_mul_f32_e32 v73, v140, v6
	v_dual_mul_f32 v25, v119, v78 :: v_dual_mul_f32 v24, v133, v13
	v_dual_mul_f32 v78, v126, v71 :: v_dual_mul_f32 v79, v141, v5
	v_dual_mul_f32 v71, v142, v4 :: v_dual_mul_f32 v82, v83, v67
	v_mul_f32_e32 v81, v143, v3
	v_mul_f32_e32 v69, v144, v2
	v_mul_f32_e32 v83, v85, v1
	ds_store_2addr_stride64_b64 v86, v[17:18], v[74:75] offset1:2
	ds_store_2addr_stride64_b64 v45, v[19:20], v[76:77] offset1:2
	ds_store_2addr_stride64_b64 v46, v[21:22], v[72:73] offset1:2
	ds_store_2addr_stride64_b64 v47, v[23:24], v[78:79] offset1:2
	ds_store_2addr_stride64_b64 v48, v[25:26], v[70:71] offset1:2
	ds_store_2addr_stride64_b64 v49, v[27:28], v[80:81] offset1:2
	ds_store_2addr_stride64_b64 v50, v[29:30], v[68:69] offset1:2
	ds_store_2addr_stride64_b64 v51, v[31:32], v[82:83] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v87
	ds_load_b64 v[3:4], v52
	ds_load_b64 v[5:6], v53
	ds_load_b64 v[7:8], v54
	ds_load_b64 v[9:10], v55
	ds_load_b64 v[11:12], v56
	ds_load_b64 v[13:14], v57
	ds_load_b64 v[15:16], v58
	ds_load_b64 v[17:18], v59
	ds_load_b64 v[19:20], v60
	ds_load_b64 v[21:22], v61
	ds_load_b64 v[23:24], v62
	ds_load_b64 v[25:26], v63
	ds_load_b64 v[27:28], v64
	ds_load_b64 v[29:30], v65
	ds_load_b64 v[31:32], v66
	.loc	1 305 13 is_stmt 1              ; generate_amdgcn.py:305:13
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v88, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v3, v89, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v5, v90, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v7, v91, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v9, v92, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v11, v93, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v13, v94, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v15, v95, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v96, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v97, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v98, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v99, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v100, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v101, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v102, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v103, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v104, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v105, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v106, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v107, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v108, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v109, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v110, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v111, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v112, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v113, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v114, s[12:15], 0 offen
	v_add_lshl_u32 v67, s88, v84, 2
	v_add_lshl_u32 v68, s89, v84, 2
	v_add_lshl_u32 v69, s90, v84, 2
	v_add_lshl_u32 v70, s91, v84, 2
	v_add_lshl_u32 v1, s92, v84, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v67, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v68, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v69, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v70, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v1, s[12:15], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
	s_abs_i32 s6, s2
	s_ashr_i32 s14, s2, 31
	s_mul_hi_u32 s7, s6, s61
	s_xor_b32 s14, s14, s60
	s_mul_i32 s15, s7, s40
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s6, s6, s15
	s_add_i32 s15, s7, 1
	s_sub_i32 s63, s6, s40
	s_cmp_ge_u32 s6, s40
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s7, s15, s7
	s_cselect_b32 s6, s63, s6
	s_add_i32 s15, s7, 1
	s_cmp_ge_u32 s6, s40
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s6, s15, s7
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s6, s6, s14
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s6, s6, s14
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 243 23                        ; generate_amdgcn.py:243:23
	s_lshl_b32 s14, s6, 2
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s6, s6, s1
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s7, s26, s14
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s65, s2, s6
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s63, s7, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_abs_i32 s7, s63
	v_mov_b32_e32 v15, 0
	s_cvt_f32_u32 s15, s7
	s_sub_i32 s64, 0, s7
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v16, s15
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s15, v16
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v82, 0
	s_mul_f32 s15, s15, 0x4f7ffffe
	s_cvt_u32_f32 s15, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s64, s64, s15
	s_mul_hi_u32 s6, s15, s64
	s_abs_i32 s64, s65
	s_add_i32 s15, s15, s6
	s_xor_b32 s6, s65, s63
	s_mul_hi_u32 s15, s64, s15
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s66, s15, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s64, s64, s66
	s_add_i32 s66, s15, 1
	s_sub_i32 s67, s64, s7
	s_cmp_ge_u32 s64, s7
	s_cselect_b32 s15, s66, s15
	s_cselect_b32 s64, s67, s64
	s_add_i32 s66, s15, 1
	s_cmp_ge_u32 s64, s7
	s_cselect_b32 s7, s66, s15
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s15, s7, s6
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s63, s15, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s63, s65, s63
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s63, s63, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 247 18 is_stmt 1              ; generate_amdgcn.py:247:18
	s_lshl_b32 s14, s63, 5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v2, s7, 8, v38
	v_mov_b32_e32 v1, 0
	s_lshl_b32 s6, s6, 8
	v_add_nc_u32_e32 v67, s14, v39
	s_mov_b32 s63, s59
	v_subrev_nc_u32_e32 v68, s6, v2
	v_mov_b32_e32 v2, v1
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
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	buffer_load_u16 v73, v67, s[16:19], 0 offen
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	buffer_load_b128 v[69:72], v68, s[4:7], 0 offen
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v67, s24, v67
	v_add_nc_u32_e32 v68, s62, v68
	s_add_i32 s63, s63, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s63, 0
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v40, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 27                        ; generate_amdgcn.py:266:27
	ds_load_u8 v73, v35 offset:224
	ds_load_u8 v74, v35 offset:192
	ds_load_u8 v75, v35 offset:160
	ds_load_u8 v76, v35 offset:128
	ds_load_u8 v77, v35 offset:240
	ds_load_u8 v78, v35 offset:208
	ds_load_u8 v79, v35 offset:176
	ds_load_u8 v80, v35 offset:144
	ds_load_u8 v81, v35 offset:96
	ds_load_u8 v82, v35 offset:64
	ds_load_u8 v83, v35 offset:112
	ds_load_u8 v84, v35 offset:80
	ds_load_u8 v85, v35
	ds_load_u8 v86, v35 offset:16
	ds_load_u8 v87, v35 offset:32
	ds_load_u8 v88, v35 offset:48
	ds_load_u8 v89, v35 offset:352
	ds_load_u8 v90, v35 offset:320
	ds_load_u8 v91, v35 offset:288
	ds_load_u8 v92, v35 offset:256
	ds_load_u8 v93, v35 offset:368
	ds_load_u8 v94, v35 offset:336
	ds_load_u8 v95, v35 offset:304
	ds_load_u8 v96, v35 offset:272
	ds_load_u8 v97, v35 offset:480
	ds_load_u8 v98, v35 offset:448
	ds_load_u8 v99, v35 offset:416
	ds_load_u8 v100, v35 offset:384
	ds_load_u8 v101, v35 offset:496
	ds_load_u8 v102, v35 offset:464
	ds_load_u8 v103, v35 offset:432
	ds_load_u8 v104, v35 offset:400
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[69:72]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 27                        ; generate_amdgcn.py:266:27
	ds_load_u8 v69, v42 offset:1280
	ds_load_u8 v70, v42 offset:1024
	ds_load_u8 v71, v42 offset:1792
	ds_load_u8 v72, v42 offset:1536
	ds_load_u8 v105, v42 offset:1920
	ds_load_u8 v106, v42 offset:1664
	ds_load_u8 v107, v42 offset:1408
	ds_load_u8 v108, v42 offset:1152
	ds_load_u8 v109, v42 offset:256
	ds_load_u8 v110, v42
	ds_load_u8 v111, v42 offset:768
	ds_load_u8 v112, v42 offset:512
	ds_load_u8 v113, v42 offset:896
	ds_load_u8 v114, v42 offset:640
	ds_load_u8 v115, v42 offset:384
	ds_load_u8 v116, v42 offset:128
	ds_load_u8 v117, v42 offset:3328
	ds_load_u8 v118, v42 offset:3072
	ds_load_u8 v119, v42 offset:3840
	ds_load_u8 v120, v42 offset:3584
	ds_load_u8 v121, v42 offset:3968
	ds_load_u8 v122, v42 offset:3712
	ds_load_u8 v123, v42 offset:3456
	ds_load_u8 v124, v42 offset:3200
	ds_load_u8 v125, v42 offset:2304
	ds_load_u8 v126, v42 offset:2048
	ds_load_u8 v127, v42 offset:2816
	ds_load_u8 v128, v42 offset:2560
	ds_load_u8 v129, v42 offset:2944
	ds_load_u8 v130, v42 offset:2688
	ds_load_u8 v131, v42 offset:2432
	ds_load_u8 v132, v42 offset:2176
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v74, v82, v81, 0xc0c0004
	v_perm_b32 v76, v85, v87, 0xc0c0004
	v_perm_b32 v85, v92, v91, 0xc0c0004
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v82, v98, v97, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_perm_b32 v81, v100, v99, 0xc0c0004
	v_perm_b32 v78, v84, v83, 0xc0c0004
	v_perm_b32 v80, v86, v88, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v89, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v90, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v91, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v92, v112, v111, 0xc0c0004
	v_perm_b32 v97, v108, v107, 0xc0c0004
	v_perm_b32 v98, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v99, v116, v115, 0xc0c0004
	v_perm_b32 v100, v114, v113, 0xc0c0004
	v_perm_b32 v83, v104, v103, 0xc0c0004
	v_perm_b32 v84, v102, v101, 0xc0c0004
	v_perm_b32 v86, v96, v95, 0xc0c0004
	v_perm_b32 v88, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v95, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v128, v127, 0xc0c0004
	v_perm_b32 v101, v124, v123, 0xc0c0004
	v_perm_b32 v102, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v132, v131, 0xc0c0004
	v_perm_b32 v104, v130, v129, 0xc0c0004
	v_lshl_or_b32 v70, v73, 16, v75
	v_lshl_or_b32 v69, v74, 16, v76
	v_lshl_or_b32 v72, v82, 16, v81
	v_lshl_or_b32 v74, v77, 16, v79
	v_lshl_or_b32 v73, v78, 16, v80
	v_lshl_or_b32 v78, v90, 16, v89
	v_lshl_or_b32 v77, v92, 16, v91
	v_lshl_or_b32 v82, v98, 16, v97
	v_lshl_or_b32 v81, v100, 16, v99
	v_lshl_or_b32 v71, v87, 16, v85
	v_lshl_or_b32 v76, v84, 16, v83
	v_lshl_or_b32 v75, v88, 16, v86
	v_lshl_or_b32 v80, v94, 16, v93
	v_lshl_or_b32 v79, v96, 16, v95
	v_lshl_or_b32 v84, v102, 16, v101
	v_lshl_or_b32 v83, v104, 16, v103
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[73:74], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[71:72], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[75:76], v[25:32] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 267 19                        ; generate_amdgcn.py:267:19
	v_cvt_f32_i32_e32 v82, v1
	v_cvt_f32_i32_e32 v81, v2
	v_cvt_f32_i32_e32 v80, v3
	v_cvt_f32_i32_e32 v79, v4
	v_cvt_f32_i32_e32 v78, v5
	v_cvt_f32_i32_e32 v77, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v75, v8
	v_cvt_f32_i32_e32 v74, v9
	v_cvt_f32_i32_e32 v73, v10
	v_cvt_f32_i32_e32 v72, v11
	v_cvt_f32_i32_e32 v71, v12
	v_cvt_f32_i32_e32 v70, v13
	v_cvt_f32_i32_e32 v69, v14
	v_cvt_f32_i32_e32 v68, v15
	v_cvt_f32_i32_e32 v67, v16
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
.LBB0_7:                                ; %._crit_edge37
	.loc	1 222 1                         ; generate_amdgcn.py:222:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 93
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.num_vgpr, 145
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.numbered_sgpr, 93
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4132
; TotalNumSgprs: 95
; NumVgprs: 145
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 95
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	231                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	232                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	252                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     95
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     145
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
