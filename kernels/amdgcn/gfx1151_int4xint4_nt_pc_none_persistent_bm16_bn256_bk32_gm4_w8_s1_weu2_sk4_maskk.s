	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk
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
	s_ashr_i32 s24, s4, 4
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
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 263 24 is_stmt 1              ; generate_amdgcn.py:263:24
	s_lshl_b32 s27, s14, 2
	.loc	1 283 27                        ; generate_amdgcn.py:283:27
	s_lshl_b32 s28, s3, 4
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v1, 0xf0, v0
	v_bfe_i32 v4, v0, 7, 1
	v_lshlrev_b32_e32 v5, 4, v0
	v_and_b32_e32 v3, 0x7f, v0
	v_bfe_i32 v6, v0, 3, 1
	v_and_b32_e32 v9, 7, v0
	v_lshlrev_b32_e32 v25, 1, v1
	v_and_b32_e32 v5, 0x70, v5
	v_and_b32_e32 v4, 0x88, v4
	v_and_b32_e32 v2, 1, v0
	v_and_b32_e32 v8, 16, v0
	v_lshl_or_b32 v11, v9, 2, v25
	v_and_or_b32 v5, 0x88, v6, v5
	v_and_b32_e32 v6, 0x2040, v6
	v_xor_b32_e32 v3, v4, v3
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_lshlrev_b32_e32 v4, 1, v0
	s_add_i32 s0, s15, s0
	s_mov_b32 s16, s4
	s_ashr_i32 s29, s0, 1
	s_mov_b32 s4, s6
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s29, 63
.Ltmp12:
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshlrev_b32_e32 v18, 3, v2
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s1, s0, 31
	v_xor_b32_e32 v6, v11, v6
	s_lshr_b32 s1, s1, 26
	v_lshlrev_b32_e32 v1, 2, v1
	s_add_i32 s0, s0, s1
	v_and_b32_e32 v4, 28, v4
	s_ashr_i32 s1, s0, 6
	s_cmp_gt_i32 s15, 1
	v_lshlrev_b32_e32 v2, 5, v2
	s_cselect_b32 s3, -1, 0
	s_abs_i32 s30, s27
	v_lshlrev_b32_e32 v7, 3, v0
	s_cvt_f32_u32 s6, s30
	v_lshrrev_b32_e32 v10, 2, v8
	v_lshl_or_b32 v29, v9, 10, v6
	v_or3_b32 v30, v1, v2, v4
	v_rcp_iflag_f32_e32 v31, s6
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s30
.Ltmp14:
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v17, 15, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v24, 1, v0
	v_and_or_b32 v27, 0x78, v7, v10
	v_xor_b32_e32 v7, 8, v5
	v_cmp_eq_u32_e64 s0, 0, v8
	v_xor_b32_e32 v1, 4, v29
	v_readfirstlane_b32 s6, v31
	v_xor_b32_e32 v2, 8, v29
	v_xor_b32_e32 v4, 12, v29
	v_xor_b32_e32 v6, 16, v29
	v_xor_b32_e32 v8, 20, v29
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_xor_b32_e32 v9, 24, v29
	v_xor_b32_e32 v10, 28, v29
	v_xor_b32_e32 v11, 0x404, v30
	s_cvt_u32_f32 s6, s6
	v_xor_b32_e32 v12, 0x808, v30
	v_xor_b32_e32 v13, 0xc0c, v30
	v_xor_b32_e32 v14, 0x1010, v30
	v_xor_b32_e32 v15, 0x1414, v30
	v_xor_b32_e32 v16, 0x1818, v30
	v_xor_b32_e32 v19, 0x1c1c, v30
	v_xor_b32_e32 v20, 0x2040, v30
	v_xor_b32_e32 v21, 0x2444, v30
	v_xor_b32_e32 v22, 0x2848, v30
	v_xor_b32_e32 v52, 0x2c4c, v30
	v_xor_b32_e32 v53, 0x3050, v30
	v_xor_b32_e32 v54, 0x3454, v30
	v_xor_b32_e32 v55, 0x3858, v30
	v_xor_b32_e32 v56, 0x3c5c, v30
	v_cndmask_b32_e64 v32, 0, 1, s3
	s_mul_i32 s7, s7, s6
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_max_i32 s46, s1, 1
	s_mul_hi_u32 s1, s6, s7
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_lshrrev_b32_e32 v23, 4, v0
	v_sub_nc_u32_e32 v26, s29, v17
	v_xor_b32_e32 v28, 4, v27
	s_add_i32 s48, s6, s1
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_or_b32_e32 v31, 0x80, v24
	v_cmp_ne_u32_e64 s1, 1, v32
	v_add_nc_u32_e32 v32, 0, v3
	v_add_nc_u32_e32 v33, 0, v5
	v_add_nc_u32_e32 v34, 0, v7
	v_add_nc_u32_e32 v35, 0, v1
	v_add_nc_u32_e32 v36, 0, v2
	v_add_nc_u32_e32 v37, 0, v4
	v_add_nc_u32_e32 v38, 0, v6
	v_add_nc_u32_e32 v39, 0, v8
	v_add_nc_u32_e32 v40, 0, v9
	v_add_nc_u32_e32 v41, 0, v10
	v_add_nc_u32_e32 v42, 0, v11
	v_add_nc_u32_e32 v43, 0, v12
	v_add_nc_u32_e32 v44, 0, v13
	v_add_nc_u32_e32 v45, 0, v14
	v_add_nc_u32_e32 v46, 0, v15
	v_add_nc_u32_e32 v47, 0, v16
	v_add_nc_u32_e32 v48, 0, v19
	v_add_nc_u32_e32 v49, 0, v20
	v_add_nc_u32_e32 v50, 0, v21
	v_add_nc_u32_e32 v51, 0, v22
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v56, 0, v56
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s31, s25, 1
	s_mul_i32 s33, s25, 3
	s_lshl_b32 s34, s25, 2
	s_mul_i32 s35, s25, 5
	s_mul_i32 s36, s25, 6
	s_mul_i32 s37, s25, 7
	s_lshl_b32 s38, s25, 3
	s_mul_i32 s39, s25, 9
	s_mul_i32 s40, s25, 10
	s_mul_i32 s41, s25, 11
	s_mul_i32 s42, s25, 12
	s_mul_i32 s43, s25, 13
	s_mul_i32 s44, s25, 14
	s_mul_i32 s45, s25, 15
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s47, s14, 0x1001d
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
	.loc	1 297 26                        ; generate_amdgcn.py:297:26
	v_or_b32_e32 v10, s14, v17
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	v_lshl_or_b32 v69, s15, 8, v0
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_add_nc_u32_e32 v71, 0, v30
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s3, s14, s25
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	s_mov_b32 s14, s18
	.loc	1 297 18 is_stmt 1              ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s6, s3, s25
	s_add_i32 s7, s3, s31
	.loc	1 334 13 is_stmt 0              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v73, s3, v69, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s49, s3, s33
	.loc	1 297 18 is_stmt 1              ; generate_amdgcn.py:297:18
	buffer_load_u16 v70, v10, s[20:23], 0 offen
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v74, s6, v69, 2
	.loc	1 334 27 is_stmt 0              ; generate_amdgcn.py:334:27
	s_add_i32 s50, s3, s34
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v75, s7, v69, 2
	s_mov_b32 s15, s19
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s51, s3, s35
	s_add_i32 s52, s3, s36
	s_add_i32 s53, s3, s37
	s_add_i32 s54, s3, s38
	s_add_i32 s55, s3, s39
	s_add_i32 s56, s3, s40
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v76, s49, v69, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s57, s3, s41
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v77, s50, v69, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s58, s3, s42
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v78, s51, v69, 2
	v_add_lshl_u32 v79, s52, v69, 2
	v_add_lshl_u32 v80, s53, v69, 2
	v_add_lshl_u32 v81, s54, v69, 2
	v_add_lshl_u32 v82, s55, v69, 2
	v_add_lshl_u32 v83, s56, v69, 2
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_add_i32 s59, s3, s43
	s_add_i32 s60, s3, s44
	s_add_i32 s61, s3, s45
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s26
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v9, 1, v69
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_add_nc_u32_e32 v65, 0, v25
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	ds_store_b32 v71, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v65
	ds_load_b128 v[13:16], v65 offset:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v15, v15, v70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v15, v15, v20 :: v_dual_mul_f32 v12, v12, v70
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	ds_load_b128 v[61:64], v65 offset:512
	ds_load_b128 v[65:68], v65 offset:528
	v_dual_mul_f32 v9, v9, v70 :: v_dual_add_nc_u32 v72, 0, v29
	v_mul_f32_e32 v10, v10, v70
	v_dual_mul_f32 v11, v11, v70 :: v_dual_mul_f32 v12, v12, v57
	v_mul_f32_e32 v14, v14, v70
	v_mul_f32_e32 v13, v13, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v9, v9, v60 :: v_dual_mul_f32 v10, v10, v59
	v_dual_mul_f32 v11, v11, v58 :: v_dual_mul_f32 v14, v14, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v13, v13, v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v20, s58, v69, 2
	v_add_lshl_u32 v21, s59, v69, 2
	v_add_lshl_u32 v22, s60, v69, 2
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_mul_f32_e32 v61, v61, v70
	v_mul_f32_e32 v68, v68, v70
	v_mul_f32_e32 v66, v66, v70
	v_mul_f32_e32 v63, v63, v70
	v_mul_f32_e32 v65, v65, v70
	v_mul_f32_e32 v67, v67, v70
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v1, v68, v1
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v64, v64, v70 :: v_dual_mul_f32 v3, v66, v3
	v_mul_f32_e32 v62, v62, v70
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v8, v61, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v6, v63, v6 :: v_dual_mul_f32 v5, v64, v5
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	v_dual_mul_f32 v16, v16, v70 :: v_dual_mul_f32 v7, v62, v7
	.loc	1 299 13                        ; generate_amdgcn.py:299:13
	v_mul_f32_e32 v4, v65, v4
	v_mul_f32_e32 v2, v67, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v16, v16, v19
	ds_store_2addr_stride64_b32 v72, v9, v8 offset1:2
	ds_store_2addr_stride64_b32 v35, v10, v7 offset1:2
	ds_store_2addr_stride64_b32 v36, v11, v6 offset1:2
	ds_store_2addr_stride64_b32 v37, v12, v5 offset1:2
	ds_store_2addr_stride64_b32 v38, v13, v4 offset1:2
	ds_store_2addr_stride64_b32 v39, v14, v3 offset1:2
	ds_store_2addr_stride64_b32 v40, v15, v2 offset1:2
	ds_store_2addr_stride64_b32 v41, v16, v1 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v71
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
	ds_load_b32 v19, v56
	.loc	1 334 13 is_stmt 1              ; generate_amdgcn.py:334:13
	v_add_lshl_u32 v12, s57, v69, 2
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v1, v73, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v74, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v3, v75, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v4, v76, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v5, v77, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v6, v78, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v7, v79, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v8, v80, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v9, v81, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v10, v82, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v11, v83, s[12:15], 0 offen
	v_add_lshl_u32 v1, s61, v69, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v13, v12, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v14, v20, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v15, v21, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v16, v22, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v19, v1, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s3, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s3, s48
	s_xor_b32 s7, s7, s47
	s_mul_i32 s14, s6, s30
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_sub_i32 s3, s3, s14
	s_add_i32 s14, s6, 1
	s_sub_i32 s15, s3, s30
	s_cmp_ge_u32 s3, s30
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s6, s14, s6
	s_cselect_b32 s3, s15, s3
	s_add_i32 s14, s6, 1
	s_cmp_ge_u32 s3, s30
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_cselect_b32 s3, s14, s6
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	s_xor_b32 s3, s3, s7
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	s_sub_i32 s3, s3, s7
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s7, s3, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s3, s3, s27
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s6, s24, s7
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s50, s2, s3
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s14, s6, 4
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s6, s14
	v_mov_b32_e32 v2, 0
	s_cvt_f32_u32 s15, s6
	s_sub_i32 s49, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s15, s15, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s15, s15
	s_mul_i32 s49, s49, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s15, s49
	s_abs_i32 s49, s50
	s_add_i32 s15, s15, s3
	s_xor_b32 s3, s50, s14
	s_mul_hi_u32 s15, s49, s15
	s_ashr_i32 s3, s3, 31
	s_mul_i32 s51, s15, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s49, s49, s51
	s_add_i32 s51, s15, 1
	s_sub_i32 s52, s49, s6
	s_cmp_ge_u32 s49, s6
	s_cselect_b32 s15, s51, s15
	s_cselect_b32 s49, s52, s49
	s_add_i32 s51, s15, 1
	s_cmp_ge_u32 s49, s6
	s_cselect_b32 s6, s51, s15
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s6, s6, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s15, s6, s3
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s14, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s14, s50, s14
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s14, s14, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s14, s14, 4
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v4, s14, v23
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_lshl_b32 s6, s6, 8
	s_lshl_b32 s3, s3, 8
	v_or_b32_e32 v2, s6, v31
	v_or_b32_e32 v3, s6, v24
	v_mad_u64_u32 v[19:20], null, s29, v4, v[17:18]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s3, v2
	v_subrev_nc_u32_e32 v3, s3, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[20:21], null, s29, v2, v[18:19]
	v_mad_u64_u32 v[21:22], null, s29, v3, v[18:19]
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
	s_mov_b32 s49, s28
	s_mov_b32 s50, s46
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 284 27 is_stmt 1              ; generate_amdgcn.py:284:27
	v_add_nc_u32_e32 v22, s49, v18
	.loc	1 292 34                        ; generate_amdgcn.py:292:34
	v_add_nc_u32_e32 v58, s49, v21
	.loc	1 292 26 is_stmt 0              ; generate_amdgcn.py:292:26
	v_add_nc_u32_e32 v59, s49, v20
	.loc	1 289 26 is_stmt 1              ; generate_amdgcn.py:289:26
	v_add_nc_u32_e32 v57, s49, v19
	.loc	1 284 27                        ; generate_amdgcn.py:284:27
	v_cmp_lt_i32_e32 vcc_lo, s49, v26
	.loc	1 285 27                        ; generate_amdgcn.py:285:27
	v_cmp_gt_i32_e64 s3, s29, v22
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_add_i32 s50, s50, -1
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	v_cndmask_b32_e32 v61, 0x80000000, v57, vcc_lo
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	v_cndmask_b32_e64 v22, 0x80000000, v58, s3
	v_cndmask_b32_e64 v59, 0x80000000, v59, s3
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_add_i32 s49, s49, 64
	s_cmp_lg_u32 s50, 0
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_clause 0x1
	buffer_load_b64 v[57:58], v22, s[4:7], 0 offen
	buffer_load_b64 v[59:60], v59, s[4:7], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_u8 v22, v61, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v62, v27, v57
	ds_bpermute_b32 v64, v27, v58
	ds_bpermute_b32 v63, v28, v57
	ds_bpermute_b32 v67, v28, v58
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v68, v27, v59
	ds_bpermute_b32 v69, v27, v60
	ds_bpermute_b32 v70, v28, v59
	ds_bpermute_b32 v71, v28, v60
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt vmcnt(0)
	ds_store_b8 v32, v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[57:58], v33
	ds_load_b64 v[59:60], v34
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	v_cndmask_b32_e64 v61, v63, v62, s0
	v_cndmask_b32_e64 v63, v62, v63, s0
	v_cndmask_b32_e64 v62, v67, v64, s0
	v_cndmask_b32_e64 v64, v64, v67, s0
	v_cndmask_b32_e64 v65, v70, v68, s0
	v_cndmask_b32_e64 v66, v71, v69, s0
	v_cndmask_b32_e64 v67, v68, v70, s0
	v_cndmask_b32_e64 v68, v69, v71, s0
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[57:58], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[59:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[59:60], v[9:16] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 296 19 is_stmt 1              ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v60, v1
	v_cvt_f32_i32_e32 v59, v2
	v_cvt_f32_i32_e32 v58, v3
	v_cvt_f32_i32_e32 v57, v4
	v_cvt_f32_i32_e32 v22, v5
	v_cvt_f32_i32_e32 v21, v6
	v_cvt_f32_i32_e32 v20, v7
	v_cvt_f32_i32_e32 v19, v8
	v_cvt_f32_i32_e32 v8, v9
	v_cvt_f32_i32_e32 v7, v10
	v_cvt_f32_i32_e32 v6, v11
	v_cvt_f32_i32_e32 v5, v12
	v_cvt_f32_i32_e32 v4, v13
	v_cvt_f32_i32_e32 v3, v14
	v_cvt_f32_i32_e32 v2, v15
	v_cvt_f32_i32_e32 v1, v16
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge7
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk
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
		.amdhsa_next_free_sgpr 62
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
		.amdhsa_inst_pref_size 21
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.num_vgpr, 84
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2564
; TotalNumSgprs: 64
; NumVgprs: 84
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 64
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm16_bn256_bk32_gm4_w8_s1_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     84
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
