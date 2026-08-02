	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
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
	s_add_i32 s4, s24, 15
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
	s_lshr_b32 s6, s6, 28
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
	s_ashr_i32 s26, s4, 4
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
; %bb.1:                                ; %.lr.ph3
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 283 27 is_stmt 1              ; generate_amdgcn.py:283:27
	s_lshl_b32 s24, s3, 4
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s1, s14, 2
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v1, 0xf0, v0
	v_lshlrev_b32_e32 v4, 4, v0
	v_bfe_i32 v5, v0, 3, 1
	v_and_b32_e32 v8, 7, v0
	v_lshlrev_b32_e32 v13, 1, v0
	v_lshlrev_b32_e32 v23, 1, v1
	v_and_b32_e32 v4, 0x70, v4
	v_lshlrev_b32_e32 v14, 5, v0
	v_bfe_i32 v3, v0, 7, 1
	v_lshlrev_b32_e32 v1, 2, v1
	v_lshl_or_b32 v10, v8, 2, v23
	v_and_or_b32 v4, 0x88, v5, v4
	v_and_b32_e32 v5, 0x2040, v5
	v_and_b32_e32 v13, 28, v13
	v_and_b32_e32 v14, 32, v14
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v22, 15, v0
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s0, s15, s0
	v_xor_b32_e32 v5, v10, v5
	s_ashr_i32 s3, s0, 1
	v_and_b32_e32 v2, 0x7f, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s3, 0x7f
	v_and_b32_e32 v3, 0x88, v3
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s16, s0, 31
	v_lshrrev_b32_e32 v10, 1, v0
	s_lshr_b32 s16, s16, 25
	v_lshl_or_b32 v24, v8, 10, v5
	s_add_i32 s0, s0, s16
	s_mov_b32 s16, s4
	s_ashr_i32 s0, s0, 7
	s_cmp_gt_i32 s15, 1
	s_mov_b32 s4, s6
	s_cselect_b32 s6, -1, 0
	s_abs_i32 s28, s1
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_cvt_f32_u32 s7, s28
	v_or3_b32 v25, v1, v14, v13
	s_sub_i32 s15, 0, s28
	v_or_b32_e32 v6, 0x300, v0
	v_rcp_iflag_f32_e32 v17, s7
	v_or_b32_e32 v7, 0x700, v0
	v_add_nc_u32_e32 v9, 0, v22
	v_xor_b32_e32 v2, v3, v2
	v_xor_b32_e32 v3, 8, v4
	v_or_b32_e32 v11, 0xb00, v0
	v_or_b32_e32 v12, 0xf00, v0
	v_and_b32_e32 v5, 0x70, v10
	v_xor_b32_e32 v1, 4, v24
	v_xor_b32_e32 v8, 8, v24
	v_readfirstlane_b32 s7, v17
	v_xor_b32_e32 v10, 12, v24
	v_xor_b32_e32 v13, 16, v24
	v_xor_b32_e32 v14, 20, v24
	v_xor_b32_e32 v15, 24, v24
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_xor_b32_e32 v16, 28, v24
	v_xor_b32_e32 v18, 0x404, v25
	v_xor_b32_e32 v19, 0x808, v25
	s_cvt_u32_f32 s7, s7
	v_xor_b32_e32 v20, 0xc0c, v25
	v_xor_b32_e32 v45, 0x1010, v25
	v_xor_b32_e32 v46, 0x1414, v25
	v_xor_b32_e32 v47, 0x1818, v25
	v_xor_b32_e32 v48, 0x1c1c, v25
	v_xor_b32_e32 v49, 0x2040, v25
	v_xor_b32_e32 v50, 0x2444, v25
	v_xor_b32_e32 v51, 0x2848, v25
	v_xor_b32_e32 v52, 0x2c4c, v25
	v_xor_b32_e32 v53, 0x3050, v25
	v_xor_b32_e32 v54, 0x3454, v25
	v_xor_b32_e32 v55, 0x3858, v25
	v_xor_b32_e32 v56, 0x3c5c, v25
	v_cndmask_b32_e64 v26, 0, 1, s6
	s_mul_i32 s15, s15, s7
.Ltmp12:
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_max_i32 s44, s0, 1
	s_mul_hi_u32 s0, s7, s15
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshrrev_b32_e32 v21, 4, v0
	s_add_i32 s46, s7, s0
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_or_b32_e32 v17, s24, v22
	v_cmp_ne_u32_e64 s0, 1, v26
	v_add_nc_u32_e32 v26, 0, v2
	v_add_nc_u32_e32 v27, 0, v4
	v_add_nc_u32_e32 v28, 0, v3
	v_add_nc_u32_e32 v29, 0, v0
	v_add_nc_u32_e32 v30, 0, v6
	v_add_nc_u32_e32 v31, 0, v7
	v_add_nc_u32_e32 v32, 0, v11
	v_add_nc_u32_e32 v33, 0, v12
	v_add_nc_u32_e32 v34, v9, v5
	v_add_nc_u32_e32 v35, 0, v1
	v_add_nc_u32_e32 v36, 0, v8
	v_add_nc_u32_e32 v37, 0, v10
	v_add_nc_u32_e32 v38, 0, v13
	v_add_nc_u32_e32 v39, 0, v14
	v_add_nc_u32_e32 v40, 0, v15
	v_add_nc_u32_e32 v41, 0, v16
	v_add_nc_u32_e32 v42, 0, v18
	v_add_nc_u32_e32 v43, 0, v19
	v_add_nc_u32_e32 v44, 0, v20
	v_add_nc_u32_e32 v45, 0, v45
	v_add_nc_u32_e32 v46, 0, v46
	v_add_nc_u32_e32 v47, 0, v47
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v56, 0, v56
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s25, 1
	s_mul_i32 s30, s25, 3
	s_lshl_b32 s31, s25, 2
	s_mul_i32 s33, s25, 5
	s_mul_i32 s34, s25, 6
	s_mul_i32 s35, s25, 7
	s_lshl_b32 s36, s25, 3
	s_mul_i32 s37, s25, 9
	s_mul_i32 s38, s25, 10
	s_mul_i32 s39, s25, 11
	s_mul_i32 s40, s25, 12
	s_mul_i32 s41, s25, 13
	s_mul_i32 s42, s25, 14
	s_mul_i32 s43, s25, 15
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s45, s14, 0x1001d
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 297 26                        ; generate_amdgcn.py:297:26
	v_or_b32_e32 v10, s47, v22
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	v_lshl_or_b32 v70, s48, 8, v0
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_add_nc_u32_e32 v66, 0, v23
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s6, s47, s25
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s7, s6, s25
	s_add_i32 s47, s6, s29
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v74, s6, v70, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s48, s6, s30
	.loc	1 297 18 is_stmt 1              ; generate_amdgcn.py:297:18
	buffer_load_u16 v71, v10, s[20:23], 0 offen
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v75, s7, v70, 2
	.loc	1 334 27 is_stmt 0              ; generate_amdgcn.py:334:27
	s_add_i32 s49, s6, s31
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v76, s47, v70, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s50, s6, s33
	s_add_i32 s51, s6, s34
	s_add_i32 s52, s6, s35
	s_add_i32 s53, s6, s36
	s_add_i32 s54, s6, s37
	s_add_i32 s55, s6, s38
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v77, s48, v70, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s56, s6, s39
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v78, s49, v70, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s57, s6, s40
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v79, s50, v70, 2
	v_add_lshl_u32 v80, s51, v70, 2
	v_add_lshl_u32 v81, s52, v70, 2
	v_add_lshl_u32 v82, s53, v70, 2
	v_add_lshl_u32 v83, s54, v70, 2
	v_add_lshl_u32 v84, s55, v70, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s58, s6, s41
	s_add_i32 s59, s6, s42
	s_add_i32 s60, s6, s43
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_cmp_lt_i32 s2, s27
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v9, 1, v70
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_add_nc_u32_e32 v72, 0, v25
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	ds_store_b32 v72, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v66
	ds_load_b128 v[13:16], v66 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v10, v10, v71
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v10, v10, v60 :: v_dual_mul_f32 v9, v9, v71
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v12, v12, v71 :: v_dual_add_nc_u32 v73, 0, v24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v13, v13, v71
	v_mul_f32_e32 v11, v11, v71
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v9, v9, v61
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	ds_load_b128 v[62:65], v66 offset:512
	ds_load_b128 v[66:69], v66 offset:528
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v12, v12, v58
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v16, v16, v71 :: v_dual_mul_f32 v13, v13, v57
	v_mul_f32_e32 v14, v14, v71
	v_mul_f32_e32 v15, v15, v71
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v57, s59, v70, 2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v14, v14, v20 :: v_dual_mul_f32 v15, v15, v19
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v19, s57, v70, 2
	v_add_lshl_u32 v20, s58, v70, 2
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v16, v16, v18 :: v_dual_mul_f32 v63, v63, v71
	.loc	1 299 20 is_stmt 0              ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v66, v66, v71
	v_mul_f32_e32 v69, v69, v71
	v_mul_f32_e32 v65, v65, v71
	v_mul_f32_e32 v62, v62, v71
	v_mul_f32_e32 v68, v68, v71
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v4, v66, v4
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v64, v64, v71 :: v_dual_mul_f32 v1, v69, v1
	v_mul_f32_e32 v67, v67, v71
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v5, v65, v5 :: v_dual_mul_f32 v8, v62, v8
	v_mul_f32_e32 v7, v63, v7
	v_dual_mul_f32 v11, v11, v59 :: v_dual_mul_f32 v2, v68, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v6, v64, v6 :: v_dual_mul_f32 v3, v67, v3
	ds_store_2addr_stride64_b32 v73, v9, v8 offset1:2
	ds_store_2addr_stride64_b32 v35, v10, v7 offset1:2
	ds_store_2addr_stride64_b32 v36, v11, v6 offset1:2
	ds_store_2addr_stride64_b32 v37, v12, v5 offset1:2
	ds_store_2addr_stride64_b32 v38, v13, v4 offset1:2
	ds_store_2addr_stride64_b32 v39, v14, v3 offset1:2
	ds_store_2addr_stride64_b32 v40, v15, v2 offset1:2
	ds_store_2addr_stride64_b32 v41, v16, v1 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v72
	ds_load_b32 v2, v42
	ds_load_b32 v3, v43
	ds_load_b32 v4, v44
	ds_load_b32 v5, v45
	ds_load_b32 v6, v46
	ds_load_b32 v7, v47
	ds_load_b32 v8, v48
	ds_load_b32 v9, v49
	ds_load_b32 v10, v50
	ds_load_b32 v11, v51
	ds_load_b32 v13, v52
	ds_load_b32 v14, v53
	ds_load_b32 v15, v54
	ds_load_b32 v16, v55
	ds_load_b32 v18, v56
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v12, s56, v70, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v74, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v75, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v3, v76, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v4, v77, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v5, v78, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v6, v79, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v7, v80, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v8, v81, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v9, v82, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v10, v83, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v11, v84, s[12:15], 0 offen
	v_add_lshl_u32 v1, s60, v70, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v13, v12, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v14, v19, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v15, v20, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v16, v57, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v18, v1, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s6, s2
	s_ashr_i32 s47, s2, 31
	s_mul_hi_u32 s7, s6, s46
	s_xor_b32 s47, s47, s45
	s_mul_i32 s48, s7, s28
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_sub_i32 s6, s6, s48
	s_add_i32 s48, s7, 1
	s_sub_i32 s49, s6, s28
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s7, s48, s7
	s_cselect_b32 s6, s49, s6
	s_add_i32 s48, s7, 1
	s_cmp_ge_u32 s6, s28
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_cselect_b32 s6, s48, s7
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	s_xor_b32 s6, s6, s47
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v57, 0
	s_sub_i32 s6, s6, s47
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s47, s6, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s6, s6, s1
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s7, s26, s47
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s51, s2, s6
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s49, s7, 4
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s7, s49
	v_mov_b32_e32 v2, 0
	s_cvt_f32_u32 s48, s7
	s_sub_i32 s50, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s48
	v_readfirstlane_b32 s48, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s48, s48, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s48, s48
	s_mul_i32 s50, s50, s48
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s48, s50
	s_abs_i32 s50, s51
	s_add_i32 s48, s48, s6
	s_xor_b32 s6, s51, s49
	s_mul_hi_u32 s48, s50, s48
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s52, s48, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s50, s50, s52
	s_add_i32 s52, s48, 1
	s_sub_i32 s53, s50, s7
	s_cmp_ge_u32 s50, s7
	s_cselect_b32 s48, s52, s48
	s_cselect_b32 s50, s53, s50
	s_add_i32 s52, s48, 1
	s_cmp_ge_u32 s50, s7
	s_cselect_b32 s7, s52, s48
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s48, s7, s6
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s49, s48, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s49, s51, s49
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s49, s49, s47
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s47, s49, 4
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v2, s7, 8, v0
	s_lshl_b32 s6, s6, 8
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s47, v21
	s_mov_b32 s49, s44
	v_subrev_nc_u32_e32 v4, s6, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v2, v1
	v_mad_u64_u32 v[18:19], null, s3, v3, v[17:18]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[19:20], null, s3, v4, s[24:25]
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
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	buffer_load_b128 v[57:60], v19, s[4:7], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_u8 v20, v18, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v18, 0x80, v18
	v_add_nc_u32_e32 v19, 0x80, v19
	s_add_i32 s49, s49, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s49, 0
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v65, 24, v57
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt vmcnt(0)
	ds_store_b8 v26, v20
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	v_lshrrev_b32_e32 v20, 8, v57
	v_lshrrev_b32_e32 v66, 8, v58
	v_lshrrev_b32_e32 v67, 24, v58
	v_lshrrev_b32_e32 v68, 8, v59
	v_lshrrev_b32_e32 v69, 24, v59
	v_lshrrev_b32_e32 v70, 8, v60
	v_lshrrev_b32_e32 v71, 24, v60
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[61:62], v27
	ds_load_b64 v[63:64], v28
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v29, v59 offset:2560
	ds_store_b8 v29, v60 offset:3072
	ds_store_b8 v29, v57
	ds_store_b8 v29, v20 offset:256
	ds_store_b8_d16_hi v29, v57 offset:512
	ds_store_b8 v29, v58 offset:1024
	ds_store_b8 v29, v66 offset:1280
	ds_store_b8_d16_hi v29, v58 offset:1536
	ds_store_b8 v29, v59 offset:2048
	ds_store_b8 v29, v68 offset:2304
	ds_store_b8 v29, v70 offset:3328
	ds_store_b8 v30, v65
	ds_store_b8 v31, v67
	ds_store_b8 v32, v69
	ds_store_b8_d16_hi v29, v60 offset:3584
	ds_store_b8 v33, v71
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v20, v34 offset:3328
	ds_load_u8 v57, v34 offset:3072
	ds_load_u8 v58, v34 offset:3840
	ds_load_u8 v59, v34 offset:3584
	ds_load_u8 v60, v34 offset:2304
	ds_load_u8 v65, v34 offset:2048
	ds_load_u8 v66, v34 offset:2816
	ds_load_u8 v67, v34 offset:2560
	ds_load_u8 v68, v34 offset:1280
	ds_load_u8 v69, v34 offset:1024
	ds_load_u8 v70, v34 offset:1792
	ds_load_u8 v71, v34 offset:1536
	ds_load_u8 v72, v34 offset:1920
	ds_load_u8 v73, v34 offset:1664
	ds_load_u8 v74, v34 offset:1408
	ds_load_u8 v75, v34 offset:1152
	ds_load_u8 v76, v34 offset:256
	ds_load_u8 v77, v34
	ds_load_u8 v78, v34 offset:768
	ds_load_u8 v79, v34 offset:512
	ds_load_u8 v80, v34 offset:896
	ds_load_u8 v81, v34 offset:640
	ds_load_u8 v82, v34 offset:384
	ds_load_u8 v83, v34 offset:128
	ds_load_u8 v84, v34 offset:3968
	ds_load_u8 v85, v34 offset:3712
	ds_load_u8 v86, v34 offset:3456
	ds_load_u8 v87, v34 offset:3200
	ds_load_u8 v88, v34 offset:2944
	ds_load_u8 v89, v34 offset:2688
	ds_load_u8 v90, v34 offset:2432
	ds_load_u8 v91, v34 offset:2176
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v69, v71, v70, 0xc0c0004
	v_perm_b32 v67, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v66, v73, v72, 0xc0c0004
	v_perm_b32 v20, v57, v20, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v70, v77, v76, 0xc0c0004
	v_perm_b32 v76, v65, v60, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v71, v79, v78, 0xc0c0004
	v_perm_b32 v65, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v73, v81, v80, 0xc0c0004
	v_perm_b32 v59, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v83, v82, 0xc0c0004
	v_lshl_or_b32 v58, v69, 16, v68
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v85, v84, 0xc0c0004
	v_lshl_or_b32 v57, v71, 16, v70
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v74, v87, v86, 0xc0c0004
	v_lshl_or_b32 v66, v66, 16, v65
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v89, v88, 0xc0c0004
	v_lshl_or_b32 v65, v73, 16, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v91, v90, 0xc0c0004
	v_lshl_or_b32 v60, v59, 16, v20
	v_lshl_or_b32 v59, v67, 16, v76
	v_lshl_or_b32 v68, v75, 16, v74
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v67, v78, 16, v77
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[59:60], v[63:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[63:64], v[9:16] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 296 19 is_stmt 1              ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v61, v1
	v_cvt_f32_i32_e32 v60, v2
	v_cvt_f32_i32_e32 v59, v3
	v_cvt_f32_i32_e32 v58, v4
	v_cvt_f32_i32_e32 v57, v5
	v_cvt_f32_i32_e32 v20, v6
	v_cvt_f32_i32_e32 v19, v7
	v_cvt_f32_i32_e32 v18, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v7, v10
	v_cvt_f32_i32_e32 v6, v11
	v_cvt_f32_i32_e32 v5, v12
	v_cvt_f32_i32_e32 v4, v13
	v_cvt_f32_i32_e32 v3, v14
	v_cvt_f32_i32_e32 v2, v15
	v_cvt_f32_i32_e32 v1, v16
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge4
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
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
		.amdhsa_next_free_sgpr 61
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
		.amdhsa_inst_pref_size 25
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_vgpr, 92
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3100
; TotalNumSgprs: 63
; NumVgprs: 92
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 63
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     92
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
