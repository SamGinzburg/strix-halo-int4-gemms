	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk
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
	.loc	1 239 14 is_stmt 1              ; generate_amdgcn.py:239:14
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 234 24                        ; generate_amdgcn.py:234:24
	s_lshl_b32 s1, s14, 2
	.loc	1 254 27                        ; generate_amdgcn.py:254:27
	s_lshl_b32 s3, s3, 4
	v_bfe_i32 v7, v0, 0, 1
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 239 14                        ; generate_amdgcn.py:239:14
	v_and_b32_e32 v1, 0xf0, v0
	v_and_b32_e32 v6, 1, v0
	v_and_b32_e32 v10, 14, v0
	v_and_b32_e32 v7, 0x840, v7
	v_and_b32_e32 v8, 0x3f8, v8
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_and_b32_e32 v33, 15, v0
	v_lshlrev_b32_e32 v11, 5, v6
	v_lshlrev_b32_e32 v6, 6, v6
	v_lshrrev_b32_e32 v5, 1, v0
	v_xor_b32_e32 v7, v7, v8
	v_lshlrev_b32_e32 v8, 1, v10
	v_lshlrev_b32_e32 v9, 2, v1
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_lshlrev_b32_e32 v3, 1, v0
	s_add_i32 s0, s15, s0
	v_lshl_or_b32 v37, v10, 11, v7
	s_ashr_i32 s0, s0, 1
	v_lshlrev_b32_e32 v7, 3, v1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:252:36 ]
	s_add_i32 s17, s0, 0x7f
	v_sub_nc_u32_e32 v36, s0, v2
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_ashr_i32 s16, s17, 31
.Ltmp12:
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	v_or_b32_e32 v2, s3, v2
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:252:36 ]
	s_lshr_b32 s20, s16, 25
	s_mov_b32 s16, s4
	s_add_i32 s17, s17, s20
	s_mov_b32 s4, s6
	s_ashr_i32 s6, s17, 7
	s_cmp_gt_i32 s15, 1
	v_lshlrev_b32_e32 v10, 2, v10
	s_cselect_b32 s0, -1, 0
	s_abs_i32 s39, s1
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_cvt_f32_u32 s7, s39
	v_or3_b32 v38, v7, v6, v10
	v_lshlrev_b32_e32 v4, 4, v0
	v_add_nc_u32_e32 v35, 0, v33
	v_rcp_iflag_f32_e32 v30, s7
	v_and_b32_e32 v5, 0x70, v5
	v_add3_u32 v9, 0, v9, v11
	v_lshlrev_b32_e32 v1, 1, v1
	v_xor_b32_e32 v11, 8, v37
	v_xor_b32_e32 v12, 16, v37
	v_xor_b32_e32 v13, 24, v37
	v_xor_b32_e32 v6, 32, v37
	v_xor_b32_e32 v7, 40, v37
	v_xor_b32_e32 v10, 48, v37
	v_readfirstlane_b32 s7, v30
.Ltmp14:
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_mul_lo_u32 v30, s25, v2
	v_mul_lo_u32 v2, s24, v2
	v_xor_b32_e32 v14, 56, v37
	v_xor_b32_e32 v15, 0x840, v38
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_xor_b32_e32 v16, 0x1008, v38
	v_xor_b32_e32 v17, 0x1848, v38
	v_xor_b32_e32 v18, 0x2010, v38
	v_xor_b32_e32 v19, 0x2850, v38
	v_xor_b32_e32 v20, 0x3018, v38
	v_xor_b32_e32 v21, 0x3858, v38
	v_xor_b32_e32 v22, 0x4020, v38
	v_xor_b32_e32 v23, 0x4860, v38
	v_xor_b32_e32 v24, 0x5028, v38
	v_xor_b32_e32 v25, 0x5868, v38
	v_xor_b32_e32 v26, 0x6030, v38
	v_xor_b32_e32 v27, 0x6870, v38
	v_xor_b32_e32 v28, 0x7038, v38
	v_xor_b32_e32 v29, 0x7878, v38
	s_cvt_u32_f32 s7, s7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v40, v33, 1, v2
	v_cndmask_b32_e64 v2, 0, 1, s0
	s_mov_b32 s20, s10
	s_sub_i32 s10, 0, s39
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_or_b32_e32 v34, 16, v33
	s_mul_i32 s10, s10, s7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v39, v33, 4, v30
	v_add_nc_u32_e32 v41, 0, v3
	v_add_nc_u32_e32 v42, 0, v4
	v_add_nc_u32_e32 v43, v35, v5
	v_add_nc_u32_e32 v44, v9, v8
	v_add_nc_u32_e32 v45, 0, v1
	v_add_nc_u32_e32 v46, 0, v11
	v_add_nc_u32_e32 v47, 0, v12
	v_add_nc_u32_e32 v48, 0, v13
	v_add_nc_u32_e32 v49, 0, v6
	v_add_nc_u32_e32 v50, 0, v7
	v_add_nc_u32_e32 v51, 0, v10
	v_add_nc_u32_e32 v52, 0, v14
	v_add_nc_u32_e32 v53, 0, v15
	v_add_nc_u32_e32 v54, 0, v16
	v_add_nc_u32_e32 v55, 0, v17
	v_add_nc_u32_e32 v56, 0, v18
	v_add_nc_u32_e32 v57, 0, v19
	v_add_nc_u32_e32 v58, 0, v20
	v_add_nc_u32_e32 v59, 0, v21
	v_add_nc_u32_e32 v60, 0, v22
	v_add_nc_u32_e32 v61, 0, v23
	v_add_nc_u32_e32 v62, 0, v24
	v_add_nc_u32_e32 v63, 0, v25
	v_add_nc_u32_e32 v64, 0, v26
	v_add_nc_u32_e32 v65, 0, v27
	v_add_nc_u32_e32 v66, 0, v28
	v_add_nc_u32_e32 v67, 0, v29
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_max_i32 s60, s6, 1
	s_mul_hi_u32 s6, s7, s10
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
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
	s_add_i32 s62, s7, s6
	s_lshl_b32 s63, s25, 7
	s_lshl_b32 s24, s24, 7
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 268 26                        ; generate_amdgcn.py:268:26
	v_or_b32_e32 v18, s14, v33
	v_or_b32_e32 v19, s14, v34
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	v_lshl_or_b32 v85, s10, 8, v0
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s6, s14, s25
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	s_clause 0x1
	buffer_load_u16 v84, v18, s[8:11], 0 offen
	buffer_load_u16 v86, v19, s[8:11], 0 offen
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s7, s6, s25
	s_add_i32 s10, s6, s28
	.loc	1 305 13 is_stmt 0              ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v89, s6, v85, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s11, s6, s29
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v90, s7, v85, 2
	v_add_lshl_u32 v91, s10, v85, 2
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s64, s6, s33
	s_add_i32 s65, s6, s34
	s_add_i32 s66, s6, s35
	s_add_i32 s67, s6, s36
	s_add_i32 s68, s6, s37
	s_add_i32 s69, s6, s38
	s_add_i32 s70, s6, s40
	s_add_i32 s71, s6, s41
	s_add_i32 s72, s6, s42
	s_add_i32 s73, s6, s43
	s_add_i32 s74, s6, s44
	s_add_i32 s75, s6, s45
	s_add_i32 s76, s6, s46
	s_add_i32 s77, s6, s47
	s_add_i32 s78, s6, s48
	s_add_i32 s79, s6, s49
	s_add_i32 s80, s6, s50
	s_add_i32 s81, s6, s51
	s_add_i32 s82, s6, s52
	s_add_i32 s83, s6, s53
	s_add_i32 s84, s6, s54
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v92, s11, v85, 2
	v_add_lshl_u32 v95, s64, v85, 2
	v_add_lshl_u32 v96, s65, v85, 2
	v_add_lshl_u32 v97, s66, v85, 2
	v_add_lshl_u32 v98, s67, v85, 2
	v_add_lshl_u32 v99, s68, v85, 2
	v_add_lshl_u32 v100, s69, v85, 2
	v_add_lshl_u32 v101, s70, v85, 2
	v_add_lshl_u32 v102, s71, v85, 2
	v_add_lshl_u32 v103, s72, v85, 2
	v_add_lshl_u32 v104, s73, v85, 2
	v_add_lshl_u32 v105, s74, v85, 2
	v_add_lshl_u32 v106, s75, v85, 2
	v_add_lshl_u32 v107, s76, v85, 2
	v_add_lshl_u32 v108, s77, v85, 2
	v_add_lshl_u32 v109, s78, v85, 2
	v_add_lshl_u32 v110, s79, v85, 2
	v_add_lshl_u32 v111, s80, v85, 2
	v_add_lshl_u32 v112, s81, v85, 2
	v_add_lshl_u32 v113, s82, v85, 2
	v_add_lshl_u32 v114, s83, v85, 2
	v_add_lshl_u32 v115, s84, v85, 2
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s85, s6, s55
	s_add_i32 s86, s6, s56
	s_add_i32 s87, s6, s57
	s_add_i32 s88, s6, s58
	s_add_i32 s89, s6, s59
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	.loc	1 268 18                        ; generate_amdgcn.py:268:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v86, 16, v86
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	v_lshlrev_b32_e32 v17, 1, v85
	buffer_load_u16 v17, v17, s[20:23], 0 offen
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s22, s6, s30
	s_add_i32 s23, s6, s31
	.loc	1 305 13 is_stmt 0              ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v93, s22, v85, 2
	v_add_lshl_u32 v94, s23, v85, 2
	.loc	1 241 5 is_stmt 1               ; generate_amdgcn.py:241:5
	s_cmp_lt_i32 s2, s27
	.loc	1 269 18                        ; generate_amdgcn.py:269:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	ds_store_b32 v44, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v45
	ds_load_b128 v[21:24], v45 offset:16
	ds_load_b128 v[25:28], v45 offset:512
	ds_load_b128 v[29:32], v45 offset:528
	.loc	1 270 13 is_stmt 0              ; generate_amdgcn.py:270:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 270 20                        ; generate_amdgcn.py:270:20
	v_mul_f32_e32 v131, v17, v86
	v_mul_f32_e32 v116, v17, v84
	v_mul_f32_e32 v121, v22, v84
	v_dual_mul_f32 v123, v24, v84 :: v_dual_mul_f32 v132, v18, v86
	v_dual_mul_f32 v124, v25, v84 :: v_dual_mul_f32 v133, v19, v86
	v_dual_mul_f32 v126, v27, v84 :: v_dual_mul_f32 v135, v21, v86
	v_dual_mul_f32 v130, v31, v84 :: v_dual_mul_f32 v139, v25, v86
	v_dual_mul_f32 v120, v21, v84 :: v_dual_add_nc_u32 v87, 0, v37
	v_dual_mul_f32 v117, v18, v84 :: v_dual_add_nc_u32 v88, 0, v38
	v_mul_f32_e32 v122, v23, v84
	v_dual_mul_f32 v125, v26, v84 :: v_dual_mul_f32 v134, v20, v86
	v_dual_mul_f32 v127, v28, v84 :: v_dual_mul_f32 v136, v22, v86
	v_dual_mul_f32 v140, v26, v86 :: v_dual_mul_f32 v17, v116, v83
	v_mul_f32_e32 v118, v19, v84
	v_mul_f32_e32 v119, v20, v84
	v_dual_mul_f32 v128, v29, v84 :: v_dual_mul_f32 v137, v23, v86
	v_dual_mul_f32 v129, v30, v84 :: v_dual_mul_f32 v138, v24, v86
	v_dual_mul_f32 v84, v32, v84 :: v_dual_mul_f32 v141, v27, v86
	v_dual_mul_f32 v142, v28, v86 :: v_dual_mul_f32 v21, v118, v81
	v_dual_mul_f32 v143, v29, v86 :: v_dual_mul_f32 v18, v131, v16
	v_dual_mul_f32 v144, v30, v86 :: v_dual_mul_f32 v23, v119, v80
	v_dual_mul_f32 v145, v31, v86 :: v_dual_mul_f32 v20, v132, v15
	v_dual_mul_f32 v86, v32, v86 :: v_dual_mul_f32 v29, v122, v77
	.loc	1 270 13                        ; generate_amdgcn.py:270:13
	v_dual_mul_f32 v31, v123, v76 :: v_dual_mul_f32 v28, v136, v11
	v_dual_mul_f32 v75, v124, v75 :: v_dual_mul_f32 v30, v137, v10
	v_dual_mul_f32 v73, v126, v73 :: v_dual_mul_f32 v76, v139, v8
	v_dual_mul_f32 v19, v117, v82 :: v_dual_mul_f32 v24, v134, v13
	v_dual_mul_f32 v25, v120, v79 :: v_dual_mul_f32 v22, v133, v14
	v_dual_mul_f32 v27, v121, v78 :: v_dual_mul_f32 v26, v135, v12
	v_dual_mul_f32 v77, v125, v74 :: v_dual_mul_f32 v32, v138, v9
	v_dual_mul_f32 v79, v127, v72 :: v_dual_mul_f32 v78, v140, v7
	v_dual_mul_f32 v71, v128, v71 :: v_dual_mul_f32 v74, v141, v6
	v_dual_mul_f32 v81, v129, v70 :: v_dual_mul_f32 v80, v142, v5
	v_dual_mul_f32 v69, v130, v69 :: v_dual_mul_f32 v72, v143, v4
	v_dual_mul_f32 v83, v84, v68 :: v_dual_mul_f32 v70, v145, v2
	v_mul_f32_e32 v82, v144, v3
	v_mul_f32_e32 v84, v86, v1
	ds_store_2addr_stride64_b64 v87, v[17:18], v[75:76] offset1:2
	ds_store_2addr_stride64_b64 v46, v[19:20], v[77:78] offset1:2
	ds_store_2addr_stride64_b64 v47, v[21:22], v[73:74] offset1:2
	ds_store_2addr_stride64_b64 v48, v[23:24], v[79:80] offset1:2
	ds_store_2addr_stride64_b64 v49, v[25:26], v[71:72] offset1:2
	ds_store_2addr_stride64_b64 v50, v[27:28], v[81:82] offset1:2
	ds_store_2addr_stride64_b64 v51, v[29:30], v[69:70] offset1:2
	ds_store_2addr_stride64_b64 v52, v[31:32], v[83:84] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v88
	ds_load_b64 v[3:4], v53
	ds_load_b64 v[5:6], v54
	ds_load_b64 v[7:8], v55
	ds_load_b64 v[9:10], v56
	ds_load_b64 v[11:12], v57
	ds_load_b64 v[13:14], v58
	ds_load_b64 v[15:16], v59
	ds_load_b64 v[17:18], v60
	ds_load_b64 v[19:20], v61
	ds_load_b64 v[21:22], v62
	ds_load_b64 v[23:24], v63
	ds_load_b64 v[25:26], v64
	ds_load_b64 v[27:28], v65
	ds_load_b64 v[29:30], v66
	ds_load_b64 v[31:32], v67
	.loc	1 305 13 is_stmt 1              ; generate_amdgcn.py:305:13
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v89, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v3, v90, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v5, v91, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v7, v92, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v9, v93, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v11, v94, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v13, v95, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v15, v96, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v97, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v98, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v99, s[12:15], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v100, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v101, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v102, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v103, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v104, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v105, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v106, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v107, s[12:15], 0 offen
	buffer_atomic_add_f32 v8, v108, s[12:15], 0 offen
	buffer_atomic_add_f32 v10, v109, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v110, s[12:15], 0 offen
	buffer_atomic_add_f32 v14, v111, s[12:15], 0 offen
	buffer_atomic_add_f32 v16, v112, s[12:15], 0 offen
	buffer_atomic_add_f32 v18, v113, s[12:15], 0 offen
	buffer_atomic_add_f32 v20, v114, s[12:15], 0 offen
	buffer_atomic_add_f32 v22, v115, s[12:15], 0 offen
	v_add_lshl_u32 v68, s85, v85, 2
	v_add_lshl_u32 v69, s86, v85, 2
	v_add_lshl_u32 v70, s87, v85, 2
	v_add_lshl_u32 v71, s88, v85, 2
	v_add_lshl_u32 v1, s89, v85, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v68, s[12:15], 0 offen
	buffer_atomic_add_f32 v26, v69, s[12:15], 0 offen
	buffer_atomic_add_f32 v28, v70, s[12:15], 0 offen
	buffer_atomic_add_f32 v30, v71, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v1, s[12:15], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
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
	.loc	1 243 23                        ; generate_amdgcn.py:243:23
	s_lshl_b32 s11, s6, 2
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s6, s6, s1
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s7, s26, s11
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s22, s2, s6
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_abs_i32 s7, s14
	v_mov_b32_e32 v15, 0
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v16, s10
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v16
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
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
	s_sub_i32 s64, s15, s7
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s10, s23, s10
	s_cselect_b32 s15, s64, s15
	s_add_i32 s23, s10, 1
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s7, s23, s10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s7, s6
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s14, s10, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s22, s14
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s14, s14, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 247 18 is_stmt 1              ; generate_amdgcn.py:247:18
	s_lshl_b32 s14, s14, 5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v2, s7, 8, v39
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v68, s14, v40
	s_lshl_b32 s6, s6, 8
	s_mov_b32 s11, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v69, s6, v2
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
	s_mov_b32 s15, s60
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 255 27                        ; generate_amdgcn.py:255:27
	v_cmp_lt_i32_e32 vcc_lo, s11, v36
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s15, s15, -1
	s_addk_i32 s11, 0x80
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_cndmask_b32_e32 v70, 0x80000000, v68, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v68, s24, v68
	s_cmp_lg_u32 s15, 0
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	buffer_load_u16 v74, v70, s[16:19], 0 offen
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	v_cndmask_b32_e32 v70, 0x80000000, v69, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v69, s63, v69
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	buffer_load_b128 v[70:73], v70, s[4:7], 0 offen
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v41, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 27                        ; generate_amdgcn.py:266:27
	ds_load_u8 v74, v35 offset:224
	ds_load_u8 v75, v35 offset:192
	ds_load_u8 v76, v35 offset:160
	ds_load_u8 v77, v35 offset:128
	ds_load_u8 v78, v35 offset:240
	ds_load_u8 v79, v35 offset:208
	ds_load_u8 v80, v35 offset:176
	ds_load_u8 v81, v35 offset:144
	ds_load_u8 v82, v35 offset:96
	ds_load_u8 v83, v35 offset:64
	ds_load_u8 v84, v35 offset:112
	ds_load_u8 v85, v35 offset:80
	ds_load_u8 v86, v35
	ds_load_u8 v87, v35 offset:16
	ds_load_u8 v88, v35 offset:32
	ds_load_u8 v89, v35 offset:48
	ds_load_u8 v90, v35 offset:352
	ds_load_u8 v91, v35 offset:320
	ds_load_u8 v92, v35 offset:288
	ds_load_u8 v93, v35 offset:256
	ds_load_u8 v94, v35 offset:368
	ds_load_u8 v95, v35 offset:336
	ds_load_u8 v96, v35 offset:304
	ds_load_u8 v97, v35 offset:272
	ds_load_u8 v98, v35 offset:480
	ds_load_u8 v99, v35 offset:448
	ds_load_u8 v100, v35 offset:416
	ds_load_u8 v101, v35 offset:384
	ds_load_u8 v102, v35 offset:496
	ds_load_u8 v103, v35 offset:464
	ds_load_u8 v104, v35 offset:432
	ds_load_u8 v105, v35 offset:400
	.loc	1 265 26                        ; generate_amdgcn.py:265:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[70:73]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 266 27                        ; generate_amdgcn.py:266:27
	ds_load_u8 v72, v43 offset:1280
	ds_load_u8 v73, v43 offset:1024
	ds_load_u8 v106, v43 offset:1792
	ds_load_u8 v107, v43 offset:1536
	ds_load_u8 v108, v43 offset:1920
	ds_load_u8 v109, v43 offset:1664
	ds_load_u8 v110, v43 offset:1408
	ds_load_u8 v111, v43 offset:1152
	ds_load_u8 v112, v43 offset:256
	ds_load_u8 v113, v43
	ds_load_u8 v114, v43 offset:768
	ds_load_u8 v115, v43 offset:512
	ds_load_u8 v116, v43 offset:896
	ds_load_u8 v117, v43 offset:640
	ds_load_u8 v118, v43 offset:384
	ds_load_u8 v119, v43 offset:128
	ds_load_u8 v120, v43 offset:3328
	ds_load_u8 v121, v43 offset:3072
	ds_load_u8 v122, v43 offset:3840
	ds_load_u8 v123, v43 offset:3584
	ds_load_u8 v124, v43 offset:3968
	ds_load_u8 v125, v43 offset:3712
	ds_load_u8 v126, v43 offset:3456
	ds_load_u8 v127, v43 offset:3200
	ds_load_u8 v128, v43 offset:2304
	ds_load_u8 v129, v43 offset:2048
	ds_load_u8 v130, v43 offset:2816
	ds_load_u8 v131, v43 offset:2560
	ds_load_u8 v132, v43 offset:2944
	ds_load_u8 v133, v43 offset:2688
	ds_load_u8 v134, v43 offset:2432
	ds_load_u8 v135, v43 offset:2176
	v_perm_b32 v71, v75, v74, 0xc0c0004
	v_perm_b32 v74, v83, v82, 0xc0c0004
	v_perm_b32 v82, v93, v92, 0xc0c0004
	v_perm_b32 v83, v91, v90, 0xc0c0004
	v_perm_b32 v70, v77, v76, 0xc0c0004
	v_perm_b32 v75, v86, v88, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v79, v85, v84, 0xc0c0004
	v_perm_b32 v81, v87, v89, 0xc0c0004
	v_perm_b32 v86, v97, v96, 0xc0c0004
	v_perm_b32 v87, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v88, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v89, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v90, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v91, v115, v114, 0xc0c0004
	v_lshl_or_b32 v72, v83, 16, v82
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v82, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v83, v123, v122, 0xc0c0004
	v_perm_b32 v94, v111, v110, 0xc0c0004
	v_perm_b32 v95, v109, v108, 0xc0c0004
	v_perm_b32 v96, v119, v118, 0xc0c0004
	v_perm_b32 v97, v117, v116, 0xc0c0004
	v_perm_b32 v76, v101, v100, 0xc0c0004
	v_perm_b32 v77, v99, v98, 0xc0c0004
	v_perm_b32 v84, v105, v104, 0xc0c0004
	v_perm_b32 v85, v103, v102, 0xc0c0004
	v_lshl_or_b32 v71, v71, 16, v70
	v_lshl_or_b32 v70, v74, 16, v75
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v92, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v131, v130, 0xc0c0004
	v_perm_b32 v98, v127, v126, 0xc0c0004
	v_perm_b32 v99, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v135, v134, 0xc0c0004
	v_perm_b32 v101, v133, v132, 0xc0c0004
	v_lshl_or_b32 v75, v78, 16, v80
	v_lshl_or_b32 v74, v79, 16, v81
	v_lshl_or_b32 v79, v89, 16, v88
	v_lshl_or_b32 v78, v91, 16, v90
	v_lshl_or_b32 v81, v83, 16, v82
	v_lshl_or_b32 v83, v95, 16, v94
	v_lshl_or_b32 v82, v97, 16, v96
	v_lshl_or_b32 v73, v77, 16, v76
	v_lshl_or_b32 v77, v85, 16, v84
	v_lshl_or_b32 v76, v87, 16, v86
	v_lshl_or_b32 v80, v93, 16, v92
	v_lshl_or_b32 v85, v99, 16, v98
	v_lshl_or_b32 v84, v101, 16, v100
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[74:75], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[84:85], v[72:73], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[76:77], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[84:85], v[76:77], v[25:32] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 267 19                        ; generate_amdgcn.py:267:19
	v_cvt_f32_i32_e32 v83, v1
	v_cvt_f32_i32_e32 v82, v2
	v_cvt_f32_i32_e32 v81, v3
	v_cvt_f32_i32_e32 v80, v4
	v_cvt_f32_i32_e32 v79, v5
	v_cvt_f32_i32_e32 v78, v6
	v_cvt_f32_i32_e32 v77, v7
	v_cvt_f32_i32_e32 v76, v8
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v74, v10
	v_cvt_f32_i32_e32 v73, v11
	v_cvt_f32_i32_e32 v72, v12
	v_cvt_f32_i32_e32 v71, v13
	v_cvt_f32_i32_e32 v70, v14
	v_cvt_f32_i32_e32 v69, v15
	v_cvt_f32_i32_e32 v68, v16
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
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 90
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.num_vgpr, 146
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.numbered_sgpr, 90
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4144
; TotalNumSgprs: 92
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 92
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     92
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn256_bk32_gm4_w8_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
