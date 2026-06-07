	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v71, 4, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v236, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v72, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 48, v71
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v46, 0, v71
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v73, 48, v236
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s12, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s17, s16
	s_xor_b32 s13, s2, s16
	s_cvt_f32_u32 s18, s17
	s_ashr_i32 s13, s13, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v71
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s6, 0, s17
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_abs_i32 s7, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[13:14], null, s35, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v14, v3, 16, v72
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s6, s6, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v74, s35, 5, v13
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s6, s18, s6
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v15, 32, v14
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s18
	s_mul_i32 s14, s6, s17
	s_add_i32 s18, s6, 1
	s_sub_i32 s14, s7, s14
	s_mov_b32 s7, 0x31027000
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s6, s18, s6
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s6, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s14, s18, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s14, s13
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s13, s14, s13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s14, s13, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s13, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s34, s2, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s2, s14, 31
.Ltmp15:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s34, s12
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s2, s2, 26
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v75, v2, v4, s3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s12, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s14, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s12, s33, s12
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s22, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s12, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s35, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s40, s22, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s12, v74
	s_add_i32 s12, s12, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s40, v75
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s12, v13
	v_add_nc_u32_e32 v7, s12, v74
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b128 v[22:25], v1, s[4:7], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v6, s2
	v_cndmask_b32_e64 v6, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_b128 v[26:29], v2, s[24:27], 0 offen
	buffer_load_b128 v[30:33], v4, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[34:37], v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[38:41], v5, s[24:27], 0 offen
	buffer_load_b128 v[42:45], v6, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v0
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v1, 1, v73
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v76, v71, v3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v9, 8, v2
	v_or_b32_e32 v10, 10, v2
	v_or_b32_e32 v11, 12, v2
	v_or_b32_e32 v12, 14, v2
	v_or_b32_e32 v17, 64, v2
	v_or_b32_e32 v18, 0x42, v2
	v_or_b32_e32 v19, 0x44, v2
	v_or_b32_e32 v20, 0x46, v2
	v_or_b32_e32 v21, 0x48, v2
	v_or_b32_e32 v3, 0x4a, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v47, 0, v76
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0x4c, v2
	v_or_b32_e32 v5, 0x4e, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v47, v[22:25] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v46, v[26:29]
	s_waitcnt vmcnt(3)
	ds_store_b128 v46, v[30:33] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v47, v[34:37] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[38:41] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[42:45] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v22, 0x430, v1
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v72, 6, v22
	v_xor_b32_e32 v69, 16, v67
	v_xor_b32_e32 v70, 32, v67
	v_xor_b32_e32 v68, 48, v67
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr68
.LBB0_3:                                ; %Flow43
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v22, s34, v14
	v_or_b32_e32 v23, s34, v15
	s_ashr_i32 s41, s13, 6
	v_or_b32_e32 v64, s33, v2
	v_or_b32_e32 v63, s33, v6
	v_mul_lo_u32 v65, v22, s41
	v_mul_lo_u32 v66, v23, s41
	v_or_b32_e32 v62, s33, v7
	v_or_b32_e32 v61, s33, v8
	v_or_b32_e32 v60, s33, v9
	v_or_b32_e32 v59, s33, v10
	v_or_b32_e32 v58, s33, v11
	v_or_b32_e32 v57, s33, v12
	v_or_b32_e32 v56, s33, v17
	v_or_b32_e32 v55, s33, v18
	v_or_b32_e32 v54, s33, v19
	v_or_b32_e32 v42, s33, v20
	v_or_b32_e32 v38, s33, v21
	v_or_b32_e32 v44, s33, v3
	v_or_b32_e32 v40, s33, v4
	v_or_b32_e32 v36, s33, v5
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x430, v1
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v67, v72, 6, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v8, s19
	v_xor_b32_e32 v69, 16, v67
	v_xor_b32_e32 v70, 32, v67
	v_xor_b32_e32 v68, 48, v67
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v53, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s23, s41, 3
	s_add_i32 s11, s40, 64
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
	s_add_i32 s23, s23, -3
	s_mov_b32 s44, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s15, s10
	s_mov_b32 s14, s22
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v78, s15, v67
	v_add_nc_u32_e32 v79, s15, v69
	v_add_nc_u32_e32 v80, s15, v70
	v_add_nc_u32_e32 v81, s15, v68
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s15, s14, 31
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s17, s13, 6
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s15, s15, 26
	s_mov_b32 s16, s12
	s_mov_b32 s22, s40
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s40, s11, s17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s14, s14, s15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v77, s16, v72, v73
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s40, s35
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s33
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v137, v65, s14, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v138, v66, s14, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v139, v64, s15, 1
	v_add_lshl_u32 v140, v63, s15, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v141, v62, s15, 1
	v_add_lshl_u32 v172, v56, s15, 1
	v_add_lshl_u32 v173, v55, s15, 1
	v_add_lshl_u32 v174, v54, s15, 1
	v_add_lshl_u32 v175, v42, s15, 1
	v_add_lshl_u32 v176, v38, s15, 1
	v_add_lshl_u32 v177, v44, s15, 1
	v_add_lshl_u32 v178, v40, s15, 1
	v_add_lshl_u32 v179, v36, s15, 1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s40, v75
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v142, v61, s15, 1
	v_add_lshl_u32 v143, v60, s15, 1
	v_add_lshl_u32 v144, v59, s15, 1
	v_add_lshl_u32 v170, v58, s15, 1
	v_add_lshl_u32 v171, v57, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v139, 0x80000000, v139 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	v_dual_cndmask_b32 v172, 0x80000000, v172 :: v_dual_cndmask_b32 v173, 0x80000000, v173
	v_dual_cndmask_b32 v174, 0x80000000, v174 :: v_dual_cndmask_b32 v175, 0x80000000, v175
	v_dual_cndmask_b32 v176, 0x80000000, v176 :: v_dual_cndmask_b32 v177, 0x80000000, v177
	v_dual_cndmask_b32 v178, 0x80000000, v178 :: v_dual_cndmask_b32 v179, 0x80000000, v179
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v143, 0x80000000, v143 :: v_dual_cndmask_b32 v144, 0x80000000, v144
	v_dual_cndmask_b32 v170, 0x80000000, v170 :: v_dual_cndmask_b32 v171, 0x80000000, v171
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v180, v137, s[28:31], 0 offen
	buffer_load_u16 v181, v138, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v182, v139, s[36:39], 0 offen
	buffer_load_u16 v183, v140, s[36:39], 0 offen
	buffer_load_u16 v184, v141, s[36:39], 0 offen
	buffer_load_u16 v185, v142, s[36:39], 0 offen
	buffer_load_u16 v186, v143, s[36:39], 0 offen
	buffer_load_u16 v187, v144, s[36:39], 0 offen
	buffer_load_u16 v188, v170, s[36:39], 0 offen
	buffer_load_u16 v189, v171, s[36:39], 0 offen
	buffer_load_u16 v190, v172, s[36:39], 0 offen
	buffer_load_u16 v173, v173, s[36:39], 0 offen
	buffer_load_u16 v174, v174, s[36:39], 0 offen
	buffer_load_u16 v175, v175, s[36:39], 0 offen
	buffer_load_u16 v176, v176, s[36:39], 0 offen
	buffer_load_u16 v177, v177, s[36:39], 0 offen
	buffer_load_u16 v178, v178, s[36:39], 0 offen
	buffer_load_u16 v179, v179, s[36:39], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v82, s16, v13
	v_add_nc_u32_e32 v83, s16, v74
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[137:140], v82, s[24:27], 0 offen
	buffer_load_b128 v[141:144], v83, s[24:27], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[93:96], v78
	ds_load_b128 v[109:112], v78 offset:2048
	ds_load_b128 v[113:116], v79
	ds_load_b128 v[117:120], v79 offset:2048
	ds_load_b128 v[121:124], v80
	ds_load_b128 v[125:128], v80 offset:2048
	ds_load_b128 v[129:132], v81
	ds_load_b128 v[133:136], v81 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v78, v77 offset:3200
	ds_load_u8 v79, v77 offset:3072
	ds_load_u8 v80, v77 offset:6784
	ds_load_u8 v81, v77 offset:6656
	ds_load_u8 v84, v77 offset:7040
	ds_load_u8 v85, v77 offset:6912
	ds_load_u8 v86, v77 offset:6272
	ds_load_u8 v87, v77 offset:6144
	ds_load_u8 v88, v77 offset:6528
	ds_load_u8 v89, v77 offset:6400
	ds_load_u8 v90, v77 offset:1664
	ds_load_u8 v91, v77 offset:1536
	ds_load_u8 v92, v77 offset:1920
	ds_load_u8 v97, v77 offset:1792
	ds_load_u8 v98, v77 offset:1984
	ds_load_u8 v99, v77 offset:1856
	ds_load_u8 v100, v77 offset:1728
	ds_load_u8 v101, v77 offset:1600
	ds_load_u8 v102, v77 offset:1152
	ds_load_u8 v103, v77 offset:1024
	ds_load_u8 v104, v77 offset:1408
	ds_load_u8 v105, v77 offset:1280
	ds_load_u8 v106, v77 offset:1472
	ds_load_u8 v107, v77 offset:1344
	ds_load_u8 v108, v77 offset:1216
	ds_load_u8 v145, v77 offset:1088
	ds_load_u8 v146, v77 offset:640
	ds_load_u8 v147, v77 offset:512
	ds_load_u8 v148, v77 offset:896
	ds_load_u8 v149, v77 offset:768
	ds_load_u8 v150, v77 offset:960
	ds_load_u8 v151, v77 offset:832
	ds_load_u8 v152, v77 offset:704
	ds_load_u8 v153, v77 offset:576
	ds_load_u8 v154, v77 offset:128
	ds_load_u8 v155, v77
	ds_load_u8 v156, v77 offset:384
	ds_load_u8 v157, v77 offset:256
	ds_load_u8 v158, v77 offset:448
	ds_load_u8 v159, v77 offset:320
	ds_load_u8 v160, v77 offset:192
	ds_load_u8 v161, v77 offset:64
	ds_load_u8 v162, v77 offset:3712
	ds_load_u8 v163, v77 offset:3584
	ds_load_u8 v164, v77 offset:3968
	ds_load_u8 v165, v77 offset:3840
	ds_load_u8 v166, v77 offset:4032
	ds_load_u8 v167, v77 offset:3904
	ds_load_u8 v168, v77 offset:3776
	ds_load_u8 v169, v77 offset:3648
	ds_load_u8 v170, v77 offset:3456
	ds_load_u8 v171, v77 offset:3328
	ds_load_u8 v172, v77 offset:3520
	ds_load_u8 v191, v77 offset:3392
	ds_load_u8 v192, v77 offset:3264
	ds_load_u8 v193, v77 offset:3136
	ds_load_u8 v194, v77 offset:2688
	ds_load_u8 v195, v77 offset:2560
	ds_load_u8 v196, v77 offset:2944
	ds_load_u8 v197, v77 offset:2816
	ds_load_u8 v198, v77 offset:3008
	ds_load_u8 v199, v77 offset:2880
	ds_load_u8 v82, v77 offset:2752
	ds_load_u8 v83, v77 offset:2624
	ds_load_u8 v200, v77 offset:2176
	ds_load_u8 v201, v77 offset:2048
	ds_load_u8 v202, v77 offset:2432
	ds_load_u8 v203, v77 offset:2304
	ds_load_u8 v204, v77 offset:2496
	ds_load_u8 v205, v77 offset:2368
	ds_load_u8 v206, v77 offset:2240
	ds_load_u8 v207, v77 offset:2112
	ds_load_u8 v208, v77 offset:5760
	ds_load_u8 v209, v77 offset:5632
	ds_load_u8 v210, v77 offset:6016
	ds_load_u8 v211, v77 offset:5888
	ds_load_u8 v212, v77 offset:6080
	ds_load_u8 v213, v77 offset:5952
	ds_load_u8 v214, v77 offset:5824
	ds_load_u8 v215, v77 offset:5696
	ds_load_u8 v216, v77 offset:5248
	ds_load_u8 v217, v77 offset:5120
	ds_load_u8 v218, v77 offset:5504
	ds_load_u8 v219, v77 offset:5376
	ds_load_u8 v220, v77 offset:5568
	ds_load_u8 v221, v77 offset:5440
	ds_load_u8 v222, v77 offset:5312
	ds_load_u8 v223, v77 offset:5184
	ds_load_u8 v224, v77 offset:4736
	ds_load_u8 v225, v77 offset:4608
	ds_load_u8 v226, v77 offset:4992
	ds_load_u8 v227, v77 offset:4864
	ds_load_u8 v228, v77 offset:5056
	ds_load_u8 v229, v77 offset:4928
	ds_load_u8 v230, v77 offset:4800
	ds_load_u8 v231, v77 offset:4672
	ds_load_u8 v232, v77 offset:4224
	ds_load_u8 v233, v77 offset:4096
	ds_load_u8 v234, v77 offset:4480
	ds_load_u8 v235, v77 offset:4352
	ds_load_u8 v236, v77 offset:4544
	ds_load_u8 v237, v77 offset:4416
	ds_load_u8 v238, v77 offset:4288
	ds_load_u8 v239, v77 offset:4160
	ds_load_u8 v240, v77 offset:7808
	ds_load_u8 v241, v77 offset:7680
	ds_load_u8 v242, v77 offset:8064
	ds_load_u8 v243, v77 offset:7936
	ds_load_u8 v244, v77 offset:8128
	ds_load_u8 v245, v77 offset:8000
	ds_load_u8 v246, v77 offset:7872
	ds_load_u8 v247, v77 offset:7744
	ds_load_u8 v248, v77 offset:7296
	ds_load_u8 v249, v77 offset:7168
	ds_load_u8 v250, v77 offset:7552
	ds_load_u8 v251, v77 offset:7424
	ds_load_u8 v252, v77 offset:7616
	ds_load_u8 v253, v77 offset:7488
	ds_load_u8 v254, v77 offset:7360
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v77 offset:7232
	v_perm_b32 v92, v97, v92, 0xc0c0004
	ds_load_u8 v97, v77 offset:7104
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v77 offset:6976
	v_perm_b32 v105, v105, v104, 0xc0c0004
	ds_load_u8 v104, v77 offset:6848
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v77 offset:6720
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v77 offset:6592
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v77 offset:6464
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v77 offset:6336
	ds_load_u8 v77, v77 offset:6208
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v85, v84, 0xc0c0004
	v_perm_b32 v84, v87, v86, 0xc0c0004
	v_perm_b32 v85, v89, v88, 0xc0c0004
	v_perm_b32 v86, v101, v100, 0xc0c0004
	v_perm_b32 v87, v99, v98, 0xc0c0004
	v_perm_b32 v88, v145, v108, 0xc0c0004
	v_perm_b32 v89, v107, v106, 0xc0c0004
	v_perm_b32 v98, v153, v152, 0xc0c0004
	v_perm_b32 v99, v151, v150, 0xc0c0004
	v_perm_b32 v100, v161, v160, 0xc0c0004
	v_perm_b32 v106, v159, v158, 0xc0c0004
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v163, v165, v164, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v79, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v164, v195, v194, 0xc0c0004
	v_perm_b32 v165, v197, v196, 0xc0c0004
	v_perm_b32 v170, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v171, v203, v202, 0xc0c0004
	v_perm_b32 v107, v169, v168, 0xc0c0004
	v_perm_b32 v108, v167, v166, 0xc0c0004
	v_perm_b32 v161, v193, v192, 0xc0c0004
	v_perm_b32 v166, v191, v172, 0xc0c0004
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_perm_b32 v83, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v167, v207, v206, 0xc0c0004
	v_perm_b32 v168, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v169, v215, v214, 0xc0c0004
	v_perm_b32 v172, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v91, v91, v254, 0xc0c0004
	v_perm_b32 v207, v253, v252, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v212, v147, v104, 0xc0c0004
	v_perm_b32 v97, v103, v97, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v157, 0xc0c0004
	v_perm_b32 v213, v155, v149, 0xc0c0004
	v_lshl_or_b32 v104, v92, 16, v90
	v_lshl_or_b32 v103, v105, 16, v102
	v_lshl_or_b32 v102, v148, 16, v146
	v_lshl_or_b32 v101, v156, 16, v154
	v_lshl_or_b32 v160, v87, 16, v86
	v_lshl_or_b32 v159, v89, 16, v88
	v_lshl_or_b32 v158, v99, 16, v98
	v_lshl_or_b32 v157, v106, 16, v100
	v_perm_b32 v194, v209, v208, 0xc0c0004
	v_perm_b32 v195, v211, v210, 0xc0c0004
	v_perm_b32 v196, v217, v216, 0xc0c0004
	v_perm_b32 v197, v219, v218, 0xc0c0004
	v_perm_b32 v200, v225, v224, 0xc0c0004
	v_perm_b32 v201, v227, v226, 0xc0c0004
	v_perm_b32 v202, v233, v232, 0xc0c0004
	v_perm_b32 v203, v235, v234, 0xc0c0004
	v_perm_b32 v191, v223, v222, 0xc0c0004
	v_perm_b32 v192, v221, v220, 0xc0c0004
	v_perm_b32 v193, v231, v230, 0xc0c0004
	v_perm_b32 v198, v229, v228, 0xc0c0004
	v_perm_b32 v199, v239, v238, 0xc0c0004
	v_perm_b32 v204, v237, v236, 0xc0c0004
	v_lshl_or_b32 v148, v163, 16, v162
	v_lshl_or_b32 v147, v79, 16, v78
	v_lshl_or_b32 v146, v165, 16, v164
	v_lshl_or_b32 v145, v171, 16, v170
	v_lshl_or_b32 v154, v81, 16, v80
	v_lshl_or_b32 v153, v85, 16, v84
	v_lshl_or_b32 v164, v108, 16, v107
	v_lshl_or_b32 v163, v166, 16, v161
	v_lshl_or_b32 v162, v83, 16, v82
	v_lshl_or_b32 v161, v168, 16, v167
	v_lshl_or_b32 v168, v172, 16, v169
	v_lshl_or_b32 v171, v207, 16, v91
	v_lshl_or_b32 v170, v97, 16, v212
	v_lshl_or_b32 v169, v213, 16, v77
	v_wmma_i32_16x16x16_iu8 v[77:84], v[101:104], v[93:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[157:160], v[93:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[101:104], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[157:160], v[109:112], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v208, v241, v240, 0xc0c0004
	v_perm_b32 v209, v243, v242, 0xc0c0004
	v_perm_b32 v210, v249, v248, 0xc0c0004
	v_perm_b32 v211, v251, v250, 0xc0c0004
	v_perm_b32 v205, v247, v246, 0xc0c0004
	v_perm_b32 v206, v245, v244, 0xc0c0004
	v_lshl_or_b32 v152, v195, 16, v194
	v_lshl_or_b32 v151, v197, 16, v196
	v_lshl_or_b32 v150, v201, 16, v200
	v_lshl_or_b32 v149, v203, 16, v202
	v_lshl_or_b32 v167, v192, 16, v191
	v_lshl_or_b32 v166, v198, 16, v193
	v_lshl_or_b32 v165, v204, 16, v199
	v_wmma_i32_16x16x16_iu8 v[77:84], v[145:148], v[113:116], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[161:164], v[113:116], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[145:148], v[117:120], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[161:164], v[117:120], v[101:108] neg_lo:[1,1,0]
	v_lshl_or_b32 v156, v209, 16, v208
	v_lshl_or_b32 v155, v211, 16, v210
	v_lshl_or_b32 v172, v206, 16, v205
	v_wmma_i32_16x16x16_iu8 v[77:84], v[149:152], v[121:124], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[165:168], v[121:124], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[149:152], v[125:128], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[165:168], v[125:128], v[101:108] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s44, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[77:84], v[153:156], v[129:132], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[85:92], v[169:172], v[129:132], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[93:100], v[153:156], v[133:136], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[101:108], v[169:172], v[133:136], v[101:108] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s12, s43
	s_cselect_b32 s44, s14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s15, s44, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s16, s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s43, s16, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s10, s42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s42, s16, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s23
	s_mov_b32 s13, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v119, 16, v190
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v110, 16, v181
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v123, 16, v176
	v_lshlrev_b32_e32 v114, 16, v185
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v109, 16, v180
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v130, v109, v114
	v_dual_mul_f32 v114, v110, v114 :: v_dual_mul_f32 v135, v109, v119
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v124, 16, v177
	v_lshlrev_b32_e32 v111, 16, v182
	v_lshlrev_b32_e32 v122, 16, v175
	v_lshlrev_b32_e32 v113, 16, v184
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v126, 16, v179
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v109, v124
	v_dual_mul_f32 v127, v109, v111 :: v_dual_lshlrev_b32 v120, 16, v173
	v_mul_f32_e32 v111, v110, v111
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v121, 16, v174
	v_lshlrev_b32_e32 v118, 16, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v136, v109, v120
	v_mul_f32_e32 v120, v110, v120
	v_dual_mul_f32 v145, v109, v121 :: v_dual_lshlrev_b32 v112, 16, v183
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v115, 16, v186
	v_lshlrev_b32_e32 v117, 16, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v134, v109, v118 :: v_dual_add_nc_u32 v255, s16, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v128, v109, v112
	v_dual_mul_f32 v112, v110, v112 :: v_dual_mul_f32 v131, v109, v115
	v_mul_f32_e32 v115, v110, v115
	v_dual_mul_f32 v124, v110, v124 :: v_dual_lshlrev_b32 v125, 16, v178
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v116, 16, v187
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v146, v109, v122
	v_mul_f32_e32 v129, v109, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v149, v109, v125
	v_dual_mul_f32 v113, v110, v113 :: v_dual_mul_f32 v132, v109, v116
	v_mul_f32_e32 v116, v110, v116
	v_mul_f32_e32 v118, v110, v118
	v_dual_mul_f32 v133, v109, v117 :: v_dual_add_nc_u32 v16, s43, v71
	v_mul_f32_e32 v117, v110, v117
	v_dual_mul_f32 v119, v110, v119 :: v_dual_fmac_f32 v18, v128, v78
	v_dual_mul_f32 v121, v110, v121 :: v_dual_fmac_f32 v22, v132, v82
	v_dual_mul_f32 v122, v110, v122 :: v_dual_mul_f32 v147, v109, v123
	v_mul_f32_e32 v109, v109, v126
	v_dual_mul_f32 v123, v110, v123 :: v_dual_fmac_f32 v26, v136, v86
	v_dual_mul_f32 v125, v110, v125 :: v_dual_fmac_f32 v30, v148, v90
	v_dual_mul_f32 v110, v110, v126 :: v_dual_fmac_f32 v17, v127, v77
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v19, v129, v79 :: v_dual_fmac_f32 v20, v130, v80
	v_dual_fmac_f32 v21, v131, v81 :: v_dual_fmac_f32 v24, v134, v84
	v_dual_fmac_f32 v23, v133, v83 :: v_dual_fmac_f32 v28, v146, v88
	v_dual_fmac_f32 v25, v135, v85 :: v_dual_fmac_f32 v32, v109, v92
	v_dual_fmac_f32 v27, v145, v87 :: v_dual_fmac_f32 v34, v112, v94
	v_dual_fmac_f32 v29, v147, v89 :: v_dual_fmac_f32 v48, v120, v102
	v_dual_fmac_f32 v31, v149, v91 :: v_dual_fmac_f32 v50, v122, v104
	v_dual_fmac_f32 v33, v111, v93 :: v_dual_fmac_f32 v52, v124, v106
	v_dual_fmac_f32 v35, v113, v95 :: v_dual_fmac_f32 v46, v110, v108
	v_fmac_f32_e32 v37, v114, v96
	v_fmac_f32_e32 v39, v115, v97
	v_fmac_f32_e32 v41, v116, v98
	v_fmac_f32_e32 v43, v117, v99
	v_fmac_f32_e32 v45, v118, v100
	v_fmac_f32_e32 v47, v119, v101
	v_fmac_f32_e32 v49, v121, v103
	v_fmac_f32_e32 v51, v123, v105
	v_fmac_f32_e32 v53, v125, v107
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v255, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v16, v[137:140]
	s_waitcnt vmcnt(0)
	ds_store_b128 v16, v[141:144] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_lshrrev_b32_e32 v236, 1, v0
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s43, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v109, v73, v72
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v89, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s12, v109
	s_mov_b32 s12, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v72, v16 offset:1664
	ds_load_u8 v73, v16 offset:1536
	ds_load_u8 v74, v16 offset:1920
	ds_load_u8 v75, v16 offset:1792
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, s10, v70
	v_add_nc_u32_e32 v71, s10, v69
	ds_load_b128 v[2:5], v6 offset:2048
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[10:13], v71 offset:2048
	ds_load_b128 v[79:82], v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v71, v16 offset:1152
	ds_load_u8 v78, v16 offset:1024
	ds_load_u8 v83, v16 offset:1408
	ds_load_u8 v84, v16 offset:1280
	ds_load_u8 v85, v16 offset:640
	ds_load_u8 v86, v16 offset:512
	ds_load_u8 v87, v16 offset:896
	ds_load_u8 v88, v16 offset:768
	ds_load_u8 v103, v16 offset:1984
	ds_load_u8 v104, v16 offset:1856
	ds_load_u8 v105, v16 offset:1728
	ds_load_u8 v106, v16 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v77, s10, v67
	v_add_nc_u32_e32 v76, s10, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v73, v75, v74, 0xc0c0004
	ds_load_u8 v74, v16 offset:128
	ds_load_u8 v75, v16
	ds_load_u8 v89, v16 offset:384
	ds_load_u8 v90, v16 offset:256
	ds_load_u8 v107, v16 offset:1472
	ds_load_u8 v108, v16 offset:1344
	ds_load_u8 v134, v16 offset:1216
	ds_load_u8 v135, v16 offset:1088
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v71, v78, v71, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v78, v84, v83, 0xc0c0004
	v_lshl_or_b32 v117, v73, 16, v72
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v83, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v84, v88, v87, 0xc0c0004
	v_lshl_or_b32 v116, v78, 16, v71
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v115, v84, 16, v83
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v90, v89, 0xc0c0004
	v_dual_mov_b32 v90, s19 :: v_dual_mov_b32 v89, s18
	ds_load_u8 v78, v16 offset:3712
	ds_load_u8 v91, v16 offset:3584
	ds_load_u8 v92, v16 offset:3968
	ds_load_u8 v93, v16 offset:3840
	ds_load_u8 v126, v16 offset:5760
	ds_load_u8 v127, v16 offset:5632
	ds_load_u8 v128, v16 offset:6016
	ds_load_u8 v129, v16 offset:5888
	v_lshl_or_b32 v114, v75, 16, v74
	ds_load_u8 v74, v16 offset:3200
	ds_load_u8 v75, v16 offset:3072
	ds_load_u8 v94, v16 offset:3456
	ds_load_u8 v95, v16 offset:3328
	ds_load_u8 v96, v16 offset:2688
	ds_load_u8 v97, v16 offset:2560
	ds_load_u8 v98, v16 offset:2944
	ds_load_u8 v118, v16 offset:2816
	ds_load_u8 v119, v16 offset:2176
	ds_load_u8 v120, v16 offset:2048
	ds_load_u8 v121, v16 offset:2432
	ds_load_u8 v122, v16 offset:2304
	ds_load_u8 v142, v16 offset:4032
	ds_load_u8 v143, v16 offset:3904
	ds_load_u8 v144, v16 offset:3776
	ds_load_u8 v145, v16 offset:3648
	ds_load_u8 v136, v16 offset:960
	ds_load_u8 v138, v16 offset:832
	ds_load_u8 v139, v16 offset:704
	ds_load_u8 v140, v16 offset:576
	v_mov_b32_e32 v88, s17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v77 offset:2048
	ds_load_b128 v[99:102], v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v71, v16 offset:448
	ds_load_u8 v72, v16 offset:320
	ds_load_u8 v73, v16 offset:192
	ds_load_u8 v77, v16 offset:64
	v_mov_b32_e32 v85, s14
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v146, v16 offset:3520
	ds_load_u8 v147, v16 offset:3392
	ds_load_u8 v148, v16 offset:3264
	ds_load_u8 v149, v16 offset:3136
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v75, v95, v94, 0xc0c0004
	ds_load_u8 v150, v16 offset:3008
	ds_load_u8 v151, v16 offset:2880
	ds_load_u8 v152, v16 offset:2752
	ds_load_u8 v153, v16 offset:2624
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v124, v97, v96, 0xc0c0004
	ds_load_u8 v154, v16 offset:2496
	ds_load_u8 v155, v16 offset:2368
	ds_load_u8 v156, v16 offset:2240
	ds_load_u8 v157, v16 offset:2112
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v118, v118, v98, 0xc0c0004
	ds_load_u8 v166, v16 offset:5056
	ds_load_u8 v167, v16 offset:4928
	ds_load_u8 v168, v16 offset:4800
	ds_load_u8 v169, v16 offset:4672
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v125, v120, v119, 0xc0c0004
	v_perm_b32 v78, v91, v78, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v122, v122, v121, 0xc0c0004
	v_perm_b32 v123, v93, v92, 0xc0c0004
	v_lshl_or_b32 v120, v75, 16, v74
	v_lshl_or_b32 v119, v118, 16, v124
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_lshl_or_b32 v118, v122, 16, v125
	v_lshl_or_b32 v121, v123, 16, v78
	ds_load_u8 v74, v16 offset:5248
	ds_load_u8 v75, v16 offset:5120
	ds_load_u8 v78, v16 offset:5504
	ds_load_u8 v122, v16 offset:5376
	ds_load_u8 v123, v16 offset:4736
	ds_load_u8 v124, v16 offset:4608
	ds_load_u8 v125, v16 offset:4992
	ds_load_u8 v130, v16 offset:4864
	ds_load_u8 v158, v16 offset:6080
	ds_load_u8 v159, v16 offset:5952
	ds_load_u8 v160, v16 offset:5824
	ds_load_u8 v161, v16 offset:5696
	v_perm_b32 v127, v129, v128, 0xc0c0004
	ds_load_u8 v128, v16 offset:4224
	ds_load_u8 v129, v16 offset:4096
	ds_load_u8 v131, v16 offset:4480
	ds_load_u8 v132, v16 offset:4352
	ds_load_u8 v162, v16 offset:5568
	ds_load_u8 v163, v16 offset:5440
	ds_load_u8 v164, v16 offset:5312
	ds_load_u8 v165, v16 offset:5184
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_dual_mov_b32 v87, s16 :: v_dual_mov_b32 v86, s15
	v_dual_mov_b32 v83, s12 :: v_dual_mov_b32 v84, s13
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v75, v122, v78, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[91:98], v[114:117], v[99:102], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v78, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v122, v130, v125, 0xc0c0004
	ds_load_u8 v130, v16 offset:7808
	ds_load_u8 v133, v16 offset:7680
	ds_load_u8 v137, v16 offset:8064
	ds_load_u8 v141, v16 offset:7936
	ds_load_u8 v170, v16 offset:4544
	ds_load_u8 v171, v16 offset:4416
	ds_load_u8 v172, v16 offset:4288
	ds_load_u8 v173, v16 offset:4160
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v129, v132, v131, 0xc0c0004
	v_lshl_or_b32 v125, v127, 16, v126
	v_lshl_or_b32 v124, v75, 16, v74
	v_lshl_or_b32 v123, v122, 16, v78
	ds_load_u8 v74, v16 offset:7296
	ds_load_u8 v75, v16 offset:7168
	ds_load_u8 v78, v16 offset:7552
	ds_load_u8 v174, v16 offset:7424
	ds_load_u8 v175, v16 offset:8128
	ds_load_u8 v176, v16 offset:8000
	ds_load_u8 v177, v16 offset:7872
	ds_load_u8 v178, v16 offset:7744
	v_lshl_or_b32 v122, v129, 16, v128
	v_wmma_i32_16x16x16_iu8 v[91:98], v[118:121], v[79:82], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[122:125], v[6:9], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v179, v133, v130, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v137, v141, v137, 0xc0c0004
	ds_load_u8 v141, v16 offset:6784
	ds_load_u8 v180, v16 offset:6656
	ds_load_u8 v181, v16 offset:7040
	ds_load_u8 v182, v16 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v76 offset:2048
	ds_load_b128 v[130:133], v76
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v76, v16 offset:6272
	ds_load_u8 v183, v16 offset:6144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v187, v75, v74, 0xc0c0004
	ds_load_u8 v74, v16 offset:6528
	ds_load_u8 v75, v16 offset:6400
	ds_load_u8 v188, v16 offset:7104
	ds_load_u8 v189, v16 offset:6976
	ds_load_u8 v190, v16 offset:6848
	ds_load_u8 v191, v16 offset:6720
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v174, v174, v78, 0xc0c0004
	v_perm_b32 v78, v104, v103, 0xc0c0004
	v_perm_b32 v103, v135, v134, 0xc0c0004
	v_perm_b32 v104, v108, v107, 0xc0c0004
	v_lshl_or_b32 v137, v137, 16, v179
	ds_load_u8 v179, v16 offset:7616
	ds_load_u8 v184, v16 offset:7488
	ds_load_u8 v185, v16 offset:7360
	ds_load_u8 v186, v16 offset:7232
	v_perm_b32 v108, v153, v152, 0xc0c0004
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_perm_b32 v135, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v180, v180, v141, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v16 offset:6592
	ds_load_u8 v192, v16 offset:6464
	ds_load_u8 v193, v16 offset:6336
	ds_load_u8 v16, v16 offset:6208
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v107, v75, v74, 0xc0c0004
	v_perm_b32 v183, v183, v76, 0xc0c0004
	v_perm_b32 v76, v106, v105, 0xc0c0004
	v_perm_b32 v105, v140, v139, 0xc0c0004
	v_perm_b32 v106, v138, v136, 0xc0c0004
	v_lshl_or_b32 v140, v104, 16, v103
	v_lshl_or_b32 v138, v71, 16, v73
	v_lshl_or_b32 v141, v78, 16, v76
	v_perm_b32 v103, v145, v144, 0xc0c0004
	v_lshl_or_b32 v139, v106, 16, v105
	v_perm_b32 v104, v143, v142, 0xc0c0004
	v_perm_b32 v105, v149, v148, 0xc0c0004
	v_perm_b32 v106, v147, v146, 0xc0c0004
	v_perm_b32 v136, v155, v154, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[138:141], v[99:102], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v104, 16, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v144, v106, 16, v105
	v_lshl_or_b32 v143, v134, 16, v108
	v_lshl_or_b32 v142, v136, 16, v135
	v_perm_b32 v99, v161, v160, 0xc0c0004
	v_perm_b32 v100, v159, v158, 0xc0c0004
	v_perm_b32 v101, v165, v164, 0xc0c0004
	v_perm_b32 v102, v163, v162, 0xc0c0004
	v_perm_b32 v103, v169, v168, 0xc0c0004
	v_perm_b32 v104, v167, v166, 0xc0c0004
	v_perm_b32 v105, v173, v172, 0xc0c0004
	v_perm_b32 v106, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[142:145], v[79:82], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v100, 16, v99
	v_lshl_or_b32 v81, v102, 16, v101
	v_lshl_or_b32 v80, v104, 16, v103
	v_lshl_or_b32 v79, v106, 16, v105
	v_perm_b32 v99, v178, v177, 0xc0c0004
	v_perm_b32 v100, v176, v175, 0xc0c0004
	v_lshl_or_b32 v134, v107, 16, v183
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v191, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[6:9], v[71:78] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v186, v185, 0xc0c0004
	v_lshl_or_b32 v9, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[99:106], v[114:117], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[138:141], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v7, v184, v179, 0xc0c0004
	v_perm_b32 v108, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v193, 0xc0c0004
	v_perm_b32 v110, v192, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[118:121], v[10:13], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[142:145], v[10:13], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v174, 16, v187
	v_lshl_or_b32 v135, v181, 16, v180
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v108, 16, v107
	v_lshl_or_b32 v6, v110, 16, v16
	v_wmma_i32_16x16x16_iu8 v[99:106], v[122:125], v[2:5], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[79:82], v[2:5], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[134:137], v[130:133], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[6:9], v[130:133], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[134:137], v[126:129], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[6:9], v[126:129], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v92
	v_cvt_f32_i32_e32 v3, v93
	v_cvt_f32_i32_e32 v4, v94
	v_cvt_f32_i32_e32 v5, v95
	v_cvt_f32_i32_e32 v6, v96
	v_cvt_f32_i32_e32 v7, v97
	v_cvt_f32_i32_e32 v8, v98
	v_cvt_f32_i32_e32 v9, v71
	v_cvt_f32_i32_e32 v10, v72
	v_cvt_f32_i32_e32 v11, v73
	v_cvt_f32_i32_e32 v13, v74
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v72, v76
	v_cvt_f32_i32_e32 v73, v77
	v_cvt_f32_i32_e32 v74, v78
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v12, v91
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v16, v65, s4, 1
	v_add_lshl_u32 v91, v66, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v93, v64, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v96, v60, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v92, 0x80000000, v91, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v94, v63, s4, 1
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	v_cndmask_b32_e32 v101, 0x80000000, v96, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v91, v16, s[8:11], 0 offen
	buffer_load_u16 v92, v92, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v16, v62, s4, 1
	v_add_lshl_u32 v95, v61, s4, 1
	v_add_lshl_u32 v97, v59, s4, 1
	v_add_lshl_u32 v98, v58, s4, 1
	v_add_lshl_u32 v99, v57, s4, 1
	v_add_lshl_u32 v107, v54, s4, 1
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v103, 0x80000000, v98
	v_add_lshl_u32 v105, v56, s4, 1
	v_add_lshl_u32 v106, v55, s4, 1
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v100, 0x80000000, v95, vcc_lo
	v_cndmask_b32_e32 v102, 0x80000000, v97, vcc_lo
	v_cndmask_b32_e32 v104, 0x80000000, v99, vcc_lo
	s_clause 0x7
	buffer_load_u16 v93, v93, s[20:23], 0 offen
	buffer_load_u16 v94, v94, s[20:23], 0 offen
	buffer_load_u16 v95, v16, s[20:23], 0 offen
	buffer_load_u16 v96, v100, s[20:23], 0 offen
	buffer_load_u16 v97, v101, s[20:23], 0 offen
	buffer_load_u16 v98, v102, s[20:23], 0 offen
	buffer_load_u16 v99, v103, s[20:23], 0 offen
	buffer_load_u16 v100, v104, s[20:23], 0 offen
	v_add_lshl_u32 v101, v42, s4, 1
	v_add_lshl_u32 v104, v38, s4, 1
	v_cndmask_b32_e32 v16, 0x80000000, v105, vcc_lo
	v_dual_cndmask_b32 v102, 0x80000000, v106 :: v_dual_mov_b32 v115, 0
	v_cndmask_b32_e32 v103, 0x80000000, v107, vcc_lo
	v_add_lshl_u32 v105, v44, s4, 1
	v_add_lshl_u32 v106, v40, s4, 1
	v_add_lshl_u32 v107, v36, s4, 1
	v_dual_cndmask_b32 v108, 0x80000000, v101 :: v_dual_mov_b32 v117, 0
	v_dual_cndmask_b32 v110, 0x80000000, v104 :: v_dual_mov_b32 v119, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v111, 0x80000000, v105 :: v_dual_cndmask_b32 v112, 0x80000000, v106
	v_mov_b32_e32 v121, 0
	v_cndmask_b32_e32 v113, 0x80000000, v107, vcc_lo
	s_clause 0x7
	buffer_load_u16 v101, v16, s[20:23], 0 offen
	buffer_load_u16 v102, v102, s[20:23], 0 offen
	buffer_load_u16 v103, v103, s[20:23], 0 offen
	buffer_load_u16 v104, v108, s[20:23], 0 offen
	buffer_load_u16 v105, v110, s[20:23], 0 offen
	buffer_load_u16 v106, v111, s[20:23], 0 offen
	buffer_load_u16 v107, v112, s[20:23], 0 offen
	buffer_load_u16 v108, v113, s[20:23], 0 offen
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_mov_b32_e32 v125, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v128, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v140, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s43, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v110, v1 offset:1664
	ds_load_u8 v111, v1 offset:1536
	ds_load_u8 v112, v1 offset:1920
	ds_load_u8 v113, v1 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v16, s42, v70
	v_add_nc_u32_e32 v109, s42, v69
	v_add_nc_u32_e32 v117, s42, v68
	v_add_nc_u32_e32 v114, s42, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v113, v112, 0xc0c0004
	ds_load_u8 v112, v1 offset:128
	ds_load_u8 v113, v1
	ds_load_u8 v133, v1 offset:384
	ds_load_u8 v134, v1 offset:256
	ds_load_u8 v174, v1 offset:1472
	ds_load_u8 v175, v1 offset:1344
	ds_load_u8 v177, v1 offset:1216
	ds_load_u8 v178, v1 offset:1088
	v_lshl_or_b32 v156, v111, 16, v110
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v134, v133, 0xc0c0004
	v_dual_mov_b32 v140, s19 :: v_dual_mov_b32 v139, s18
	v_mov_b32_e32 v138, s17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[67:70], v16 offset:2048
	ds_load_b128 v[125:128], v16
	ds_load_b128 v[141:144], v109 offset:2048
	ds_load_b128 v[129:132], v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v16, v1 offset:1152
	ds_load_u8 v109, v1 offset:1024
	ds_load_u8 v115, v1 offset:1408
	ds_load_u8 v116, v1 offset:1280
	ds_load_u8 v118, v1 offset:640
	ds_load_u8 v119, v1 offset:512
	ds_load_u8 v120, v1 offset:896
	ds_load_u8 v121, v1 offset:768
	ds_load_u8 v122, v1 offset:1984
	ds_load_u8 v123, v1 offset:1856
	ds_load_u8 v124, v1 offset:1728
	ds_load_u8 v173, v1 offset:1600
	v_mov_b32_e32 v137, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[145:148], v114 offset:2048
	ds_load_b128 v[149:152], v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v179, v1 offset:960
	ds_load_u8 v180, v1 offset:832
	ds_load_u8 v181, v1 offset:704
	ds_load_u8 v182, v1 offset:576
	v_mov_b32_e32 v136, s15
	ds_load_u8 v187, v1 offset:3520
	ds_load_u8 v188, v1 offset:3392
	ds_load_u8 v189, v1 offset:3264
	ds_load_u8 v190, v1 offset:3136
	ds_load_u8 v191, v1 offset:3008
	ds_load_u8 v192, v1 offset:2880
	ds_load_u8 v193, v1 offset:2752
	ds_load_u8 v194, v1 offset:2624
	ds_load_u8 v195, v1 offset:2496
	ds_load_u8 v196, v1 offset:2368
	ds_load_u8 v197, v1 offset:2240
	ds_load_u8 v198, v1 offset:2112
	ds_load_u8 v207, v1 offset:5056
	ds_load_u8 v208, v1 offset:4928
	ds_load_u8 v209, v1 offset:4800
	ds_load_u8 v210, v1 offset:4672
	v_dual_mov_b32 v135, s14 :: v_dual_mov_b32 v134, s13
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v16, v109, v16, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v109, v116, v115, 0xc0c0004
	v_mov_b32_e32 v133, s12
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v115, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v116, v121, v120, 0xc0c0004
	v_lshl_or_b32 v155, v109, 16, v16
	v_perm_b32 v109, v113, v112, 0xc0c0004
	ds_load_u8 v111, v1 offset:3712
	ds_load_u8 v112, v1 offset:3584
	ds_load_u8 v113, v1 offset:3968
	ds_load_u8 v114, v1 offset:3840
	ds_load_u8 v16, v1 offset:448
	ds_load_u8 v118, v1 offset:320
	ds_load_u8 v119, v1 offset:192
	ds_load_u8 v120, v1 offset:64
	v_lshl_or_b32 v154, v116, 16, v115
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_lshl_or_b32 v153, v110, 16, v109
	ds_load_u8 v109, v1 offset:3200
	ds_load_u8 v110, v1 offset:3072
	ds_load_u8 v115, v1 offset:3456
	ds_load_u8 v116, v1 offset:3328
	ds_load_u8 v121, v1 offset:2688
	ds_load_u8 v157, v1 offset:2560
	ds_load_u8 v158, v1 offset:2944
	ds_load_u8 v159, v1 offset:2816
	ds_load_u8 v160, v1 offset:2176
	ds_load_u8 v161, v1 offset:2048
	ds_load_u8 v162, v1 offset:2432
	ds_load_u8 v163, v1 offset:2304
	ds_load_u8 v183, v1 offset:4032
	ds_load_u8 v184, v1 offset:3904
	ds_load_u8 v185, v1 offset:3776
	ds_load_u8 v186, v1 offset:3648
	v_perm_b32 v123, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v166, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v121, v157, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v157, v159, v158, 0xc0c0004
	v_perm_b32 v164, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v161, v161, v160, 0xc0c0004
	v_perm_b32 v165, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v1 offset:5760
	ds_load_u8 v168, v1 offset:5632
	ds_load_u8 v169, v1 offset:6016
	ds_load_u8 v170, v1 offset:5888
	v_lshl_or_b32 v159, v167, 16, v166
	v_lshl_or_b32 v158, v157, 16, v121
	v_lshl_or_b32 v160, v165, 16, v164
	v_lshl_or_b32 v157, v162, 16, v161
	ds_load_u8 v121, v1 offset:5248
	ds_load_u8 v161, v1 offset:5120
	ds_load_u8 v162, v1 offset:5504
	ds_load_u8 v164, v1 offset:5376
	ds_load_u8 v165, v1 offset:4736
	ds_load_u8 v166, v1 offset:4608
	ds_load_u8 v167, v1 offset:4992
	ds_load_u8 v171, v1 offset:4864
	ds_load_u8 v199, v1 offset:6080
	ds_load_u8 v200, v1 offset:5952
	ds_load_u8 v201, v1 offset:5824
	ds_load_u8 v202, v1 offset:5696
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v16, v118, v16, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[149:152], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v177, v16, 16, v119
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v16, v186, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[109:116], v[157:160], v[129:132], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v121, v161, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v161, v164, v162, 0xc0c0004
	v_perm_b32 v163, v168, v163, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v162, v166, v165, 0xc0c0004
	v_perm_b32 v168, v170, v169, 0xc0c0004
	ds_load_u8 v169, v1 offset:4224
	ds_load_u8 v170, v1 offset:4096
	ds_load_u8 v172, v1 offset:4480
	ds_load_u8 v176, v1 offset:4352
	ds_load_u8 v203, v1 offset:5568
	ds_load_u8 v204, v1 offset:5440
	ds_load_u8 v205, v1 offset:5312
	ds_load_u8 v206, v1 offset:5184
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v165, v171, v167, 0xc0c0004
	ds_load_u8 v166, v1 offset:7808
	ds_load_u8 v167, v1 offset:7680
	ds_load_u8 v171, v1 offset:8064
	ds_load_u8 v211, v1 offset:7936
	ds_load_u8 v212, v1 offset:4544
	ds_load_u8 v213, v1 offset:4416
	ds_load_u8 v214, v1 offset:4288
	ds_load_u8 v215, v1 offset:4160
	v_lshl_or_b32 v164, v168, 16, v163
	v_lshl_or_b32 v163, v161, 16, v121
	ds_load_u8 v121, v1 offset:7296
	ds_load_u8 v216, v1 offset:7168
	ds_load_u8 v217, v1 offset:7552
	ds_load_u8 v218, v1 offset:7424
	ds_load_u8 v219, v1 offset:8128
	ds_load_u8 v220, v1 offset:8000
	ds_load_u8 v221, v1 offset:7872
	ds_load_u8 v222, v1 offset:7744
	v_lshl_or_b32 v162, v165, 16, v162
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v170, v176, v172, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v176, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v211, v211, v171, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v216, v216, v121, 0xc0c0004
	v_lshl_or_b32 v161, v170, 16, v169
	ds_load_u8 v223, v1 offset:6784
	ds_load_u8 v224, v1 offset:6656
	ds_load_u8 v225, v1 offset:7040
	ds_load_u8 v226, v1 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[165:168], v117 offset:2048
	ds_load_b128 v[169:172], v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v117, v1 offset:6272
	ds_load_u8 v227, v1 offset:6144
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v121, v1 offset:6528
	ds_load_u8 v218, v1 offset:6400
	ds_load_u8 v231, v1 offset:7104
	ds_load_u8 v232, v1 offset:6976
	ds_load_u8 v233, v1 offset:6848
	ds_load_u8 v234, v1 offset:6720
	v_lshl_or_b32 v176, v211, 16, v176
	ds_load_u8 v211, v1 offset:7616
	ds_load_u8 v228, v1 offset:7488
	ds_load_u8 v229, v1 offset:7360
	ds_load_u8 v230, v1 offset:7232
	v_perm_b32 v185, v215, v214, 0xc0c0004
	v_perm_b32 v186, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[109:116], v[161:164], v[125:128], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v224, v226, v225, 0xc0c0004
	ds_load_u8 v225, v1 offset:6592
	ds_load_u8 v226, v1 offset:6464
	ds_load_u8 v235, v1 offset:6336
	ds_load_u8 v1, v1 offset:6208
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v218, v218, v121, 0xc0c0004
	v_perm_b32 v227, v227, v117, 0xc0c0004
	v_perm_b32 v117, v173, v124, 0xc0c0004
	v_perm_b32 v124, v175, v174, 0xc0c0004
	v_perm_b32 v173, v182, v181, 0xc0c0004
	v_perm_b32 v174, v180, v179, 0xc0c0004
	v_perm_b32 v175, v188, v187, 0xc0c0004
	v_lshl_or_b32 v180, v122, 16, v117
	v_lshl_or_b32 v179, v124, 16, v123
	v_perm_b32 v181, v194, v193, 0xc0c0004
	v_lshl_or_b32 v178, v174, 16, v173
	v_perm_b32 v173, v184, v183, 0xc0c0004
	v_perm_b32 v174, v190, v189, 0xc0c0004
	v_perm_b32 v182, v192, v191, 0xc0c0004
	v_perm_b32 v183, v198, v197, 0xc0c0004
	v_perm_b32 v184, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[177:180], v[149:152], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v152, v173, 16, v16
	v_lshl_or_b32 v151, v175, 16, v174
	v_lshl_or_b32 v150, v182, 16, v181
	v_lshl_or_b32 v149, v184, 16, v183
	v_perm_b32 v16, v202, v201, 0xc0c0004
	v_perm_b32 v173, v200, v199, 0xc0c0004
	v_perm_b32 v174, v206, v205, 0xc0c0004
	v_perm_b32 v175, v204, v203, 0xc0c0004
	v_perm_b32 v181, v210, v209, 0xc0c0004
	v_perm_b32 v182, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v173, 16, v16
	v_lshl_or_b32 v183, v175, 16, v174
	v_perm_b32 v16, v222, v221, 0xc0c0004
	v_lshl_or_b32 v182, v182, 16, v181
	v_lshl_or_b32 v181, v186, 16, v185
	v_perm_b32 v129, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v185, v228, v211, 0xc0c0004
	v_perm_b32 v186, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v235, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[125:128], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v188, v129, 16, v16
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v16, v230, v229, 0xc0c0004
	v_perm_b32 v145, v232, v231, 0xc0c0004
	v_perm_b32 v146, v226, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[125:132], v[157:160], v[141:144], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v217, 16, v216
	v_lshl_or_b32 v174, v224, 16, v223
	v_lshl_or_b32 v173, v218, 16, v227
	v_lshl_or_b32 v187, v185, 16, v16
	v_lshl_or_b32 v186, v145, 16, v186
	v_lshl_or_b32 v185, v146, 16, v1
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[67:70], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[67:70], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[173:176], v[169:172], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[185:188], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[173:176], v[165:168], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[185:188], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s40, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, v108.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s4, s4, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s4, s40, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v69.h, v106.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v16, v65, s4, 1
	v_add_lshl_u32 v65, v66, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v56, v56, s4, 1
	v_add_lshl_u32 v55, v55, s4, 1
	v_add_lshl_u32 v54, v54, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v42, v42, s4, 1
	v_add_lshl_u32 v38, v38, s4, 1
	v_add_lshl_u32 v44, v44, s4, 1
	v_add_lshl_u32 v40, v40, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	v_add_lshl_u32 v36, v36, s4, 1
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	v_mov_b16_e32 v92.h, v104.l
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_mov_b16_e32 v93.h, v103.l
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	v_mov_b16_e32 v95.h, v101.l
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v65, v65, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	s_clause 0x7
	buffer_load_u16 v56, v56, s[20:23], 0 offen
	buffer_load_u16 v55, v55, s[20:23], 0 offen
	buffer_load_u16 v54, v54, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	buffer_load_u16 v66, v36, s[20:23], 0 offen
	v_add_lshl_u32 v64, v64, s4, 1
	v_add_lshl_u32 v63, v63, s4, 1
	v_add_lshl_u32 v62, v62, s4, 1
	v_add_lshl_u32 v61, v61, s4, 1
	v_add_lshl_u32 v60, v60, s4, 1
	v_add_lshl_u32 v59, v59, s4, 1
	v_add_lshl_u32 v58, v58, s4, 1
	v_add_lshl_u32 v57, v57, s4, 1
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	s_clause 0x7
	buffer_load_u16 v64, v64, s[20:23], 0 offen
	buffer_load_u16 v63, v63, s[20:23], 0 offen
	buffer_load_u16 v62, v62, s[20:23], 0 offen
	buffer_load_u16 v61, v61, s[20:23], 0 offen
	buffer_load_u16 v60, v60, s[20:23], 0 offen
	buffer_load_u16 v59, v59, s[20:23], 0 offen
	buffer_load_u16 v58, v58, s[20:23], 0 offen
	buffer_load_u16 v57, v57, s[20:23], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v36.h, v92.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v68.h, v107.l
	v_mov_b16_e32 v70.h, v105.l
	v_mov_b16_e32 v94.h, v102.l
	v_mov_b16_e32 v96.h, v100.l
	v_mov_b16_e32 v97.h, v99.l
	v_mov_b16_e32 v98.h, v98.l
	v_mov_b16_e32 v99.h, v97.l
	v_mov_b16_e32 v100.h, v96.l
	v_mov_b16_e32 v101.h, v95.l
	v_mov_b16_e32 v102.h, v94.l
	v_mov_b16_e32 v103.h, v93.l
	v_mov_b16_e32 v67.l, v36.l
	v_mov_b16_e32 v68.l, v36.l
	v_mov_b16_e32 v69.l, v36.l
	v_mov_b16_e32 v70.l, v36.l
	v_mov_b16_e32 v92.l, v36.l
	v_mov_b16_e32 v93.l, v36.l
	v_mov_b16_e32 v94.l, v36.l
	v_mov_b16_e32 v95.l, v36.l
	v_mov_b16_e32 v96.l, v36.l
	v_mov_b16_e32 v97.l, v36.l
	v_mov_b16_e32 v98.l, v36.l
	v_mov_b16_e32 v99.l, v36.l
	v_mov_b16_e32 v100.l, v36.l
	v_mov_b16_e32 v101.l, v36.l
	v_mov_b16_e32 v102.l, v36.l
	v_mov_b16_e32 v103.l, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v145, v36, v97 :: v_dual_and_b32 v104, 56, v236
	v_mul_f32_e32 v105, v36, v67
	v_mul_f32_e32 v106, v36, v68
	v_mul_f32_e32 v107, v36, v69
	v_mul_f32_e32 v108, v36, v70
	v_mul_f32_e32 v109, v36, v92
	v_mul_f32_e32 v141, v36, v93
	v_mul_f32_e32 v142, v36, v94
	v_mul_f32_e32 v143, v36, v95
	v_mul_f32_e32 v144, v36, v96
	v_mul_f32_e32 v146, v36, v98
	v_mul_f32_e32 v147, v36, v99
	v_mul_f32_e32 v148, v36, v100
	v_mul_f32_e32 v149, v36, v101
	v_mul_f32_e32 v150, v36, v102
	v_mul_f32_e32 v151, v36, v103
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v36.h, v91.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v88, v107, v88, v52
	v_fma_f32 v83, v143, v83, v47
	v_fma_f32 v90, v105, v90, v46
	v_fma_f32 v85, v141, v85, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v36, v92
	v_mul_f32_e32 v92, v36, v93
	v_mul_f32_e32 v93, v36, v94
	v_mul_f32_e32 v67, v36, v67
	v_mul_f32_e32 v69, v36, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v91, v13, v28
	v_fma_f32 v11, v92, v11, v27
	v_fma_f32 v10, v93, v10, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v88, s3
	v_cndmask_b32_e64 v47, v47, v83, s3
	v_cndmask_b32_e64 v13, v28, v13, s3
	v_cndmask_b32_e64 v11, v27, v11, s3
	v_cndmask_b32_e64 v10, v26, v10, s3
	v_cndmask_b32_e64 v46, v46, v90, s3
	v_cndmask_b32_e64 v49, v49, v85, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v145, v81, v43
	v_fma_f32 v86, v109, v86, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s1, s1, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v81, s3
	v_cndmask_b32_e64 v50, v50, v86, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v26, 16, v56
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v27, 16, v55
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v28, 16, v54
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v40, 16, v40
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v54, 16, v66
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v36, v95
	v_mul_f32_e32 v95, v36, v96
	v_mul_f32_e32 v96, v36, v97
	v_dual_mul_f32 v97, v36, v98 :: v_dual_lshlrev_b32 v44, 16, v44
	v_mul_f32_e32 v98, v36, v99
	v_mul_f32_e32 v99, v36, v100
	v_mul_f32_e32 v100, v36, v101
	v_mul_f32_e32 v101, v36, v102
	v_mul_f32_e32 v102, v36, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v94, v9, v25
	v_fma_f32 v4, v99, v4, v20
	v_fma_f32 v3, v100, v3, v19
	v_fma_f32 v2, v101, v2, v18
	v_fma_f32 v12, v102, v12, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v25, v9, s3
	v_cndmask_b32_e64 v4, v20, v4, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v62
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v18, v2, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v18, 16, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v19, v3, s3
	v_cndmask_b32_e64 v12, v17, v12, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v17, 16, v65
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v16, v18
	v_mul_f32_e32 v57, v16, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v95, v8, v24
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v17, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v97, v6, v22
	v_fma_f32 v1, v55, v1, v12
	v_fma_f32 v55, v57, v111, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v24, v8, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v24, 16, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v22, v6, s3
	v_cndmask_b32_e64 v1, v12, v1, s2
	v_cndmask_b32_e64 v3, v3, v55, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v22, 16, v60
	v_lshlrev_b32_e32 v19, 16, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v63, v16, v26
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v98, v5, v21
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v3, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v96, v7, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v65, v16, v28 :: v_dual_mul_f32 v18, v17, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v21, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v21, 16, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v23, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v23, 16, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v16, v22
	v_dual_mul_f32 v61, v16, v24 :: v_dual_mul_f32 v22, v17, v22
	v_mul_f32_e32 v24, v17, v24
	v_mul_f32_e32 v28, v17, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v59, v113, v5
	v_fma_f32 v59, v61, v115, v7
	v_fma_f32 v61, v63, v117, v9
	v_fma_f32 v63, v65, v119, v11
	v_fma_f32 v84, v142, v84, v48
	v_fma_f32 v82, v144, v82, v45
	v_fma_f32 v80, v146, v80, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v61, s2
	v_cndmask_b32_e64 v11, v11, v63, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v16, v21
	v_mul_f32_e32 v21, v17, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v150, v76, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v56, v16, v19 :: v_dual_max_f32 v9, v9, v9
	v_mul_f32_e32 v19, v17, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v148, v78, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v76, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v36, v68
	v_mul_f32_e32 v70, v36, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v84, s3
	v_cndmask_b32_e64 v45, v45, v82, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v19, v126, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v80, s3
	v_cndmask_b32_e64 v37, v37, v78, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v16, v23
	v_mul_f32_e32 v64, v16, v27
	v_mul_f32_e32 v23, v17, v23
	v_mul_f32_e32 v27, v17, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v34, v19, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v16, v25
	v_mul_f32_e32 v25, v17, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v151, v75, v33
	v_fma_f32 v67, v67, v74, v32
	v_fma_f32 v68, v68, v73, v31
	v_fma_f32 v69, v69, v72, v30
	v_fma_f32 v21, v21, v128, v37
	v_fma_f32 v23, v23, v130, v41
	v_fma_f32 v25, v25, v132, v45
	v_fma_f32 v27, v27, v134, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v75, s3
	v_cndmask_b32_e64 v32, v32, v67, s3
	v_cndmask_b32_e64 v31, v31, v68, s3
	v_cndmask_b32_e64 v30, v30, v69, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v16, v38
	v_dual_mul_f32 v69, v16, v40 :: v_dual_mul_f32 v26, v17, v26
	v_mul_f32_e32 v38, v17, v38
	v_dual_mul_f32 v40, v17, v40 :: v_dual_max_f32 v1, 0, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v37, v21, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v16, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v41, v23, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v16, v44
	v_mul_f32_e32 v44, v17, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v45, v25, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v16, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v48, v27, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v17, v42
	v_mul_f32_e32 v17, v17, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v56, v110, v2
	v_fma_f32 v18, v18, v125, v33
	v_fma_f32 v26, v26, v133, v47
	v_fma_f32 v44, v44, v138, v52
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, v11, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v58, v112, v4
	v_fma_f32 v58, v60, v114, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v54, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v149, v77, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v59, s2
	v_cndmask_b32_e64 v18, v33, v18, s2
	v_cndmask_b32_e64 v6, v6, v58, s2
	v_cndmask_b32_e64 v26, v47, v26, s2
	v_cndmask_b32_e64 v33, v52, v44, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, 0, v3
	v_max_f32_e32 v25, v25, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v124, v32
	v_fma_f32 v70, v70, v71, v29
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v19, v19, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v60, v62, v116, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v77, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v64, v118, v10
	v_fma_f32 v28, v28, v135, v49
	v_fma_f32 v17, v17, v140, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v56, s2
	v_cndmask_b32_e64 v5, v5, v57, s2
	v_cndmask_b32_e64 v16, v32, v16, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v6, v6, v6
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v33, v33, v33
	v_max_f32_e32 v2, 0, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v106, v89, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v70, s3
	v_cndmask_b32_e64 v8, v8, v60, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v147, v79, v39
	v_fma_f32 v20, v20, v127, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v62, s2
	v_cndmask_b32_e64 v28, v49, v28, s2
	v_cndmask_b32_e64 v17, v46, v17, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v6, 0, v6
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v1, v1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v33, 0, v33 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v53, v89, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v67, v121, v29
	v_fma_f32 v67, v69, v123, v31
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v9, 0, v9
	v_max_f32_e32 v21, v21, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v66, v120, v13
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v23, v23, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v68, v122, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v79, s3
	v_cndmask_b32_e64 v20, v35, v20, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v17, v17, v17
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v4, 0, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v35, s35, v14
	v_mul_lo_u32 v37, s35, v15
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v15.l, v1.h
	v_mov_b16_e32 v15.h, v36.l
	v_mov_b16_e32 v14.h, v36.l
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v139, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v13, v64, s2
	v_cndmask_b32_e64 v13, v29, v65, s2
	v_cndmask_b32_e64 v29, v30, v66, s2
	v_cndmask_b32_e64 v30, v31, v67, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v129, v39
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v10, 0, v10 :: v_dual_and_b32 v15, 1, v15
	v_dual_max_f32 v17, 0, v17 :: v_dual_and_b32 v14, 1, v14
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v53, v40, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v30, v30, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v3.h
	v_mov_b16_e32 v40.h, v36.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v39, v22, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v1, v15, 0x7fff
	v_add3_u32 v2, v2, v14, 0x7fff
	v_mov_b16_e32 v14.l, v4.h
	v_mov_b16_e32 v14.h, v36.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v12, 0, v12
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v5, v5, v5
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, 0, v30
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v15, 1, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v131, v43
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v25, 0, v25
	v_max_f32_e32 v16, 0, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v1, 1, v14
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v21, 0, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v15, 0x7fff
	v_mov_b16_e32 v14.l, v6.h
	v_mov_b16_e32 v15.l, v5.h
	v_mov_b16_e32 v15.h, v36.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v43, v24, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, 0, v22 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v7, v7
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v18, 0, v18
	v_dual_max_f32 v20, 0, v20 :: v_dual_and_b32 v7, 1, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v3.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v3, 1, v15
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v24, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v4.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.l, v8.h
	v_mov_b16_e32 v6.h, v36.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v24, 0, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v108, v87, v51
	v_fma_f32 v42, v42, v136, v50
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v28, 0, v28
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v10, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v3, 1, v6
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v7.l, v9.h
	v_mov_b16_e32 v7.h, v36.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v87, s3
	v_cndmask_b32_e64 v31, v50, v42, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v10.h
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v11, v11
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v26, 0, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v4, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v12, v12
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v31, v31, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v137, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v36.l
	v_add3_u32 v4, v9, v4, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v36.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v51, v38, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v10, v6, 0x7fff
	v_and_b32_e32 v10, 1, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v13, v13
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v34, v34, v34 :: v_dual_mul_f32 v11, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_and_b32_e32 v4, 1, v9
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v31, 0, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v10.l, v12.h
	v_mov_b16_e32 v10.h, v36.l
	v_mov_b16_e32 v9.l, v11.h
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v32, 0, v32 :: v_dual_mul_f32 v7, v30, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v8.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v17, v17, v17 :: v_dual_and_b32 v8, 1, v10
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v34, 0, v34 :: v_dual_and_b32 v9, 1, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v7.h
	v_mov_b16_e32 v13.h, v36.l
	v_add3_u32 v8, v12, v8, 0x7fff
	v_add3_u32 v9, v11, v9, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v36.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v8.h
	v_and_b32_e32 v12, 1, v13
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v19, v19
	v_dual_mul_f32 v19, v24, v24 :: v_dual_and_b32 v8, 1, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v36.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.l, v14.h
	v_mov_b16_e32 v12.h, v36.l
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v8, v10, v8, 0x7fff
	v_mov_b16_e32 v8.l, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v18, v25, v25 :: v_dual_and_b32 v7, 1, v12
	v_dual_mul_f32 v12, v21, v21 :: v_dual_and_b32 v11, 1, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v36.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s2, s34, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v14, v7, 0x7fff
	v_add3_u32 v11, v13, v11, 0x7fff
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v36.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s2, s2, s33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v22, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.h, v36.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v20, v20 :: v_dual_and_b32 v13, 1, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v19.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v16.l, v7.h
	v_mov_b16_e32 v20.h, v36.l
	v_mov_b16_e32 v15.l, v10.h
	v_add3_u32 v12, v12, v13, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v38, s2, v104
	v_add3_u32 v39, s2, v104, 64
	s_mov_b32 s2, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v15
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_mov_b32 s3, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v14, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v36.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v12.l, v10.h
	v_and_b32_e32 v13, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v15, v13, 0x7fff
	v_and_b32_e32 v14, 1, v16
	v_mov_b16_e32 v16.l, v18.h
	v_and_b32_e32 v13, 1, v20
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v27, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v14, 1, v16
	v_add3_u32 v13, v19, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v19.h, v36.l
	v_mov_b16_e32 v10.l, v7.h
	v_add3_u32 v14, v18, v14, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v18, v28, v28 :: v_dual_mul_f32 v7, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v13.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v20, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v21.l, v18.h
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v22.l, v20.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v13, v15, v16, 0x7fff
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v19, 1, v19
	v_and_b32_e32 v15, 1, v22
	v_mov_b16_e32 v22.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v18, v21, 0x7fff
	v_add3_u32 v7, v7, v19, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v20, v15, 0x7fff
	v_mov_b16_e32 v20.h, v36.l
	v_mov_b16_e32 v15.l, v16.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v16, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v18.h
	v_mov_b16_e32 v21.h, v36.l
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v19.h, v36.l
	v_mov_b16_e32 v19.l, v7.h
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v21, 1, v21
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v18, v18, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v16, v16, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v7.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v17, v20, 0x7fff
	v_mov_b16_e32 v0.l, v16.h
	v_cndmask_b32_e32 v16, v5, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_cndmask_b32_e32 v17, v9, v6, vcc_lo
	v_dual_cndmask_b32 v3, v6, v9 :: v_dual_mov_b32 v6, 0x5410
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v9, v8, v4
	v_dual_cndmask_b32 v4, v4, v8 :: v_dual_cndmask_b32 v19, v10, v11
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v18 :: v_dual_cndmask_b32 v11, v14, v12
	v_cndmask_b32_e32 v12, v12, v14, vcc_lo
	v_cndmask_b32_e32 v14, v7, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v7, v13, v7, vcc_lo
	v_permlanex16_b32 v13, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v18, v0, v15, vcc_lo
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v10, 0x760076, v10
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v2, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v4, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v6, 4, v6
	v_lshl_or_b32 v6, v10, 4, v10
	v_permlanex16_b32 v10, v3, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_and_b32_e32 v22, 0x7060706, v6
	v_permlanex16_b32 v23, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s2, s10
	v_perm_b32 v0, v2, v16, v21
	v_perm_b32 v1, v2, v16, v22
	v_perm_b32 v2, v13, v5, v21
	v_perm_b32 v3, v13, v5, v22
	v_add_lshl_u32 v16, v38, v35, 1
	v_perm_b32 v4, v10, v17, v21
	v_perm_b32 v5, v10, v17, v22
	v_perm_b32 v6, v15, v9, v21
	v_perm_b32 v7, v15, v9, v22
	v_add_lshl_u32 v17, v39, v35, 1
	v_perm_b32 v8, v20, v19, v21
	v_perm_b32 v9, v20, v19, v22
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v22
	v_perm_b32 v12, v23, v14, v21
	v_perm_b32 v13, v23, v14, v22
	v_perm_b32 v14, v24, v18, v21
	v_perm_b32 v15, v24, v18, v22
	v_add_lshl_u32 v18, v38, v37, 1
	v_add_lshl_u32 v19, v39, v37, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v17, s[0:3], 0 offen
	buffer_store_b128 v[8:11], v18, s[0:3], 0 offen
	buffer_store_b128 v[12:15], v19, s[0:3], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14768
; TotalNumSgprs: 47
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 256
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
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
