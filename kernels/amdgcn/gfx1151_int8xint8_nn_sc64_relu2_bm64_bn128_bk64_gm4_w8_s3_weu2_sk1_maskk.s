	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v67, 4, v0
	v_lshrrev_b32_e32 v68, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v236, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v71, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v69, 48, v67
	v_or_b32_e32 v70, 32, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v72, 48, v236
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s31, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s16, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v67
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[9:10], null, s27, v68, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v73, s27, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s17, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s17, s17, s4
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v10, v68, 16, v71
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s5, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s18, s4, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v11, 32, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s16
	s_mov_b64 s[28:29], s[14:15]
	s_cselect_b32 s4, s18, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s18, s31, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s18, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s3, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s3, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s16
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s30, v69
	v_or_b32_e32 v3, s30, v68
	v_or_b32_e32 v4, s30, v70
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s18, s4
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s3, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s27, s30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s18, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v3
	v_cmp_gt_i32_e64 s4, s31, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s26, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s7, s33, s31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s5, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add3_u32 v74, v2, v69, s7
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s2, s2, s3
	s_cmpk_gt_i32 s18, 0x7f
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s30, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s5, v73
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s30, v74
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s34, v69
	v_or_b32_e32 v5, s34, v68
	v_or_b32_e32 v6, s34, v70
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_lshl_b32 s4, s27, 6
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s34, v74
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[22:25], v1, s[36:39], 0 offen
	buffer_load_b128 v[26:29], v2, s[36:39], 0 offen
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s5, v9
	v_add_nc_u32_e32 v2, s5, v73
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s31, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[30:33], v3, s[8:11], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s16, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	s_cmpk_gt_i32 s18, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_add_nc_u32_e32 v46, 0, v67
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[34:37], v3, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[38:41], v1, s[36:39], 0 offen
	buffer_load_b128 v[42:45], v2, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v1, 1, v72
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v75, v67, v3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v13, 8, v2
	v_or_b32_e32 v14, 10, v2
	v_or_b32_e32 v15, 12, v2
	v_or_b32_e32 v16, 14, v2
	v_or_b32_e32 v17, 64, v2
	v_or_b32_e32 v18, 0x42, v2
	v_or_b32_e32 v19, 0x44, v2
	v_or_b32_e32 v20, 0x46, v2
	v_or_b32_e32 v21, 0x48, v2
	v_or_b32_e32 v3, 0x4a, v2
	v_or_b32_e32 v4, 0x4c, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v47, 0, v75
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 0x4e, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v46, v[26:29] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v47, v[30:33] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v46, v[22:25]
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
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v71, 6, v22
	v_xor_b32_e32 v65, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v64, 48, v63
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr64
.LBB0_3:                                ; %Flow43
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v22, s33, v10
	v_or_b32_e32 v23, s33, v11
	s_ashr_i32 s35, s6, 6
	v_or_b32_e32 v60, s26, v2
	v_or_b32_e32 v59, s26, v6
	v_mul_lo_u32 v61, v22, s35
	v_mul_lo_u32 v62, v23, s35
	v_or_b32_e32 v58, s26, v7
	v_or_b32_e32 v57, s26, v8
	v_or_b32_e32 v56, s26, v13
	v_or_b32_e32 v55, s26, v14
	v_or_b32_e32 v54, s26, v15
	v_or_b32_e32 v53, s26, v16
	v_or_b32_e32 v52, s26, v17
	v_or_b32_e32 v51, s26, v18
	v_or_b32_e32 v50, s26, v19
	v_or_b32_e32 v38, s26, v20
	v_or_b32_e32 v34, s26, v21
	v_or_b32_e32 v40, s26, v3
	v_or_b32_e32 v36, s26, v4
	v_or_b32_e32 v32, s26, v5
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v1, 0x430, v1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v63, v71, 6, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v8, s23
	v_xor_b32_e32 v65, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v64, 48, v63
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v49, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s44, s35, 3
	s_add_i32 s15, s34, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s44, s44, -3
	s_mov_b32 s45, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s19, s16
	s_mov_b32 s16, s1
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s17, 6
	s_mov_b32 s18, s14
	s_mov_b32 s14, s0
	s_mov_b32 s0, s30
	s_mov_b32 s30, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s15, s1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v81, s34, v69
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v77, s18, v63
	v_add_nc_u32_e32 v78, s18, v65
	v_add_nc_u32_e32 v79, s18, v66
	v_add_nc_u32_e32 v80, s18, v64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s34, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v82, s34, v68
	v_or_b32_e32 v83, s34, v70
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s18, s18, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v84, s34, v74
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v81
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v85, s18, v9
	v_add_nc_u32_e32 v86, s18, v73
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s0, 6
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v82
	v_cmp_gt_i32_e64 s1, s31, v83
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v82, v61, s18, 1
	v_add_lshl_u32 v83, v62, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s18, s27
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v81, 0x80000000, v84, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v84, v60, s18, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v87, v59, s18, 1
	v_add_lshl_u32 v88, v58, s18, 1
	v_add_lshl_u32 v89, v57, s18, 1
	v_add_lshl_u32 v90, v56, s18, 1
	v_add_lshl_u32 v91, v55, s18, 1
	v_add_lshl_u32 v96, v54, s18, 1
	v_add_lshl_u32 v97, v53, s18, 1
	v_add_lshl_u32 v98, v52, s18, 1
	v_add_lshl_u32 v99, v51, s18, 1
	v_add_lshl_u32 v100, v50, s18, 1
	v_add_lshl_u32 v101, v38, s18, 1
	v_add_lshl_u32 v102, v34, s18, 1
	v_add_lshl_u32 v103, v40, s18, 1
	v_add_lshl_u32 v104, v36, s18, 1
	v_add_lshl_u32 v105, v32, s18, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v84, 0x80000000, v84 :: v_dual_cndmask_b32 v87, 0x80000000, v87
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[108:111], v81, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v188, v82, s[4:7], 0 offen
	buffer_load_u16 v189, v83, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v190, v84, s[40:43], 0 offen
	buffer_load_u16 v191, v87, s[40:43], 0 offen
	buffer_load_u16 v192, v88, s[40:43], 0 offen
	buffer_load_u16 v193, v89, s[40:43], 0 offen
	buffer_load_u16 v194, v90, s[40:43], 0 offen
	buffer_load_u16 v195, v91, s[40:43], 0 offen
	buffer_load_u16 v196, v96, s[40:43], 0 offen
	buffer_load_u16 v197, v97, s[40:43], 0 offen
	buffer_load_u16 v198, v98, s[40:43], 0 offen
	buffer_load_u16 v199, v99, s[40:43], 0 offen
	buffer_load_u16 v200, v100, s[40:43], 0 offen
	buffer_load_u16 v201, v101, s[40:43], 0 offen
	buffer_load_u16 v202, v102, s[40:43], 0 offen
	buffer_load_u16 v203, v103, s[40:43], 0 offen
	buffer_load_u16 v204, v104, s[40:43], 0 offen
	buffer_load_u16 v205, v105, s[40:43], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	v_cndmask_b32_e64 v86, 0x80000000, v86, s1
	s_clause 0x1
	buffer_load_b128 v[140:143], v85, s[36:39], 0 offen
	buffer_load_b128 v[144:147], v86, s[36:39], 0 offen
	v_add3_u32 v76, s19, v71, v72
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[92:95], v77
	ds_load_b128 v[112:115], v77 offset:2048
	ds_load_b128 v[116:119], v78
	ds_load_b128 v[120:123], v78 offset:2048
	ds_load_b128 v[124:127], v79
	ds_load_b128 v[128:131], v79 offset:2048
	ds_load_b128 v[132:135], v80
	ds_load_b128 v[136:139], v80 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v77, v76 offset:3712
	ds_load_u8 v78, v76 offset:3584
	ds_load_u8 v79, v76 offset:3968
	ds_load_u8 v80, v76 offset:7296
	ds_load_u8 v81, v76 offset:7168
	ds_load_u8 v106, v76 offset:7552
	ds_load_u8 v107, v76 offset:7424
	ds_load_u8 v148, v76 offset:6784
	ds_load_u8 v149, v76 offset:6656
	ds_load_u8 v150, v76 offset:7040
	ds_load_u8 v151, v76 offset:6912
	ds_load_u8 v152, v76 offset:6272
	ds_load_u8 v153, v76 offset:6144
	ds_load_u8 v154, v76 offset:6528
	ds_load_u8 v155, v76 offset:6400
	ds_load_u8 v156, v76 offset:1664
	ds_load_u8 v157, v76 offset:1536
	ds_load_u8 v158, v76 offset:1920
	ds_load_u8 v159, v76 offset:1792
	ds_load_u8 v160, v76 offset:1984
	ds_load_u8 v161, v76 offset:1856
	ds_load_u8 v162, v76 offset:1728
	ds_load_u8 v163, v76 offset:1600
	ds_load_u8 v164, v76 offset:1152
	ds_load_u8 v165, v76 offset:1024
	ds_load_u8 v166, v76 offset:1408
	ds_load_u8 v167, v76 offset:1280
	ds_load_u8 v168, v76 offset:1472
	ds_load_u8 v169, v76 offset:1344
	ds_load_u8 v170, v76 offset:1216
	ds_load_u8 v171, v76 offset:1088
	ds_load_u8 v172, v76 offset:640
	ds_load_u8 v173, v76 offset:512
	ds_load_u8 v174, v76 offset:896
	ds_load_u8 v175, v76 offset:768
	ds_load_u8 v176, v76 offset:960
	ds_load_u8 v177, v76 offset:832
	ds_load_u8 v178, v76 offset:704
	ds_load_u8 v179, v76 offset:576
	ds_load_u8 v180, v76 offset:128
	ds_load_u8 v181, v76
	ds_load_u8 v182, v76 offset:384
	ds_load_u8 v183, v76 offset:256
	ds_load_u8 v184, v76 offset:448
	ds_load_u8 v185, v76 offset:320
	ds_load_u8 v186, v76 offset:192
	ds_load_u8 v187, v76 offset:64
	ds_load_u8 v82, v76 offset:3840
	ds_load_u8 v83, v76 offset:4032
	ds_load_u8 v84, v76 offset:3904
	ds_load_u8 v87, v76 offset:3776
	ds_load_u8 v88, v76 offset:3648
	ds_load_u8 v89, v76 offset:3200
	ds_load_u8 v90, v76 offset:3072
	ds_load_u8 v91, v76 offset:3456
	ds_load_u8 v96, v76 offset:3328
	ds_load_u8 v97, v76 offset:3520
	ds_load_u8 v98, v76 offset:3392
	ds_load_u8 v99, v76 offset:3264
	ds_load_u8 v85, v76 offset:3136
	ds_load_u8 v86, v76 offset:2688
	ds_load_u8 v100, v76 offset:2560
	ds_load_u8 v101, v76 offset:2944
	ds_load_u8 v102, v76 offset:2816
	ds_load_u8 v103, v76 offset:3008
	ds_load_u8 v104, v76 offset:2880
	ds_load_u8 v105, v76 offset:2752
	ds_load_u8 v206, v76 offset:2624
	ds_load_u8 v207, v76 offset:2176
	ds_load_u8 v208, v76 offset:2048
	ds_load_u8 v209, v76 offset:2432
	ds_load_u8 v210, v76 offset:2304
	ds_load_u8 v211, v76 offset:2496
	ds_load_u8 v212, v76 offset:2368
	ds_load_u8 v213, v76 offset:2240
	ds_load_u8 v214, v76 offset:2112
	ds_load_u8 v215, v76 offset:5760
	ds_load_u8 v216, v76 offset:5632
	ds_load_u8 v217, v76 offset:6016
	ds_load_u8 v218, v76 offset:5888
	ds_load_u8 v219, v76 offset:6080
	ds_load_u8 v220, v76 offset:5952
	ds_load_u8 v221, v76 offset:5824
	ds_load_u8 v222, v76 offset:5696
	ds_load_u8 v223, v76 offset:5248
	ds_load_u8 v224, v76 offset:5120
	ds_load_u8 v225, v76 offset:5504
	ds_load_u8 v226, v76 offset:5376
	ds_load_u8 v227, v76 offset:5568
	ds_load_u8 v228, v76 offset:5440
	ds_load_u8 v229, v76 offset:5312
	ds_load_u8 v230, v76 offset:5184
	ds_load_u8 v231, v76 offset:4736
	ds_load_u8 v232, v76 offset:4608
	ds_load_u8 v233, v76 offset:4992
	ds_load_u8 v234, v76 offset:4864
	ds_load_u8 v235, v76 offset:5056
	ds_load_u8 v236, v76 offset:4928
	ds_load_u8 v237, v76 offset:4800
	ds_load_u8 v238, v76 offset:4672
	ds_load_u8 v239, v76 offset:4224
	ds_load_u8 v240, v76 offset:4096
	ds_load_u8 v241, v76 offset:4480
	ds_load_u8 v242, v76 offset:4352
	ds_load_u8 v243, v76 offset:4544
	ds_load_u8 v244, v76 offset:4416
	ds_load_u8 v245, v76 offset:4288
	ds_load_u8 v246, v76 offset:4160
	ds_load_u8 v247, v76 offset:7808
	ds_load_u8 v248, v76 offset:7680
	ds_load_u8 v249, v76 offset:8064
	ds_load_u8 v250, v76 offset:7936
	ds_load_u8 v251, v76 offset:8128
	ds_load_u8 v252, v76 offset:8000
	ds_load_u8 v253, v76 offset:7872
	ds_load_u8 v254, v76 offset:7744
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v76 offset:7616
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v76 offset:7488
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v76 offset:7360
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v76 offset:7232
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v76 offset:7104
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v76 offset:6976
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v76 offset:6848
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v76 offset:6720
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v76 offset:6592
	v_perm_b32 v79, v82, v79, 0xc0c0004
	ds_load_u8 v82, v76 offset:6464
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v76 offset:6336
	ds_load_u8 v76, v76 offset:6208
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v161, v171, v170, 0xc0c0004
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v169, v179, v178, 0xc0c0004
	v_perm_b32 v170, v177, v176, 0xc0c0004
	v_perm_b32 v171, v187, v186, 0xc0c0004
	v_perm_b32 v176, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v91, v96, v91, 0xc0c0004
	v_perm_b32 v86, v100, v86, 0xc0c0004
	v_perm_b32 v96, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v208, v210, v209, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v107, v106, 0xc0c0004
	v_perm_b32 v106, v149, v148, 0xc0c0004
	v_perm_b32 v107, v151, v150, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v84, v85, v99, 0xc0c0004
	v_perm_b32 v85, v98, v97, 0xc0c0004
	v_perm_b32 v88, v206, v105, 0xc0c0004
	v_perm_b32 v97, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v98, v214, v213, 0xc0c0004
	v_perm_b32 v99, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v104, v222, v221, 0xc0c0004
	v_perm_b32 v105, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v90, 0xc0c0004
	v_perm_b32 v78, v82, v78, 0xc0c0004
	v_lshl_or_b32 v103, v158, 16, v156
	v_lshl_or_b32 v102, v166, 16, v164
	v_lshl_or_b32 v101, v174, 16, v172
	v_lshl_or_b32 v100, v182, 16, v180
	v_lshl_or_b32 v163, v160, 16, v162
	v_lshl_or_b32 v162, v168, 16, v161
	v_lshl_or_b32 v161, v170, 16, v169
	v_lshl_or_b32 v160, v176, 16, v171
	v_perm_b32 v209, v216, v215, 0xc0c0004
	v_perm_b32 v210, v218, v217, 0xc0c0004
	v_perm_b32 v215, v224, v223, 0xc0c0004
	v_perm_b32 v216, v226, v225, 0xc0c0004
	v_perm_b32 v217, v232, v231, 0xc0c0004
	v_perm_b32 v218, v234, v233, 0xc0c0004
	v_perm_b32 v223, v240, v239, 0xc0c0004
	v_perm_b32 v224, v242, v241, 0xc0c0004
	v_perm_b32 v177, v230, v229, 0xc0c0004
	v_perm_b32 v178, v228, v227, 0xc0c0004
	v_perm_b32 v179, v238, v237, 0xc0c0004
	v_perm_b32 v184, v236, v235, 0xc0c0004
	v_perm_b32 v185, v246, v245, 0xc0c0004
	v_perm_b32 v186, v244, v243, 0xc0c0004
	v_perm_b32 v211, v167, v165, 0xc0c0004
	v_perm_b32 v212, v159, v157, 0xc0c0004
	v_lshl_or_b32 v151, v79, 16, v77
	v_lshl_or_b32 v150, v91, 16, v89
	v_lshl_or_b32 v149, v96, 16, v86
	v_lshl_or_b32 v148, v208, 16, v207
	v_lshl_or_b32 v158, v81, 16, v80
	v_lshl_or_b32 v157, v107, 16, v106
	v_lshl_or_b32 v167, v83, 16, v87
	v_lshl_or_b32 v166, v85, 16, v84
	v_lshl_or_b32 v165, v97, 16, v88
	v_lshl_or_b32 v164, v99, 16, v98
	v_lshl_or_b32 v171, v105, 16, v104
	v_lshl_or_b32 v172, v78, 16, v76
	v_wmma_i32_16x16x16_iu8 v[76:83], v[100:103], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[160:163], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[100:103], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[160:163], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v231, v153, v152, 0xc0c0004
	v_perm_b32 v232, v155, v154, 0xc0c0004
	v_lshl_or_b32 v155, v210, 16, v209
	v_lshl_or_b32 v154, v216, 16, v215
	v_lshl_or_b32 v153, v218, 16, v217
	v_lshl_or_b32 v152, v224, 16, v223
	v_lshl_or_b32 v170, v178, 16, v177
	v_lshl_or_b32 v169, v184, 16, v179
	v_lshl_or_b32 v168, v186, 16, v185
	v_wmma_i32_16x16x16_iu8 v[92:99], v[148:151], v[120:123], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[164:167], v[120:123], v[100:107] neg_lo:[1,1,0]
	v_perm_b32 v225, v248, v247, 0xc0c0004
	v_perm_b32 v226, v250, v249, 0xc0c0004
	v_perm_b32 v187, v254, v253, 0xc0c0004
	v_perm_b32 v206, v252, v251, 0xc0c0004
	v_perm_b32 v181, v183, v181, 0xc0c0004
	v_perm_b32 v173, v175, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[76:83], v[148:151], v[116:119], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[152:155], v[128:131], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[168:171], v[128:131], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v159, v226, 16, v225
	v_lshl_or_b32 v156, v232, 16, v231
	v_lshl_or_b32 v175, v206, 16, v187
	v_lshl_or_b32 v174, v212, 16, v211
	v_lshl_or_b32 v173, v173, 16, v181
	v_wmma_i32_16x16x16_iu8 v[84:91], v[164:167], v[116:119], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[152:155], v[124:127], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[156:159], v[136:139], v[92:99] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s18, s45, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[100:107], v[172:175], v[136:139], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[168:171], v[124:127], v[84:91] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s18, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[76:83], v[156:159], v[132:135], v[76:83] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s45, s18, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v92, v92
	v_wmma_i32_16x16x16_iu8 v[84:91], v[172:175], v[132:135], v[84:91] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s45, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s19, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s19, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
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
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s18, s17, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s0, s19, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s44
	s_mov_b32 s17, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v112, 16, v188
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v128, 16, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v152, v112, v128 :: v_dual_lshlrev_b32 v119, 16, v195
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v122, 16, v198
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v113, 16, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v135, v112, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v27, v152, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v138, v112, v122 :: v_dual_lshlrev_b32 v127, 16, v203
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v116, 16, v192
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v129, 16, v205
	v_lshlrev_b32_e32 v123, 16, v199
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v151, v112, v127 :: v_dual_lshlrev_b32 v126, 16, v202
	v_dual_mul_f32 v132, v112, v116 :: v_dual_lshlrev_b32 v125, 16, v201
	v_mul_f32_e32 v116, v113, v116
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v114, 16, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v150, v112, v126 :: v_dual_lshlrev_b32 v117, 16, v193
	v_mul_f32_e32 v149, v112, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v130, v112, v114 :: v_dual_lshlrev_b32 v121, 16, v197
	v_mul_f32_e32 v114, v113, v114
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v124, 16, v200
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v137, v112, v121 :: v_dual_add_nc_u32 v12, s1, v67
	v_dual_mul_f32 v121, v113, v121 :: v_dual_lshlrev_b32 v120, 16, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v148, v112, v124 :: v_dual_lshlrev_b32 v115, 16, v191
	v_dual_mul_f32 v133, v112, v117 :: v_dual_lshlrev_b32 v118, 16, v194
	v_mul_f32_e32 v139, v112, v123
	v_mul_f32_e32 v131, v112, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v115, v113, v115 :: v_dual_mul_f32 v134, v112, v118
	v_mul_f32_e32 v117, v113, v117
	v_dual_mul_f32 v136, v112, v120 :: v_dual_add_nc_u32 v255, s19, v75
	v_mul_f32_e32 v118, v113, v118
	v_mul_f32_e32 v119, v113, v119
	v_mul_f32_e32 v120, v113, v120
	v_mul_f32_e32 v112, v112, v129
	v_dual_mul_f32 v122, v113, v122 :: v_dual_fmac_f32 v13, v130, v76
	v_mul_f32_e32 v123, v113, v123
	v_dual_mul_f32 v124, v113, v124 :: v_dual_fmac_f32 v15, v132, v78
	v_mul_f32_e32 v125, v113, v125
	v_dual_mul_f32 v126, v113, v126 :: v_dual_fmac_f32 v17, v134, v80
	v_dual_mul_f32 v127, v113, v127 :: v_dual_fmac_f32 v14, v131, v77
	v_dual_mul_f32 v128, v113, v128 :: v_dual_fmac_f32 v19, v136, v82
	v_dual_mul_f32 v113, v113, v129 :: v_dual_fmac_f32 v28, v112, v91
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v16, v133, v79 :: v_dual_fmac_f32 v21, v138, v84
	v_dual_fmac_f32 v18, v135, v81 :: v_dual_fmac_f32 v23, v148, v86
	v_dual_fmac_f32 v20, v137, v83 :: v_dual_fmac_f32 v25, v150, v88
	v_fmac_f32_e32 v22, v139, v85
	v_dual_fmac_f32 v24, v149, v87 :: v_dual_fmac_f32 v29, v114, v92
	v_dual_fmac_f32 v26, v151, v89 :: v_dual_fmac_f32 v31, v116, v94
	v_dual_fmac_f32 v30, v115, v93 :: v_dual_fmac_f32 v33, v117, v95
	v_dual_fmac_f32 v35, v118, v96 :: v_dual_fmac_f32 v44, v123, v101
	v_dual_fmac_f32 v37, v119, v97 :: v_dual_fmac_f32 v46, v125, v103
	v_dual_fmac_f32 v39, v120, v98 :: v_dual_fmac_f32 v48, v127, v105
	v_fmac_f32_e32 v41, v121, v99
	v_dual_fmac_f32 v43, v122, v100 :: v_dual_fmac_f32 v42, v113, v107
	v_fmac_f32_e32 v45, v124, v102
	v_fmac_f32_e32 v47, v126, v104
	v_fmac_f32_e32 v49, v128, v106
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v255, v[108:111] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v12, v[140:143]
	s_waitcnt vmcnt(0)
	ds_store_b128 v12, v[144:147] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_lshrrev_b32_e32 v236, 1, v0
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v109, v72, v71
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
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
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v12, s16, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v68, v12 offset:1664
	ds_load_u8 v69, v12 offset:1536
	ds_load_u8 v70, v12 offset:1920
	ds_load_u8 v71, v12 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, s14, v66
	v_add_nc_u32_e32 v67, s14, v65
	ds_load_b128 v[2:5], v6 offset:2048
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[77:80], v67 offset:2048
	ds_load_b128 v[99:102], v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v67, v12 offset:1152
	ds_load_u8 v73, v12 offset:1024
	ds_load_u8 v74, v12 offset:1408
	ds_load_u8 v75, v12 offset:1280
	ds_load_u8 v76, v12 offset:640
	ds_load_u8 v82, v12 offset:512
	ds_load_u8 v83, v12 offset:896
	ds_load_u8 v84, v12 offset:768
	ds_load_u8 v91, v12 offset:1984
	ds_load_u8 v92, v12 offset:1856
	ds_load_u8 v93, v12 offset:1728
	ds_load_u8 v94, v12 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v72, s14, v63
	v_add_nc_u32_e32 v81, s14, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v67, v73, v67, 0xc0c0004
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v73, v75, v74, 0xc0c0004
	v_perm_b32 v69, v71, v70, 0xc0c0004
	ds_load_u8 v70, v12 offset:128
	ds_load_u8 v71, v12
	ds_load_u8 v85, v12 offset:384
	ds_load_u8 v86, v12 offset:256
	ds_load_u8 v95, v12 offset:1472
	ds_load_u8 v96, v12 offset:1344
	ds_load_u8 v97, v12 offset:1216
	ds_load_u8 v98, v12 offset:1088
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v74, v82, v76, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v75, v84, v83, 0xc0c0004
	v_lshl_or_b32 v116, v73, 16, v67
	v_lshl_or_b32 v117, v69, 16, v68
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_lshl_or_b32 v115, v75, 16, v74
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v86, v85, 0xc0c0004
	v_dual_mov_b32 v90, s11 :: v_dual_mov_b32 v89, s10
	v_mov_b32_e32 v85, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v72 offset:2048
	ds_load_b128 v[103:106], v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v114, v70, 16, v69
	ds_load_u8 v69, v12 offset:3200
	ds_load_u8 v70, v12 offset:3072
	ds_load_u8 v75, v12 offset:3456
	ds_load_u8 v76, v12 offset:3328
	ds_load_u8 v118, v12 offset:2688
	ds_load_u8 v119, v12 offset:2560
	ds_load_u8 v120, v12 offset:2944
	ds_load_u8 v121, v12 offset:2816
	ds_load_u8 v122, v12 offset:2176
	ds_load_u8 v123, v12 offset:2048
	ds_load_u8 v124, v12 offset:2432
	ds_load_u8 v125, v12 offset:2304
	ds_load_u8 v142, v12 offset:4032
	ds_load_u8 v143, v12 offset:3904
	ds_load_u8 v144, v12 offset:3776
	ds_load_u8 v145, v12 offset:3648
	ds_load_u8 v71, v12 offset:3712
	ds_load_u8 v72, v12 offset:3584
	ds_load_u8 v73, v12 offset:3968
	ds_load_u8 v74, v12 offset:3840
	ds_load_u8 v107, v12 offset:960
	ds_load_u8 v108, v12 offset:832
	ds_load_u8 v134, v12 offset:704
	ds_load_u8 v135, v12 offset:576
	ds_load_u8 v67, v12 offset:448
	ds_load_u8 v68, v12 offset:320
	ds_load_u8 v82, v12 offset:192
	ds_load_u8 v136, v12 offset:64
	v_mov_b32_e32 v88, s9
	ds_load_u8 v146, v12 offset:3520
	ds_load_u8 v147, v12 offset:3392
	ds_load_u8 v148, v12 offset:3264
	ds_load_u8 v149, v12 offset:3136
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v128, v70, v69, 0xc0c0004
	ds_load_u8 v150, v12 offset:3008
	ds_load_u8 v151, v12 offset:2880
	ds_load_u8 v152, v12 offset:2752
	ds_load_u8 v153, v12 offset:2624
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v129, v76, v75, 0xc0c0004
	ds_load_u8 v154, v12 offset:2496
	ds_load_u8 v155, v12 offset:2368
	ds_load_u8 v156, v12 offset:2240
	ds_load_u8 v157, v12 offset:2112
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v166, v12 offset:5056
	ds_load_u8 v167, v12 offset:4928
	ds_load_u8 v168, v12 offset:4800
	ds_load_u8 v169, v12 offset:4672
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v119, v121, v120, 0xc0c0004
	v_lshl_or_b32 v120, v129, 16, v128
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v92, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	ds_load_u8 v124, v12 offset:5760
	ds_load_u8 v125, v12 offset:5632
	ds_load_u8 v130, v12 offset:6016
	ds_load_u8 v131, v12 offset:5888
	v_lshl_or_b32 v119, v119, 16, v118
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v126, v72, v71, 0xc0c0004
	v_perm_b32 v94, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v127, v74, v73, 0xc0c0004
	v_lshl_or_b32 v118, v123, 16, v122
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v95, v135, v134, 0xc0c0004
	v_perm_b32 v96, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v82, v136, v82, 0xc0c0004
	v_lshl_or_b32 v121, v127, 16, v126
	ds_load_u8 v122, v12 offset:5248
	ds_load_u8 v123, v12 offset:5120
	ds_load_u8 v126, v12 offset:5504
	ds_load_u8 v127, v12 offset:5376
	ds_load_u8 v128, v12 offset:4736
	ds_load_u8 v129, v12 offset:4608
	ds_load_u8 v132, v12 offset:4992
	ds_load_u8 v133, v12 offset:4864
	ds_load_u8 v158, v12 offset:6080
	ds_load_u8 v159, v12 offset:5952
	ds_load_u8 v160, v12 offset:5824
	ds_load_u8 v161, v12 offset:5696
	v_perm_b32 v67, v68, v67, 0xc0c0004
	v_dual_mov_b32 v87, s8 :: v_dual_mov_b32 v86, s7
	v_dual_mov_b32 v83, s4 :: v_dual_mov_b32 v84, s5
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v107, v149, v148, 0xc0c0004
	v_perm_b32 v108, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_perm_b32 v134, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v125, v131, v130, 0xc0c0004
	ds_load_u8 v130, v12 offset:4224
	ds_load_u8 v131, v12 offset:4096
	ds_load_u8 v137, v12 offset:4480
	ds_load_u8 v138, v12 offset:4352
	ds_load_u8 v162, v12 offset:5568
	ds_load_u8 v163, v12 offset:5440
	ds_load_u8 v164, v12 offset:5312
	ds_load_u8 v165, v12 offset:5184
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v123, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v126, v129, v128, 0xc0c0004
	v_lshl_or_b32 v125, v125, 16, v124
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v127, v133, v132, 0xc0c0004
	ds_load_u8 v128, v12 offset:7808
	ds_load_u8 v129, v12 offset:7680
	ds_load_u8 v132, v12 offset:8064
	ds_load_u8 v133, v12 offset:7936
	ds_load_u8 v170, v12 offset:4544
	ds_load_u8 v171, v12 offset:4416
	ds_load_u8 v172, v12 offset:4288
	ds_load_u8 v173, v12 offset:4160
	v_lshl_or_b32 v124, v123, 16, v122
	v_perm_b32 v135, v151, v150, 0xc0c0004
	v_perm_b32 v136, v157, v156, 0xc0c0004
	v_lshl_or_b32 v123, v127, 16, v126
	v_wmma_i32_16x16x16_iu8 v[69:76], v[114:117], v[103:106], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v138, v137, 0xc0c0004
	ds_load_u8 v138, v12 offset:7296
	ds_load_u8 v139, v12 offset:7168
	ds_load_u8 v140, v12 offset:7552
	ds_load_u8 v141, v12 offset:7424
	ds_load_u8 v174, v12 offset:8128
	ds_load_u8 v175, v12 offset:8000
	ds_load_u8 v176, v12 offset:7872
	ds_load_u8 v177, v12 offset:7744
	v_wmma_i32_16x16x16_iu8 v[69:76], v[118:121], v[99:102], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v137, v129, v128, 0xc0c0004
	v_lshl_or_b32 v122, v131, 16, v130
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v178, v133, v132, 0xc0c0004
	ds_load_u8 v179, v12 offset:6784
	ds_load_u8 v180, v12 offset:6656
	ds_load_u8 v181, v12 offset:7040
	ds_load_u8 v182, v12 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v81 offset:2048
	ds_load_b128 v[130:133], v81
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v81, v12 offset:6272
	ds_load_u8 v183, v12 offset:6144
	v_wmma_i32_16x16x16_iu8 v[69:76], v[122:125], v[6:9], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v178, 16, v137
	ds_load_u8 v178, v12 offset:7616
	ds_load_u8 v184, v12 offset:7488
	ds_load_u8 v185, v12 offset:7360
	ds_load_u8 v186, v12 offset:7232
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v187, v139, v138, 0xc0c0004
	ds_load_u8 v138, v12 offset:6528
	ds_load_u8 v139, v12 offset:6400
	ds_load_u8 v189, v12 offset:7104
	ds_load_u8 v190, v12 offset:6976
	ds_load_u8 v191, v12 offset:6848
	ds_load_u8 v192, v12 offset:6720
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v188, v141, v140, 0xc0c0004
	v_lshl_or_b32 v141, v91, 16, v93
	v_lshl_or_b32 v140, v94, 16, v92
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v180, v182, v181, 0xc0c0004
	ds_load_u8 v181, v12 offset:6592
	ds_load_u8 v182, v12 offset:6464
	ds_load_u8 v193, v12 offset:6336
	ds_load_u8 v12, v12 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v81, v183, v81, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v139, v138, 0xc0c0004
	v_lshl_or_b32 v139, v96, 16, v95
	v_lshl_or_b32 v138, v67, 16, v82
	v_perm_b32 v67, v145, v144, 0xc0c0004
	v_perm_b32 v82, v143, v142, 0xc0c0004
	v_perm_b32 v142, v155, v154, 0xc0c0004
	v_lshl_or_b32 v144, v108, 16, v107
	v_wmma_i32_16x16x16_iu8 v[91:98], v[138:141], v[103:106], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v145, v82, 16, v67
	v_lshl_or_b32 v143, v135, 16, v134
	v_lshl_or_b32 v142, v142, 16, v136
	v_perm_b32 v67, v161, v160, 0xc0c0004
	v_perm_b32 v82, v159, v158, 0xc0c0004
	v_perm_b32 v103, v165, v164, 0xc0c0004
	v_perm_b32 v104, v163, v162, 0xc0c0004
	v_perm_b32 v105, v169, v168, 0xc0c0004
	v_perm_b32 v106, v167, v166, 0xc0c0004
	v_perm_b32 v107, v173, v172, 0xc0c0004
	v_perm_b32 v108, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[91:98], v[142:145], v[99:102], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v82, 16, v67
	v_lshl_or_b32 v148, v104, 16, v103
	v_lshl_or_b32 v147, v106, 16, v105
	v_lshl_or_b32 v146, v108, 16, v107
	v_perm_b32 v67, v177, v176, 0xc0c0004
	v_perm_b32 v82, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[114:117], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[138:141], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v134, v68, 16, v81
	v_wmma_i32_16x16x16_iu8 v[91:98], v[146:149], v[6:9], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v82, 16, v67
	v_perm_b32 v6, v186, v185, 0xc0c0004
	v_perm_b32 v7, v184, v178, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v192, v191, 0xc0c0004
	v_perm_b32 v68, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v193, 0xc0c0004
	v_perm_b32 v81, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[118:121], v[77:80], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[142:145], v[77:80], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v188, 16, v187
	v_lshl_or_b32 v135, v180, 16, v179
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v68, 16, v67
	v_lshl_or_b32 v6, v81, 16, v12
	v_wmma_i32_16x16x16_iu8 v[99:106], v[122:125], v[2:5], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[146:149], v[2:5], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[69:76], v[134:137], v[130:133], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[6:9], v[130:133], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[134:137], v[126:129], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[6:9], v[126:129], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v70
	v_cvt_f32_i32_e32 v3, v71
	v_cvt_f32_i32_e32 v4, v72
	v_cvt_f32_i32_e32 v5, v73
	v_cvt_f32_i32_e32 v6, v74
	v_cvt_f32_i32_e32 v7, v75
	v_cvt_f32_i32_e32 v8, v76
	v_cvt_f32_i32_e32 v9, v91
	v_cvt_f32_i32_e32 v67, v92
	v_cvt_f32_i32_e32 v68, v93
	v_cvt_f32_i32_e32 v70, v94
	v_cvt_f32_i32_e32 v71, v95
	v_cvt_f32_i32_e32 v72, v96
	v_cvt_f32_i32_e32 v73, v97
	v_cvt_f32_i32_e32 v74, v98
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
	v_cvt_f32_i32_e32 v69, v69
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v12, v61, s4, 1
	v_add_lshl_u32 v91, v62, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v93, v60, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v96, v56, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v92, 0x80000000, v91, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v94, v59, s4, 1
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	v_cndmask_b32_e32 v101, 0x80000000, v96, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v91, v12, s[12:15], 0 offen
	buffer_load_u16 v92, v92, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v12, v58, s4, 1
	v_add_lshl_u32 v95, v57, s4, 1
	v_add_lshl_u32 v97, v55, s4, 1
	v_add_lshl_u32 v98, v54, s4, 1
	v_add_lshl_u32 v99, v53, s4, 1
	v_add_lshl_u32 v107, v50, s4, 1
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v103, 0x80000000, v98
	v_add_lshl_u32 v105, v52, s4, 1
	v_add_lshl_u32 v106, v51, s4, 1
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v100, 0x80000000, v95, vcc_lo
	v_cndmask_b32_e32 v102, 0x80000000, v97, vcc_lo
	v_cndmask_b32_e32 v104, 0x80000000, v99, vcc_lo
	s_clause 0x7
	buffer_load_u16 v93, v93, s[28:31], 0 offen
	buffer_load_u16 v94, v94, s[28:31], 0 offen
	buffer_load_u16 v95, v12, s[28:31], 0 offen
	buffer_load_u16 v96, v100, s[28:31], 0 offen
	buffer_load_u16 v97, v101, s[28:31], 0 offen
	buffer_load_u16 v98, v102, s[28:31], 0 offen
	buffer_load_u16 v99, v103, s[28:31], 0 offen
	buffer_load_u16 v100, v104, s[28:31], 0 offen
	v_add_lshl_u32 v101, v38, s4, 1
	v_add_lshl_u32 v104, v34, s4, 1
	v_cndmask_b32_e32 v12, 0x80000000, v105, vcc_lo
	v_dual_cndmask_b32 v102, 0x80000000, v106 :: v_dual_mov_b32 v115, 0
	v_cndmask_b32_e32 v103, 0x80000000, v107, vcc_lo
	v_add_lshl_u32 v105, v40, s4, 1
	v_add_lshl_u32 v106, v36, s4, 1
	v_add_lshl_u32 v107, v32, s4, 1
	v_dual_cndmask_b32 v108, 0x80000000, v101 :: v_dual_mov_b32 v117, 0
	v_dual_cndmask_b32 v110, 0x80000000, v104 :: v_dual_mov_b32 v119, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v111, 0x80000000, v105 :: v_dual_cndmask_b32 v112, 0x80000000, v106
	v_mov_b32_e32 v121, 0
	v_cndmask_b32_e32 v113, 0x80000000, v107, vcc_lo
	s_clause 0x7
	buffer_load_u16 v101, v12, s[28:31], 0 offen
	buffer_load_u16 v102, v102, s[28:31], 0 offen
	buffer_load_u16 v103, v103, s[28:31], 0 offen
	buffer_load_u16 v104, v108, s[28:31], 0 offen
	buffer_load_u16 v105, v110, s[28:31], 0 offen
	buffer_load_u16 v106, v111, s[28:31], 0 offen
	buffer_load_u16 v107, v112, s[28:31], 0 offen
	buffer_load_u16 v108, v113, s[28:31], 0 offen
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
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s1, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v110, v1 offset:1664
	ds_load_u8 v111, v1 offset:1536
	ds_load_u8 v112, v1 offset:1920
	ds_load_u8 v113, v1 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v12, s0, v66
	v_add_nc_u32_e32 v109, s0, v65
	v_add_nc_u32_e32 v117, s0, v64
	v_add_nc_u32_e32 v114, s0, v63
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
	v_dual_mov_b32 v140, s11 :: v_dual_mov_b32 v139, s10
	v_mov_b32_e32 v138, s9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[63:66], v12 offset:2048
	ds_load_b128 v[125:128], v12
	ds_load_b128 v[141:144], v109 offset:2048
	ds_load_b128 v[129:132], v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v1 offset:1152
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
	v_mov_b32_e32 v137, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[145:148], v114 offset:2048
	ds_load_b128 v[149:152], v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v179, v1 offset:960
	ds_load_u8 v180, v1 offset:832
	ds_load_u8 v181, v1 offset:704
	ds_load_u8 v182, v1 offset:576
	v_mov_b32_e32 v136, s7
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
	v_dual_mov_b32 v135, s6 :: v_dual_mov_b32 v134, s5
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v12, v109, v12, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v109, v116, v115, 0xc0c0004
	v_mov_b32_e32 v133, s4
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v115, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v116, v121, v120, 0xc0c0004
	v_lshl_or_b32 v155, v109, 16, v12
	v_perm_b32 v109, v113, v112, 0xc0c0004
	ds_load_u8 v111, v1 offset:3712
	ds_load_u8 v112, v1 offset:3584
	ds_load_u8 v113, v1 offset:3968
	ds_load_u8 v114, v1 offset:3840
	ds_load_u8 v12, v1 offset:448
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
	v_perm_b32 v12, v118, v12, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[149:152], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v177, v12, 16, v119
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v12, v186, v185, 0xc0c0004
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
	v_lshl_or_b32 v152, v173, 16, v12
	v_lshl_or_b32 v151, v175, 16, v174
	v_lshl_or_b32 v150, v182, 16, v181
	v_lshl_or_b32 v149, v184, 16, v183
	v_perm_b32 v12, v202, v201, 0xc0c0004
	v_perm_b32 v173, v200, v199, 0xc0c0004
	v_perm_b32 v174, v206, v205, 0xc0c0004
	v_perm_b32 v175, v204, v203, 0xc0c0004
	v_perm_b32 v181, v210, v209, 0xc0c0004
	v_perm_b32 v182, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v173, 16, v12
	v_lshl_or_b32 v183, v175, 16, v174
	v_perm_b32 v12, v222, v221, 0xc0c0004
	v_lshl_or_b32 v182, v182, 16, v181
	v_lshl_or_b32 v181, v186, 16, v185
	v_perm_b32 v129, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v185, v228, v211, 0xc0c0004
	v_perm_b32 v186, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v235, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[125:128], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v188, v129, 16, v12
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v12, v230, v229, 0xc0c0004
	v_perm_b32 v145, v232, v231, 0xc0c0004
	v_perm_b32 v146, v226, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[125:132], v[157:160], v[141:144], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v217, 16, v216
	v_lshl_or_b32 v174, v224, 16, v223
	v_lshl_or_b32 v173, v218, 16, v227
	v_lshl_or_b32 v187, v185, 16, v12
	v_lshl_or_b32 v186, v145, 16, v186
	v_lshl_or_b32 v185, v146, 16, v1
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[63:66], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[63:66], v[133:140] neg_lo:[1,1,0]
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
	s_ashr_i32 s0, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s34, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v63.h, v108.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v65.h, v106.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v12, v61, s0, 1
	v_add_lshl_u32 v61, v62, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v60, v60, s0, 1
	v_add_lshl_u32 v59, v59, s0, 1
	v_add_lshl_u32 v58, v58, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v57, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	v_add_lshl_u32 v52, v52, s0, 1
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v50, v50, s0, 1
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	v_add_lshl_u32 v38, v38, s0, 1
	s_clause 0x7
	buffer_load_u16 v60, v60, s[28:31], 0 offen
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	buffer_load_u16 v57, v57, s[28:31], 0 offen
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	buffer_load_u16 v54, v54, s[28:31], 0 offen
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	v_add_lshl_u32 v34, v34, s0, 1
	v_add_lshl_u32 v40, v40, s0, 1
	v_add_lshl_u32 v36, v36, s0, 1
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v51, 0x80000000, v51
	v_add_lshl_u32 v32, v32, s0, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	v_mov_b16_e32 v92.h, v104.l
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	v_mov_b16_e32 v93.h, v103.l
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	v_mov_b16_e32 v95.h, v101.l
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x7
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	buffer_load_u16 v62, v32, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v12, v12, s[12:15], 0 offen
	buffer_load_u16 v61, v61, s[12:15], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v32.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v32.h, v92.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v64.h, v107.l
	v_mov_b16_e32 v66.h, v105.l
	v_mov_b16_e32 v94.h, v102.l
	v_mov_b16_e32 v96.h, v100.l
	v_mov_b16_e32 v97.h, v99.l
	v_mov_b16_e32 v98.h, v98.l
	v_mov_b16_e32 v99.h, v97.l
	v_mov_b16_e32 v100.h, v96.l
	v_mov_b16_e32 v101.h, v95.l
	v_mov_b16_e32 v102.h, v94.l
	v_mov_b16_e32 v103.h, v93.l
	v_mov_b16_e32 v63.l, v32.l
	v_mov_b16_e32 v64.l, v32.l
	v_mov_b16_e32 v65.l, v32.l
	v_mov_b16_e32 v66.l, v32.l
	v_mov_b16_e32 v92.l, v32.l
	v_mov_b16_e32 v93.l, v32.l
	v_mov_b16_e32 v94.l, v32.l
	v_mov_b16_e32 v95.l, v32.l
	v_mov_b16_e32 v96.l, v32.l
	v_mov_b16_e32 v97.l, v32.l
	v_mov_b16_e32 v98.l, v32.l
	v_mov_b16_e32 v99.l, v32.l
	v_mov_b16_e32 v100.l, v32.l
	v_mov_b16_e32 v101.l, v32.l
	v_mov_b16_e32 v102.l, v32.l
	v_mov_b16_e32 v103.l, v32.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v145, v32, v97 :: v_dual_and_b32 v104, 56, v236
	v_mul_f32_e32 v105, v32, v63
	v_mul_f32_e32 v106, v32, v64
	v_mul_f32_e32 v107, v32, v65
	v_mul_f32_e32 v108, v32, v66
	v_mul_f32_e32 v109, v32, v92
	v_mul_f32_e32 v141, v32, v93
	v_mul_f32_e32 v142, v32, v94
	v_mul_f32_e32 v143, v32, v95
	v_mul_f32_e32 v144, v32, v96
	v_mul_f32_e32 v146, v32, v98
	v_mul_f32_e32 v147, v32, v99
	v_mul_f32_e32 v148, v32, v100
	v_mul_f32_e32 v149, v32, v101
	v_mul_f32_e32 v150, v32, v102
	v_mul_f32_e32 v151, v32, v103
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v32.h, v91.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v86, v109, v86, v46
	v_fma_f32 v81, v145, v81, v39
	v_fma_f32 v83, v143, v83, v43
	v_fma_f32 v88, v107, v88, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v32, v92
	v_mul_f32_e32 v65, v32, v65
	v_mul_f32_e32 v63, v32, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v86, s3
	v_cndmask_b32_e64 v39, v39, v81, s3
	v_cndmask_b32_e64 v43, v43, v83, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v141, v85, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v88, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v105, v90, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s33, s27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v85, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v90, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v144, v82, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v82, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v92, v32, v93 :: v_dual_lshlrev_b32 v51, 16, v51
	v_mul_f32_e32 v93, v32, v94
	v_mul_f32_e32 v94, v32, v95
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v95, v32, v96 :: v_dual_lshlrev_b32 v38, 16, v38
	v_mul_f32_e32 v96, v32, v97
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v97, v32, v98 :: v_dual_lshlrev_b32 v40, 16, v40
	v_mul_f32_e32 v98, v32, v99
	v_dual_mul_f32 v99, v32, v100 :: v_dual_lshlrev_b32 v34, 16, v34
	v_mul_f32_e32 v100, v32, v101
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v101, v32, v102 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v102, v32, v103
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v94, v9, v21
	v_fma_f32 v3, v100, v3, v15
	v_fma_f32 v8, v95, v8, v20
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v102, v69, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v21, v9, s3
	v_cndmask_b32_e64 v3, v15, v3, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v20, v8, s3
	v_cndmask_b32_e64 v13, v13, v69, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v20, 16, v55
	v_lshlrev_b32_e32 v21, 16, v54
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v55, v12, v15 :: v_dual_lshlrev_b32 v54, 16, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v97, v6, v18
	v_fma_f32 v4, v99, v4, v16
	v_fma_f32 v2, v101, v2, v14
	v_fma_f32 v79, v147, v79, v35
	v_fma_f32 v1, v55, v1, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v18, v6, s3
	v_cndmask_b32_e64 v4, v16, v4, s3
	v_cndmask_b32_e64 v2, v14, v2, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v13, v1, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v59
	v_lshlrev_b32_e32 v18, 16, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v149, v77, v31
	v_fma_f32 v75, v151, v75, v29
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v1, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v98, v5, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v32, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v77, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v74, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v79, s3
	v_cndmask_b32_e64 v5, v17, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v75, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v72, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v63, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v57, v12, v17 :: v_dual_lshlrev_b32 v50, 16, v50
	v_mul_f32_e32 v17, v14, v17
	v_mul_f32_e32 v61, v12, v21
	v_mul_f32_e32 v63, v12, v52
	v_mul_f32_e32 v15, v14, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v57, v111, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v21, v14, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v71, v25
	v_fma_f32 v17, v17, v127, v31
	v_fma_f32 v70, v91, v70, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v55, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v93, v67, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v65, s3
	v_cndmask_b32_e64 v25, v25, v66, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v58, v12, v18 :: v_dual_max_f32 v3, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v96, v7, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v12, v20
	v_dual_mul_f32 v65, v12, v50 :: v_dual_mul_f32 v52, v14, v52
	v_mul_f32_e32 v69, v12, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v19, v7, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v19, 16, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v32, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v142, v84, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v14, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v20, v14, v20 :: v_dual_mul_f32 v59, v12, v19
	v_mul_f32_e32 v19, v14, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v73, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v84, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v14, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v57, v59, v113, v5
	v_fma_f32 v59, v61, v115, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v64, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v12, v51
	v_mul_f32_e32 v51, v14, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v92, v68, v23
	v_fma_f32 v61, v63, v117, v9
	v_fma_f32 v15, v15, v125, v29
	v_fma_f32 v19, v19, v129, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v31, v17, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v12, v38
	v_mul_f32_e32 v38, v14, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v70, s3
	v_cndmask_b32_e64 v23, v23, v68, s3
	v_cndmask_b32_e64 v22, v22, v67, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v12, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v21, v131, v39
	v_fma_f32 v51, v51, v134, v44
	v_fma_f32 v38, v38, v136, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v61, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v12, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v29, v15, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v12, v53
	v_mul_f32_e32 v53, v14, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v35, v19, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v12, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v108, v87, v47
	v_fma_f32 v78, v148, v78, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v14, v16
	v_mul_f32_e32 v34, v14, v34
	v_mul_f32_e32 v40, v14, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v65, v119, v23
	v_fma_f32 v65, v67, v121, v25
	v_fma_f32 v67, v69, v123, v27
	v_fma_f32 v53, v53, v132, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v39, v21, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v12, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v44, v51, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v14, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v46, v38, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v14, v14, v54 :: v_dual_max_f32 v9, v9, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v56, v110, v2
	v_fma_f32 v56, v58, v112, v4
	v_fma_f32 v58, v60, v114, v6
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v15, v15, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v60, v62, v116, v8
	v_fma_f32 v62, v64, v118, v22
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v17, v17, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v66, v120, v24
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v19, v19, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v68, v122, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v47, v87, s3
	v_cndmask_b32_e64 v33, v33, v78, s3
	v_cndmask_b32_e64 v13, v22, v62, s2
	v_cndmask_b32_e64 v22, v23, v63, s2
	v_cndmask_b32_e64 v23, v24, v64, s2
	v_cndmask_b32_e64 v24, v25, v65, s2
	v_cndmask_b32_e64 v25, v26, v66, s2
	v_cndmask_b32_e64 v26, v27, v67, s2
	v_cndmask_b32_e64 v27, v41, v53, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v150, v76, v30
	v_fma_f32 v18, v18, v128, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v54, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v106, v89, v49
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v27, v27, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v34, v137, v47
	v_fma_f32 v80, v146, v80, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v76, s3
	v_cndmask_b32_e64 v4, v4, v56, s2
	v_cndmask_b32_e64 v18, v33, v18, s2
	v_cndmask_b32_e64 v33, v47, v34, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v2, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v89, s3
	v_cndmask_b32_e64 v37, v37, v80, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v126, v30
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v2, 0, v2
	v_max_f32_e32 v27, 0, v27
	v_max_f32_e32 v21, v21, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v124, v28
	v_fma_f32 v20, v20, v130, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v30, v16, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v29, v29, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v139, v49
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v26, 0, v26
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v1, v1, v1 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v58, s2
	v_cndmask_b32_e64 v12, v28, v12, s2
	v_cndmask_b32_e64 v20, v37, v20, s2
	v_cndmask_b32_e64 v35, v49, v36, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v16, v16, v16
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v36, s27, v10
	v_mul_lo_u32 v37, s27, v11
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v2.h
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e32 v11.h, v32.l
	v_mov_b16_e32 v10.h, v32.l
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v57, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v12, v12, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v52, v52, v133, v43
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v16, 0, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v10, 1, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v138, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v60, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v12, 0, v12
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v43, v52, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v2, v2, v10, 0x7fff
	v_mov_b16_e32 v10.h, v32.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v50, v50, v135, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v59, s2
	v_cndmask_b32_e64 v34, v48, v40, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v35, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v3.h
	v_mov_b16_e32 v40.h, v32.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v19, 0, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v1, v11, 0x7fff
	v_mov_b16_e32 v10.l, v4.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v45, v50, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v18, 0, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v40
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v20, 0, v20 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v28, 0, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v1, 1, v10
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v21, 0, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v3, v11, 0x7fff
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v11.l, v5.h
	v_mov_b16_e32 v11.h, v32.l
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v8, 0, v8
	v_max_f32_e32 v30, 0, v30
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v3, 1, v11
	v_and_b32_e32 v7, 1, v10
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v24, v24, v24
	v_max_f32_e32 v9, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.h, v32.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v4.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v140, v42
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v33, 0, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v8.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v34, v34, v34 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v10
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v3.h
	v_and_b32_e32 v3, 1, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v42, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v6.l, v10.h
	v_mov_b16_e32 v7.l, v9.h
	v_mov_b16_e32 v7.h, v32.l
	v_add3_u32 v3, v8, v3, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v8, v22, v22
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v4, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v23, v23 :: v_dual_and_b32 v6, 1, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v8.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v35, 0, v35
	v_max_f32_e32 v34, 0, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v9, v4, 0x7fff
	v_add3_u32 v6, v10, v6, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v32.l
	v_and_b32_e32 v10, 1, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v11, v25, v25 :: v_dual_max_f32 v14, 0, v14
	v_mul_f32_e32 v13, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_and_b32_e32 v4, 1, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v9.l, v11.h
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v10.l, v13.h
	v_mov_b16_e32 v10.h, v32.l
	v_add3_u32 v4, v7, v4, 0x7fff
	v_and_b32_e32 v9, 1, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v8.h
	v_and_b32_e32 v8, 1, v10
	v_mov_b16_e32 v22.h, v32.l
	v_add3_u32 v9, v11, v9, 0x7fff
	v_mov_b16_e32 v11.h, v32.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v7.h
	v_mov_b16_e32 v12.h, v32.l
	v_add3_u32 v8, v13, v8, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v16.h, v32.l
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v9.l, v8.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v11
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.l, v15.h
	v_mov_b16_e32 v12.h, v32.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v38, s0, v104
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v12
	v_add3_u32 v11, v13, v11, 0x7fff
	v_mov_b16_e32 v13.h, v32.l
	v_mov_b16_e32 v16.l, v10.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v15, v7, 0x7fff
	v_mov_b16_e32 v17.h, v32.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v39, s0, v104, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v16
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v19, v19
	v_mul_f32_e32 v19, v21, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v10, v10, v15, 0x7fff
	v_mov_b16_e32 v15.h, v32.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v20, v20 :: v_dual_and_b32 v13, 1, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v27, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v19.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v15.l, v16.h
	v_add3_u32 v12, v12, v13, 0x7fff
	v_mov_b16_e32 v20.h, v32.l
	v_mov_b16_e32 v12.l, v10.h
	v_mov_b16_e32 v21.h, v32.l
	v_and_b32_e32 v13, 1, v15
	v_and_b32_e32 v15, 1, v17
	v_mov_b16_e32 v17.l, v18.h
	s_mov_b32 s0, 0x76543210
	s_mov_b32 s27, s15
	v_add3_u32 v10, v16, v13, 0x7fff
	v_add3_u32 v7, v7, v15, 0x7fff
	v_and_b32_e32 v15, 1, v17
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v16, v29, v29 :: v_dual_and_b32 v13, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.l, v7.h
	v_add3_u32 v15, v18, v15, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v18, v30, v30 :: v_dual_mul_f32 v7, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v16.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v20, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v19, v13, 0x7fff
	v_mov_b16_e32 v21.l, v18.h
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v32.l
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v22.l, v20.h
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v15.l, v13.h
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v13, v16, v17, 0x7fff
	v_and_b32_e32 v16, 1, v22
	v_add3_u32 v17, v18, v21, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v21.h, v32.l
	v_add3_u32 v16, v20, v16, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v18.h
	v_mov_b16_e32 v20.h, v32.l
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v17.h
	v_mov_b16_e32 v22.l, v14.h
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v19.h, v32.l
	v_mov_b16_e32 v19.l, v7.h
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v18, v18, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v14, v20, 0x7fff
	v_cndmask_b32_e32 v14, v5, v2, vcc_lo
	v_add3_u32 v17, v17, v21, 0x7fff
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v7.l, v18.h
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_mov_b16_e32 v0.l, v17.h
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_cndmask_b32_e32 v17, v9, v6, vcc_lo
	v_dual_cndmask_b32 v3, v6, v9 :: v_dual_mov_b32 v6, 0x5410
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v9, v8, v4
	v_dual_cndmask_b32 v4, v4, v8 :: v_dual_cndmask_b32 v19, v10, v11
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v11, v15, v12 :: v_dual_cndmask_b32 v6, 0x1054, v6
	v_dual_cndmask_b32 v12, v12, v15 :: v_dual_cndmask_b32 v15, v7, v13
	v_dual_cndmask_b32 v10, 0x3276, v18 :: v_dual_cndmask_b32 v7, v13, v7
	v_lshl_or_b32 v6, v6, 8, v6
	v_permlanex16_b32 v13, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v18, v0, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_and_b32_e32 v6, 0x540054, v6
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v6, 4, v6
	v_permlanex16_b32 v23, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v10, 4, v10
	v_permlanex16_b32 v10, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v22, 0x7060706, v6
	v_perm_b32 v0, v2, v14, v21
	v_perm_b32 v6, v16, v9, v21
	v_perm_b32 v4, v10, v17, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v1, v2, v14, v22
	v_perm_b32 v2, v13, v5, v21
	v_perm_b32 v3, v13, v5, v22
	v_perm_b32 v7, v16, v9, v22
	v_add_lshl_u32 v16, v38, v36, 1
	v_perm_b32 v5, v10, v17, v22
	v_add_lshl_u32 v17, v39, v36, 1
	v_perm_b32 v8, v20, v19, v21
	v_perm_b32 v9, v20, v19, v22
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v22
	v_perm_b32 v12, v23, v15, v21
	v_perm_b32 v13, v23, v15, v22
	v_perm_b32 v14, v24, v18, v21
	v_perm_b32 v15, v24, v18, v22
	v_add_lshl_u32 v18, v38, v37, 1
	v_add_lshl_u32 v19, v39, v37, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14876
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
