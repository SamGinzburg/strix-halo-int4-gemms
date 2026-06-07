	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s6, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s8, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v13, 4, v0
	v_lshrrev_b32_e32 v70, 3, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_and_b32_e32 v14, 0x80, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v236, 0x60, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 48, v13
	v_or_b32_e32 v6, 32, v70
	v_and_b32_e32 v71, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v72, 1, v236
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v7, s6, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s5
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s9, s16
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s7, s17
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s18, s7
	s_sub_i32 s19, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v13
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[4:5], null, s35, v70, v[1:2]
	s_mov_b32 s11, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s11
	s_mov_b32 s26, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s19, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s18, s19
	s_add_i32 s18, s18, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s18
	s_xor_b32 s18, s2, s17
	s_mul_i32 s19, s4, s7
	s_ashr_i32 s18, s18, 31
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s5, s20, s5
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s19, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s21, s6, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s19, s4, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s7, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s19, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s17
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s21, s21, s3
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s2, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s7, v2
	v_or_b32_e32 v8, s7, v70
	v_or_b32_e32 v9, s7, v6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s16
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s20, s6, 0x1ff
.Ltmp21:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s34, s4, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s40, s3, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s35, s7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s20, 0x1ff
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v5
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s6, v8
	v_cmp_gt_i32_e64 s4, s6, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s34, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s16, s40, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s5, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v5, v7, v2, s16
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s3
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s4, s4, s3
	s_cmpk_gt_i32 s20, 0x3ff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s33, v4
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s7, 0x200
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s7, v5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s17, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s43, s35, 9
	v_add_nc_u32_e32 v10, s5, v7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s17, v70
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s43
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s17, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s5, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v11
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s17, v5
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s6, v12
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s5, v7
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s6, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_mov_b32 s16, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[26:29], v9, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[30:33], v8, s[24:27], 0 offen
	buffer_load_b128 v[34:37], v10, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[38:41], v5, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[42:45], v4, s[24:27], 0 offen
	buffer_load_b128 v[46:49], v6, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v6, 3, v14
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, 0, v13
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v5
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v4, 1, v72
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v6, v6, v71
	v_lshlrev_b32_e32 v4, 3, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s20, 0x5ff
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v73, v13, v7
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v10, 2, v5
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v25, 32, v6
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v11, 4, v5
	v_or_b32_e32 v12, 6, v5
	v_or_b32_e32 v16, 8, v5
	v_or_b32_e32 v17, 10, v5
	v_or_b32_e32 v18, 12, v5
	v_or_b32_e32 v19, 14, v5
	v_or_b32_e32 v20, 64, v5
	v_or_b32_e32 v21, 0x42, v5
	v_or_b32_e32 v22, 0x44, v5
	v_or_b32_e32 v23, 0x46, v5
	v_or_b32_e32 v24, 0x48, v5
	v_or_b32_e32 v7, 0x4a, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v51, 0, v73
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 0x4c, v5
	v_or_b32_e32 v9, 0x4e, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v51, v[26:29] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v50, v[30:33]
	s_waitcnt vmcnt(3)
	ds_store_b128 v50, v[34:37] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v51, v[38:41] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v50, v[42:45] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v50, v[46:49] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v26, 0x430, v4
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v71, 6, v26
	v_xor_b32_e32 v68, 16, v66
	v_xor_b32_e32 v69, 32, v66
	v_xor_b32_e32 v67, 48, v66
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr67
.LBB0_3:                                ; %Flow231
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v6, s40, v6
	v_or_b32_e32 v25, s40, v25
	s_ashr_i32 s41, s21, 6
	v_or_b32_e32 v63, s34, v5
	v_or_b32_e32 v62, s34, v10
	v_mul_lo_u32 v64, v6, s41
	v_mul_lo_u32 v65, v25, s41
	v_or_b32_e32 v61, s34, v11
	v_or_b32_e32 v60, s34, v12
	v_or_b32_e32 v59, s34, v16
	v_or_b32_e32 v58, s34, v17
	v_or_b32_e32 v57, s34, v18
	v_or_b32_e32 v56, s34, v19
	v_or_b32_e32 v55, s34, v20
	v_or_b32_e32 v54, s34, v21
	v_or_b32_e32 v53, s34, v22
	v_or_b32_e32 v51, s34, v23
	v_or_b32_e32 v33, s34, v24
	v_or_b32_e32 v52, s34, v7
	v_or_b32_e32 v50, s34, v8
	v_or_b32_e32 v32, s34, v9
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_and_b32_e32 v4, 0x430, v4
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v5, s7, v70
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s15, s19, 7
	s_lshl_b32 s16, s18, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v66, v71, 6, v4
	v_add_nc_u32_e32 v4, 0x420, v5
	v_add_nc_u32_e32 v5, 0x400, v5
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s14, s20, 9
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v77, 0x400, v2
	v_xor_b32_e32 v68, 16, v66
	v_mul_lo_u32 v4, s35, v4
	v_mul_lo_u32 v5, s35, v5
	v_xor_b32_e32 v69, 32, v66
	v_xor_b32_e32 v67, 48, v66
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_add3_u32 v4, v4, s15, v1
	v_add3_u32 v1, v5, s15, v1
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v74, s16, v4
	v_subrev_nc_u32_e32 v75, s16, v1
	s_mov_b32 s16, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v3, s40, v3
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s6, v3
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_add3_u32 v76, v3, v2, 0x400
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v49, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_add_i32 s15, s14, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
	s_mov_b32 s45, 1
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s17, s7
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v9, s17, v77
	v_add_nc_u32_e32 v10, s17, v70
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s7, s7, 26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, s17, v76
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s17, s7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_add_nc_u32_e32 v83, 0x400, v10
	s_mov_b32 s19, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s7, s7, 6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v78, s19, v66
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_add_nc_u32_e32 v84, 0x420, v10
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v86, v65, s7, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v83
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v79, s19, v68
	v_add_nc_u32_e32 v80, s19, v69
	v_add_nc_u32_e32 v81, s19, v67
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[94:97], v78
	ds_load_b128 v[110:113], v78 offset:2048
	ds_load_b128 v[114:117], v79
	ds_load_b128 v[118:121], v79 offset:2048
	ds_load_b128 v[122:125], v80
	ds_load_b128 v[126:129], v80 offset:2048
	ds_load_b128 v[130:133], v81
	ds_load_b128 v[134:137], v81 offset:2048
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v78, 0x80000000, v75, vcc_lo
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s6, v84
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s7, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v85, v64, s7, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s7, s7, s35
	s_mov_b32 s18, s16
	.loc	1 366 22 is_stmt 0              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v138, v63, s7, 1
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v79, 0x80000000, v74, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v139, v62, s7, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v140, v61, s7, 1
	v_add_lshl_u32 v145, v56, s7, 1
	v_add_lshl_u32 v174, v55, s7, 1
	v_add_lshl_u32 v175, v54, s7, 1
	v_add_lshl_u32 v176, v53, s7, 1
	v_add_lshl_u32 v177, v51, s7, 1
	v_add_lshl_u32 v178, v33, s7, 1
	v_add_lshl_u32 v179, v52, s7, 1
	v_add_lshl_u32 v180, v50, s7, 1
	v_add_lshl_u32 v181, v32, s7, 1
	v_add_lshl_u32 v141, v60, s7, 1
	v_add_lshl_u32 v142, v59, s7, 1
	v_add_lshl_u32 v143, v58, s7, 1
	v_add_lshl_u32 v144, v57, s7, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v85, 0x80000000, v85 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_dual_cndmask_b32 v86, 0x80000000, v86 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_cndmask_b32 v145, 0x80000000, v145
	v_dual_cndmask_b32 v174, 0x80000000, v174 :: v_dual_cndmask_b32 v175, 0x80000000, v175
	v_dual_cndmask_b32 v176, 0x80000000, v176 :: v_dual_cndmask_b32 v177, 0x80000000, v177
	v_dual_cndmask_b32 v178, 0x80000000, v178 :: v_dual_cndmask_b32 v179, 0x80000000, v179
	v_dual_cndmask_b32 v180, 0x80000000, v180 :: v_dual_cndmask_b32 v181, 0x80000000, v181
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	v_dual_cndmask_b32 v143, 0x80000000, v143 :: v_dual_cndmask_b32 v144, 0x80000000, v144
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v182, v85, s[28:31], 0 offen
	buffer_load_u16 v183, v86, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v184, v138, s[36:39], 0 offen
	buffer_load_u16 v185, v139, s[36:39], 0 offen
	buffer_load_u16 v186, v140, s[36:39], 0 offen
	buffer_load_u16 v187, v141, s[36:39], 0 offen
	buffer_load_u16 v188, v142, s[36:39], 0 offen
	buffer_load_u16 v189, v143, s[36:39], 0 offen
	buffer_load_u16 v190, v144, s[36:39], 0 offen
	buffer_load_u16 v191, v145, s[36:39], 0 offen
	buffer_load_u16 v174, v174, s[36:39], 0 offen
	buffer_load_u16 v175, v175, s[36:39], 0 offen
	buffer_load_u16 v176, v176, s[36:39], 0 offen
	buffer_load_u16 v177, v177, s[36:39], 0 offen
	buffer_load_u16 v178, v178, s[36:39], 0 offen
	buffer_load_u16 v179, v179, s[36:39], 0 offen
	buffer_load_u16 v180, v180, s[36:39], 0 offen
	buffer_load_u16 v181, v181, s[36:39], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[138:141], v78, s[24:27], 0 offen
	buffer_load_b128 v[142:145], v79, s[24:27], 0 offen
	v_add3_u32 v82, s18, v71, v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v80, v82 offset:3200
	ds_load_u8 v81, v82 offset:3072
	ds_load_u8 v83, v82 offset:3456
	ds_load_u8 v84, v82 offset:6784
	ds_load_u8 v87, v82 offset:6656
	ds_load_u8 v88, v82 offset:7040
	ds_load_u8 v89, v82 offset:6912
	ds_load_u8 v90, v82 offset:6272
	ds_load_u8 v91, v82 offset:6144
	ds_load_u8 v92, v82 offset:6528
	ds_load_u8 v93, v82 offset:6400
	ds_load_u8 v98, v82 offset:1664
	ds_load_u8 v99, v82 offset:1536
	ds_load_u8 v100, v82 offset:1920
	ds_load_u8 v101, v82 offset:1792
	ds_load_u8 v102, v82 offset:1984
	ds_load_u8 v103, v82 offset:1856
	ds_load_u8 v104, v82 offset:1728
	ds_load_u8 v105, v82 offset:1600
	ds_load_u8 v106, v82 offset:1152
	ds_load_u8 v107, v82 offset:1024
	ds_load_u8 v108, v82 offset:1408
	ds_load_u8 v109, v82 offset:1280
	ds_load_u8 v146, v82 offset:1472
	ds_load_u8 v147, v82 offset:1344
	ds_load_u8 v148, v82 offset:1216
	ds_load_u8 v149, v82 offset:1088
	ds_load_u8 v150, v82 offset:640
	ds_load_u8 v151, v82 offset:512
	ds_load_u8 v152, v82 offset:896
	ds_load_u8 v153, v82 offset:768
	ds_load_u8 v154, v82 offset:960
	ds_load_u8 v155, v82 offset:832
	ds_load_u8 v156, v82 offset:704
	ds_load_u8 v157, v82 offset:576
	ds_load_u8 v158, v82 offset:128
	ds_load_u8 v159, v82
	ds_load_u8 v160, v82 offset:384
	ds_load_u8 v161, v82 offset:256
	ds_load_u8 v162, v82 offset:448
	ds_load_u8 v163, v82 offset:320
	ds_load_u8 v164, v82 offset:192
	ds_load_u8 v165, v82 offset:64
	ds_load_u8 v166, v82 offset:3712
	ds_load_u8 v167, v82 offset:3584
	ds_load_u8 v168, v82 offset:3968
	ds_load_u8 v169, v82 offset:3840
	ds_load_u8 v170, v82 offset:4032
	ds_load_u8 v171, v82 offset:3904
	ds_load_u8 v172, v82 offset:3776
	ds_load_u8 v173, v82 offset:3648
	ds_load_u8 v85, v82 offset:3328
	ds_load_u8 v86, v82 offset:3520
	ds_load_u8 v192, v82 offset:3392
	ds_load_u8 v193, v82 offset:3264
	ds_load_u8 v194, v82 offset:3136
	ds_load_u8 v195, v82 offset:2688
	ds_load_u8 v196, v82 offset:2560
	ds_load_u8 v197, v82 offset:2944
	ds_load_u8 v198, v82 offset:2816
	ds_load_u8 v199, v82 offset:3008
	ds_load_u8 v200, v82 offset:2880
	ds_load_u8 v201, v82 offset:2752
	ds_load_u8 v78, v82 offset:2624
	ds_load_u8 v79, v82 offset:2176
	ds_load_u8 v202, v82 offset:2048
	ds_load_u8 v203, v82 offset:2432
	ds_load_u8 v204, v82 offset:2304
	ds_load_u8 v205, v82 offset:2496
	ds_load_u8 v206, v82 offset:2368
	ds_load_u8 v207, v82 offset:2240
	ds_load_u8 v208, v82 offset:2112
	ds_load_u8 v209, v82 offset:5760
	ds_load_u8 v210, v82 offset:5632
	ds_load_u8 v211, v82 offset:6016
	ds_load_u8 v212, v82 offset:5888
	ds_load_u8 v213, v82 offset:6080
	ds_load_u8 v214, v82 offset:5952
	ds_load_u8 v215, v82 offset:5824
	ds_load_u8 v216, v82 offset:5696
	ds_load_u8 v217, v82 offset:5248
	ds_load_u8 v218, v82 offset:5120
	ds_load_u8 v219, v82 offset:5504
	ds_load_u8 v220, v82 offset:5376
	ds_load_u8 v221, v82 offset:5568
	ds_load_u8 v222, v82 offset:5440
	ds_load_u8 v223, v82 offset:5312
	ds_load_u8 v224, v82 offset:5184
	ds_load_u8 v225, v82 offset:4736
	ds_load_u8 v226, v82 offset:4608
	ds_load_u8 v227, v82 offset:4992
	ds_load_u8 v228, v82 offset:4864
	ds_load_u8 v229, v82 offset:5056
	ds_load_u8 v230, v82 offset:4928
	ds_load_u8 v231, v82 offset:4800
	ds_load_u8 v232, v82 offset:4672
	ds_load_u8 v233, v82 offset:4224
	ds_load_u8 v234, v82 offset:4096
	ds_load_u8 v235, v82 offset:4480
	ds_load_u8 v236, v82 offset:4352
	ds_load_u8 v237, v82 offset:4544
	ds_load_u8 v238, v82 offset:4416
	ds_load_u8 v239, v82 offset:4288
	ds_load_u8 v240, v82 offset:4160
	ds_load_u8 v241, v82 offset:7808
	ds_load_u8 v242, v82 offset:7680
	ds_load_u8 v243, v82 offset:8064
	ds_load_u8 v244, v82 offset:7936
	ds_load_u8 v245, v82 offset:8128
	ds_load_u8 v246, v82 offset:8000
	ds_load_u8 v247, v82 offset:7872
	ds_load_u8 v248, v82 offset:7744
	ds_load_u8 v249, v82 offset:7296
	ds_load_u8 v250, v82 offset:7168
	ds_load_u8 v251, v82 offset:7552
	ds_load_u8 v252, v82 offset:7424
	ds_load_u8 v253, v82 offset:7616
	ds_load_u8 v254, v82 offset:7488
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v82 offset:7360
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v82 offset:7232
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v82 offset:7104
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v82 offset:6976
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v82 offset:6848
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v82 offset:6720
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v82 offset:6592
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v82 offset:6464
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v82 offset:6336
	ds_load_u8 v82, v82 offset:6208
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v85, v83, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v83, v196, v195, 0xc0c0004
	v_perm_b32 v85, v198, v197, 0xc0c0004
	v_perm_b32 v79, v202, v79, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v169, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v197, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v198, v220, v219, 0xc0c0004
	v_perm_b32 v84, v87, v84, 0xc0c0004
	v_perm_b32 v87, v89, v88, 0xc0c0004
	v_perm_b32 v88, v91, v90, 0xc0c0004
	v_perm_b32 v89, v93, v92, 0xc0c0004
	v_perm_b32 v90, v105, v104, 0xc0c0004
	v_perm_b32 v91, v103, v102, 0xc0c0004
	v_perm_b32 v92, v149, v148, 0xc0c0004
	v_perm_b32 v93, v147, v146, 0xc0c0004
	v_perm_b32 v218, v157, v156, 0xc0c0004
	v_perm_b32 v219, v155, v154, 0xc0c0004
	v_perm_b32 v164, v165, v164, 0xc0c0004
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v163, v173, v172, 0xc0c0004
	v_perm_b32 v165, v171, v170, 0xc0c0004
	v_perm_b32 v170, v194, v193, 0xc0c0004
	v_perm_b32 v86, v192, v86, 0xc0c0004
	v_perm_b32 v78, v78, v201, 0xc0c0004
	v_perm_b32 v171, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v82, v167, 0xc0c0004
	v_perm_b32 v109, v161, v159, 0xc0c0004
	v_lshl_or_b32 v105, v100, 16, v98
	v_lshl_or_b32 v104, v108, 16, v106
	v_lshl_or_b32 v103, v152, 16, v150
	v_lshl_or_b32 v102, v160, 16, v158
	v_perm_b32 v195, v210, v209, 0xc0c0004
	v_perm_b32 v196, v212, v211, 0xc0c0004
	v_perm_b32 v202, v226, v225, 0xc0c0004
	v_perm_b32 v203, v228, v227, 0xc0c0004
	v_perm_b32 v204, v234, v233, 0xc0c0004
	v_perm_b32 v209, v236, v235, 0xc0c0004
	v_perm_b32 v172, v208, v207, 0xc0c0004
	v_perm_b32 v173, v206, v205, 0xc0c0004
	v_lshl_or_b32 v149, v168, 16, v166
	v_lshl_or_b32 v148, v81, 16, v80
	v_lshl_or_b32 v147, v85, 16, v83
	v_lshl_or_b32 v146, v169, 16, v79
	v_lshl_or_b32 v155, v87, 16, v84
	v_lshl_or_b32 v161, v91, 16, v90
	v_lshl_or_b32 v160, v93, 16, v92
	v_lshl_or_b32 v159, v219, 16, v218
	v_lshl_or_b32 v158, v162, 16, v164
	v_lshl_or_b32 v165, v165, 16, v163
	v_lshl_or_b32 v164, v86, 16, v170
	v_lshl_or_b32 v163, v171, 16, v78
	v_lshl_or_b32 v170, v109, 16, v82
	v_wmma_i32_16x16x16_iu8 v[78:85], v[102:105], v[94:97], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v210, v242, v241, 0xc0c0004
	v_perm_b32 v211, v244, v243, 0xc0c0004
	v_perm_b32 v212, v250, v249, 0xc0c0004
	v_perm_b32 v217, v252, v251, 0xc0c0004
	v_perm_b32 v192, v216, v215, 0xc0c0004
	v_perm_b32 v193, v214, v213, 0xc0c0004
	v_perm_b32 v194, v224, v223, 0xc0c0004
	v_perm_b32 v199, v222, v221, 0xc0c0004
	v_perm_b32 v200, v232, v231, 0xc0c0004
	v_perm_b32 v201, v230, v229, 0xc0c0004
	v_perm_b32 v205, v240, v239, 0xc0c0004
	v_perm_b32 v206, v238, v237, 0xc0c0004
	v_perm_b32 v99, v101, v99, 0xc0c0004
	v_perm_b32 v101, v254, v253, 0xc0c0004
	v_perm_b32 v213, v153, v151, 0xc0c0004
	v_lshl_or_b32 v153, v196, 16, v195
	v_lshl_or_b32 v152, v198, 16, v197
	v_lshl_or_b32 v151, v203, 16, v202
	v_lshl_or_b32 v150, v209, 16, v204
	v_lshl_or_b32 v154, v89, 16, v88
	v_lshl_or_b32 v162, v173, 16, v172
	v_wmma_i32_16x16x16_iu8 v[86:93], v[158:161], v[94:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[146:149], v[114:117], v[78:85] neg_lo:[1,1,0]
	v_lshl_or_b32 v157, v211, 16, v210
	v_lshl_or_b32 v156, v217, 16, v212
	v_lshl_or_b32 v169, v193, 16, v192
	v_lshl_or_b32 v168, v199, 16, v194
	v_lshl_or_b32 v167, v201, 16, v200
	v_lshl_or_b32 v166, v206, 16, v205
	v_lshl_or_b32 v172, v101, 16, v99
	v_lshl_or_b32 v171, v107, 16, v213
	v_wmma_i32_16x16x16_iu8 v[94:101], v[102:105], v[110:113], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[158:161], v[110:113], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[162:165], v[114:117], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[150:153], v[122:125], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[94:101], v[146:149], v[118:121], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[162:165], v[118:121], v[102:109] neg_lo:[1,1,0]
	v_perm_b32 v207, v248, v247, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[86:93], v[166:169], v[122:125], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[154:157], v[130:133], v[78:85] neg_lo:[1,1,0]
	v_perm_b32 v208, v246, v245, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[94:101], v[150:153], v[126:129], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[166:169], v[126:129], v[102:109] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s7, s45, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v78, v78
	v_lshl_or_b32 v173, v208, 16, v207
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s7, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[94:101], v[154:157], v[134:137], v[94:101] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s45, s7, 0
	s_mov_b32 s16, s44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[86:93], v[170:173], v[130:133], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[170:173], v[134:137], v[102:109] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s18, s45, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s19, s18, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s44, s19, s18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s15, -1
	s_mov_b32 s14, s42
	s_add_i32 s7, s17, 0x200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s42, s19, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v110, 16, v182
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v123, 16, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v147, v110, v123 :: v_dual_lshlrev_b32 v112, 16, v184
	v_dual_mul_f32 v128, v110, v112 :: v_dual_lshlrev_b32 v111, 16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v16, v128, v78 :: v_dual_lshlrev_b32 v115, 16, v187
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v111, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v131, v110, v115 :: v_dual_lshlrev_b32 v118, 16, v190
	v_mul_f32_e32 v115, v111, v115
	v_dual_mul_f32 v134, v110, v118 :: v_dual_lshlrev_b32 v121, 16, v175
	v_mul_f32_e32 v118, v111, v118
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v124, 16, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v137, v110, v121 :: v_dual_add_nc_u32 v74, s43, v74
	v_mul_f32_e32 v121, v111, v121
	v_dual_mul_f32 v148, v110, v124 :: v_dual_add_nc_u32 v255, s19, v73
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v124, v111, v124 :: v_dual_lshlrev_b32 v127, 16, v181
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v113, 16, v185
	v_lshlrev_b32_e32 v116, 16, v188
	v_lshlrev_b32_e32 v119, 16, v191
	v_lshlrev_b32_e32 v122, 16, v176
	v_lshlrev_b32_e32 v125, 16, v179
	v_lshlrev_b32_e32 v114, 16, v186
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v75, s43, v75
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v129, v110, v113
	v_mul_f32_e32 v132, v110, v116
	v_mul_f32_e32 v149, v110, v125
	v_dual_mul_f32 v130, v110, v114 :: v_dual_lshlrev_b32 v117, 16, v189
	v_mul_f32_e32 v114, v111, v114
	v_dual_mul_f32 v135, v110, v119 :: v_dual_lshlrev_b32 v120, 16, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v133, v110, v117
	v_dual_mul_f32 v117, v111, v117 :: v_dual_mul_f32 v146, v110, v122
	v_mul_f32_e32 v136, v110, v120
	v_mul_f32_e32 v120, v111, v120
	v_dual_mul_f32 v123, v111, v123 :: v_dual_lshlrev_b32 v126, 16, v180
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v15, s44, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v129, v79 :: v_dual_fmac_f32 v18, v130, v80
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v150, v110, v126
	v_dual_mul_f32 v110, v110, v127 :: v_dual_mul_f32 v113, v111, v113
	v_mul_f32_e32 v116, v111, v116
	v_mul_f32_e32 v119, v111, v119
	v_mul_f32_e32 v122, v111, v122
	v_mul_f32_e32 v125, v111, v125
	v_mul_f32_e32 v126, v111, v126
	v_dual_mul_f32 v111, v111, v127 :: v_dual_fmac_f32 v20, v132, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v19, v131, v81 :: v_dual_fmac_f32 v22, v134, v84
	v_dual_fmac_f32 v21, v133, v83 :: v_dual_fmac_f32 v24, v136, v86
	v_dual_fmac_f32 v23, v135, v85 :: v_dual_fmac_f32 v26, v146, v88
	v_dual_fmac_f32 v25, v137, v87 :: v_dual_fmac_f32 v28, v148, v90
	v_dual_fmac_f32 v27, v147, v89 :: v_dual_fmac_f32 v30, v150, v92
	v_dual_fmac_f32 v29, v149, v91 :: v_dual_fmac_f32 v34, v112, v94
	v_dual_fmac_f32 v31, v110, v93 :: v_dual_fmac_f32 v38, v116, v98
	v_dual_fmac_f32 v35, v113, v95 :: v_dual_fmac_f32 v36, v114, v96
	v_dual_fmac_f32 v37, v115, v97 :: v_dual_fmac_f32 v40, v118, v100
	v_dual_fmac_f32 v39, v117, v99 :: v_dual_fmac_f32 v46, v123, v105
	v_dual_fmac_f32 v41, v119, v101 :: v_dual_fmac_f32 v44, v121, v103
	v_dual_fmac_f32 v43, v120, v102 :: v_dual_fmac_f32 v48, v125, v107
	v_dual_fmac_f32 v45, v122, v104 :: v_dual_fmac_f32 v42, v111, v109
	v_fmac_f32_e32 v47, v124, v106
	v_fmac_f32_e32 v49, v126, v108
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v255, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v15, v[138:141]
	s_waitcnt vmcnt(0)
	ds_store_b128 v15, v[142:145] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_and_b32_e32 v236, 0x60, v0
	s_addk_i32 s17, 0x400
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s42, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v109, v72, v71
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s20, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v10, s16, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v12, v10 offset:1664
	ds_load_u8 v15, v10 offset:1536
	ds_load_u8 v70, v10 offset:1920
	ds_load_u8 v71, v10 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, s14, v69
	v_add_nc_u32_e32 v11, s14, v68
	ds_load_b128 v[2:5], v6 offset:2048
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[78:81], v11 offset:2048
	ds_load_b128 v[99:102], v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v10 offset:1152
	ds_load_u8 v74, v10 offset:1024
	ds_load_u8 v75, v10 offset:1408
	ds_load_u8 v76, v10 offset:1280
	ds_load_u8 v77, v10 offset:640
	ds_load_u8 v82, v10 offset:512
	ds_load_u8 v83, v10 offset:896
	ds_load_u8 v84, v10 offset:768
	ds_load_u8 v107, v10 offset:1984
	ds_load_u8 v108, v10 offset:1856
	ds_load_u8 v134, v10 offset:1728
	ds_load_u8 v135, v10 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v73, s14, v66
	v_add_nc_u32_e32 v72, s14, v67
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v74, v11, 0xc0c0004
	v_perm_b32 v12, v15, v12, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_perm_b32 v15, v71, v70, 0xc0c0004
	ds_load_u8 v70, v10 offset:128
	ds_load_u8 v71, v10
	ds_load_u8 v85, v10 offset:384
	ds_load_u8 v86, v10 offset:256
	ds_load_u8 v136, v10 offset:1472
	ds_load_u8 v138, v10 offset:1344
	ds_load_u8 v139, v10 offset:1216
	ds_load_u8 v140, v10 offset:1088
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v77, v82, v77, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	v_lshl_or_b32 v116, v74, 16, v11
	v_lshl_or_b32 v117, v15, 16, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v115, v82, 16, v77
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v86, v85, 0xc0c0004
	v_dual_mov_b32 v90, s27 :: v_dual_mov_b32 v89, s26
	ds_load_u8 v74, v10 offset:3712
	ds_load_u8 v77, v10 offset:3584
	ds_load_u8 v82, v10 offset:3968
	ds_load_u8 v91, v10 offset:3840
	ds_load_u8 v125, v10 offset:5760
	ds_load_u8 v126, v10 offset:5632
	ds_load_u8 v127, v10 offset:6016
	ds_load_u8 v128, v10 offset:5888
	v_lshl_or_b32 v114, v71, 16, v70
	ds_load_u8 v70, v10 offset:3200
	ds_load_u8 v71, v10 offset:3072
	ds_load_u8 v92, v10 offset:3456
	ds_load_u8 v93, v10 offset:3328
	ds_load_u8 v94, v10 offset:2688
	ds_load_u8 v95, v10 offset:2560
	ds_load_u8 v96, v10 offset:2944
	ds_load_u8 v97, v10 offset:2816
	ds_load_u8 v98, v10 offset:2176
	ds_load_u8 v118, v10 offset:2048
	ds_load_u8 v119, v10 offset:2432
	ds_load_u8 v120, v10 offset:2304
	ds_load_u8 v143, v10 offset:4032
	ds_load_u8 v144, v10 offset:3904
	ds_load_u8 v145, v10 offset:3776
	ds_load_u8 v146, v10 offset:3648
	ds_load_u8 v75, v10 offset:960
	ds_load_u8 v76, v10 offset:832
	ds_load_u8 v141, v10 offset:704
	ds_load_u8 v142, v10 offset:576
	v_mov_b32_e32 v88, s25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v73 offset:2048
	ds_load_b128 v[103:106], v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v10 offset:448
	ds_load_u8 v12, v10 offset:320
	ds_load_u8 v15, v10 offset:192
	ds_load_u8 v73, v10 offset:64
	v_mov_b32_e32 v85, s22
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v150, v10 offset:3008
	ds_load_u8 v151, v10 offset:2880
	ds_load_u8 v152, v10 offset:2752
	ds_load_u8 v153, v10 offset:2624
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v71, v93, v92, 0xc0c0004
	ds_load_u8 v154, v10 offset:2496
	ds_load_u8 v155, v10 offset:2368
	ds_load_u8 v156, v10 offset:2240
	ds_load_u8 v157, v10 offset:2112
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v122, v95, v94, 0xc0c0004
	ds_load_u8 v166, v10 offset:5056
	ds_load_u8 v167, v10 offset:4928
	ds_load_u8 v168, v10 offset:4800
	ds_load_u8 v169, v10 offset:4672
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v123, v97, v96, 0xc0c0004
	v_mov_b32_e32 v87, s24
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v118, v118, v98, 0xc0c0004
	v_perm_b32 v74, v77, v74, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v124, v120, v119, 0xc0c0004
	v_perm_b32 v77, v91, v82, 0xc0c0004
	v_lshl_or_b32 v120, v71, 16, v70
	v_lshl_or_b32 v119, v123, 16, v122
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_lshl_or_b32 v118, v124, 16, v118
	v_lshl_or_b32 v121, v77, 16, v74
	ds_load_u8 v70, v10 offset:5248
	ds_load_u8 v71, v10 offset:5120
	ds_load_u8 v74, v10 offset:5504
	ds_load_u8 v77, v10 offset:5376
	ds_load_u8 v122, v10 offset:4736
	ds_load_u8 v123, v10 offset:4608
	ds_load_u8 v124, v10 offset:4992
	ds_load_u8 v129, v10 offset:4864
	ds_load_u8 v158, v10 offset:6080
	ds_load_u8 v159, v10 offset:5952
	ds_load_u8 v160, v10 offset:5824
	ds_load_u8 v161, v10 offset:5696
	v_perm_b32 v126, v128, v127, 0xc0c0004
	ds_load_u8 v127, v10 offset:4224
	ds_load_u8 v128, v10 offset:4096
	ds_load_u8 v130, v10 offset:4480
	ds_load_u8 v131, v10 offset:4352
	ds_load_u8 v162, v10 offset:5568
	ds_load_u8 v163, v10 offset:5440
	ds_load_u8 v164, v10 offset:5312
	ds_load_u8 v165, v10 offset:5184
	ds_load_u8 v82, v10 offset:3520
	ds_load_u8 v147, v10 offset:3392
	ds_load_u8 v148, v10 offset:3264
	ds_load_u8 v149, v10 offset:3136
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v15, v73, v15, 0xc0c0004
	v_lshl_or_b32 v125, v126, 16, v125
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_dual_mov_b32 v86, s23 :: v_dual_mov_b32 v83, s20
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_mov_b32_e32 v84, s21
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v71, v77, v74, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v74, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v77, v129, v124, 0xc0c0004
	ds_load_u8 v129, v10 offset:7808
	ds_load_u8 v132, v10 offset:7680
	ds_load_u8 v133, v10 offset:8064
	ds_load_u8 v137, v10 offset:7936
	ds_load_u8 v170, v10 offset:4544
	ds_load_u8 v171, v10 offset:4416
	ds_load_u8 v172, v10 offset:4288
	ds_load_u8 v173, v10 offset:4160
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v122, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v127, v131, v130, 0xc0c0004
	v_lshl_or_b32 v124, v71, 16, v70
	v_lshl_or_b32 v123, v77, 16, v74
	ds_load_u8 v70, v10 offset:7296
	ds_load_u8 v71, v10 offset:7168
	ds_load_u8 v74, v10 offset:7552
	ds_load_u8 v77, v10 offset:7424
	ds_load_u8 v174, v10 offset:8128
	ds_load_u8 v175, v10 offset:8000
	ds_load_u8 v176, v10 offset:7872
	ds_load_u8 v177, v10 offset:7744
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v82, v147, v82, 0xc0c0004
	v_lshl_or_b32 v122, v127, 16, v122
	v_wmma_i32_16x16x16_iu8 v[91:98], v[114:117], v[103:106], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[118:121], v[99:102], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v178, v132, v129, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v137, v137, v133, 0xc0c0004
	ds_load_u8 v179, v10 offset:6784
	ds_load_u8 v180, v10 offset:6656
	ds_load_u8 v181, v10 offset:7040
	ds_load_u8 v182, v10 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v72 offset:2048
	ds_load_b128 v[130:133], v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v72, v10 offset:6272
	ds_load_u8 v183, v10 offset:6144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v187, v71, v70, 0xc0c0004
	ds_load_u8 v70, v10 offset:6528
	ds_load_u8 v71, v10 offset:6400
	ds_load_u8 v189, v10 offset:7104
	ds_load_u8 v190, v10 offset:6976
	ds_load_u8 v191, v10 offset:6848
	ds_load_u8 v192, v10 offset:6720
	v_lshl_or_b32 v137, v137, 16, v178
	ds_load_u8 v178, v10 offset:7616
	ds_load_u8 v184, v10 offset:7488
	ds_load_u8 v185, v10 offset:7360
	ds_load_u8 v186, v10 offset:7232
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v188, v77, v74, 0xc0c0004
	v_perm_b32 v74, v108, v107, 0xc0c0004
	v_perm_b32 v77, v140, v139, 0xc0c0004
	v_perm_b32 v107, v138, v136, 0xc0c0004
	v_perm_b32 v108, v142, v141, 0xc0c0004
	v_lshl_or_b32 v138, v11, 16, v15
	v_perm_b32 v11, v146, v145, 0xc0c0004
	v_perm_b32 v15, v144, v143, 0xc0c0004
	v_lshl_or_b32 v140, v107, 16, v77
	v_lshl_or_b32 v139, v75, 16, v108
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	v_perm_b32 v107, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v180, v182, v181, 0xc0c0004
	ds_load_u8 v181, v10 offset:6592
	ds_load_u8 v182, v10 offset:6464
	ds_load_u8 v193, v10 offset:6336
	ds_load_u8 v10, v10 offset:6208
	v_perm_b32 v108, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v183, v183, v72, 0xc0c0004
	v_perm_b32 v72, v135, v134, 0xc0c0004
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_perm_b32 v135, v157, v156, 0xc0c0004
	v_perm_b32 v136, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v12, v71, v70, 0xc0c0004
	v_lshl_or_b32 v141, v74, 16, v72
	v_lshl_or_b32 v145, v15, 16, v11
	v_lshl_or_b32 v144, v82, 16, v107
	v_lshl_or_b32 v143, v134, 16, v108
	v_lshl_or_b32 v142, v136, 16, v135
	v_wmma_i32_16x16x16_iu8 v[70:77], v[138:141], v[103:106], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v11, v161, v160, 0xc0c0004
	v_perm_b32 v15, v159, v158, 0xc0c0004
	v_perm_b32 v82, v165, v164, 0xc0c0004
	v_perm_b32 v103, v163, v162, 0xc0c0004
	v_perm_b32 v104, v169, v168, 0xc0c0004
	v_perm_b32 v105, v167, v166, 0xc0c0004
	v_perm_b32 v106, v173, v172, 0xc0c0004
	v_perm_b32 v107, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[70:77], v[142:145], v[99:102], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v15, 16, v11
	v_lshl_or_b32 v148, v103, 16, v82
	v_lshl_or_b32 v147, v105, 16, v104
	v_lshl_or_b32 v146, v107, 16, v106
	v_perm_b32 v11, v177, v176, 0xc0c0004
	v_perm_b32 v15, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[114:117], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[138:141], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[122:125], v[6:9], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v134, v12, 16, v183
	v_wmma_i32_16x16x16_iu8 v[70:77], v[146:149], v[6:9], v[70:77] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v15, 16, v11
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v186, v185, 0xc0c0004
	v_perm_b32 v7, v184, v178, 0xc0c0004
	v_perm_b32 v11, v192, v191, 0xc0c0004
	v_perm_b32 v12, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v193, 0xc0c0004
	v_perm_b32 v15, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[118:121], v[78:81], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[142:145], v[78:81], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v188, 16, v187
	v_lshl_or_b32 v135, v180, 16, v179
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v12, 16, v11
	v_lshl_or_b32 v6, v15, 16, v10
	v_wmma_i32_16x16x16_iu8 v[99:106], v[122:125], v[2:5], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[146:149], v[2:5], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[134:137], v[130:133], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[6:9], v[130:133], v[70:77] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v9, v70
	v_cvt_f32_i32_e32 v10, v71
	v_cvt_f32_i32_e32 v11, v72
	v_cvt_f32_i32_e32 v70, v73
	v_cvt_f32_i32_e32 v71, v74
	v_cvt_f32_i32_e32 v72, v75
	v_cvt_f32_i32_e32 v73, v76
	v_cvt_f32_i32_e32 v74, v77
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
	s_ashr_i32 s6, s7, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s6, s6, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s6, s7, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s6, 6
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s6, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v15, v64, s6, 1
	v_add_lshl_u32 v91, v65, s6, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s8, s6, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v93, v63, s8, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v94, v62, s8, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v92, 0x80000000, v91 :: v_dual_cndmask_b32 v93, 0x80000000, v93
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v91, v15, s[12:15], 0 offen
	buffer_load_u16 v92, v92, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v61, s8, 1
	v_add_lshl_u32 v95, v60, s8, 1
	v_add_lshl_u32 v96, v59, s8, 1
	v_add_lshl_u32 v97, v58, s8, 1
	v_add_lshl_u32 v98, v57, s8, 1
	v_add_lshl_u32 v99, v56, s8, 1
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	v_add_lshl_u32 v105, v55, s8, 1
	v_add_lshl_u32 v106, v54, s8, 1
	v_add_lshl_u32 v107, v53, s8, 1
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	v_dual_cndmask_b32 v100, 0x80000000, v95 :: v_dual_cndmask_b32 v101, 0x80000000, v96
	v_dual_cndmask_b32 v102, 0x80000000, v97 :: v_dual_cndmask_b32 v103, 0x80000000, v98
	v_cndmask_b32_e32 v104, 0x80000000, v99, vcc_lo
	s_clause 0x7
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v95, v15, s[4:7], 0 offen
	buffer_load_u16 v96, v100, s[4:7], 0 offen
	buffer_load_u16 v97, v101, s[4:7], 0 offen
	buffer_load_u16 v98, v102, s[4:7], 0 offen
	buffer_load_u16 v99, v103, s[4:7], 0 offen
	buffer_load_u16 v100, v104, s[4:7], 0 offen
	v_add_lshl_u32 v101, v51, s8, 1
	v_add_lshl_u32 v104, v33, s8, 1
	v_dual_cndmask_b32 v15, 0x80000000, v105 :: v_dual_cndmask_b32 v102, 0x80000000, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v103, 0x80000000, v107 :: v_dual_cndmask_b32 v108, 0x80000000, v101
	v_add_lshl_u32 v105, v52, s8, 1
	v_add_lshl_u32 v106, v50, s8, 1
	v_add_lshl_u32 v107, v32, s8, 1
	v_cndmask_b32_e32 v110, 0x80000000, v104, vcc_lo
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v111, 0x80000000, v105 :: v_dual_cndmask_b32 v112, 0x80000000, v106
	v_cndmask_b32_e32 v113, 0x80000000, v107, vcc_lo
	s_clause 0x7
	buffer_load_u16 v101, v15, s[4:7], 0 offen
	buffer_load_u16 v102, v102, s[4:7], 0 offen
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	buffer_load_u16 v104, v108, s[4:7], 0 offen
	buffer_load_u16 v105, v110, s[4:7], 0 offen
	buffer_load_u16 v106, v111, s[4:7], 0 offen
	buffer_load_u16 v107, v112, s[4:7], 0 offen
	buffer_load_u16 v108, v113, s[4:7], 0 offen
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s20, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s44, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v110, v1 offset:1664
	ds_load_u8 v111, v1 offset:1536
	ds_load_u8 v112, v1 offset:1920
	ds_load_u8 v113, v1 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v15, s42, v69
	v_add_nc_u32_e32 v109, s42, v68
	v_add_nc_u32_e32 v117, s42, v67
	v_add_nc_u32_e32 v114, s42, v66
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
	v_mov_b32_e32 v140, s27
	v_mov_b32_e32 v138, s25
	v_mov_b32_e32 v136, s23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[66:69], v15 offset:2048
	ds_load_b128 v[125:128], v15
	ds_load_b128 v[141:144], v109 offset:2048
	ds_load_b128 v[129:132], v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v15, v1 offset:1152
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
	v_mov_b32_e32 v139, s26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[145:148], v114 offset:2048
	ds_load_b128 v[149:152], v114
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v179, v1 offset:960
	ds_load_u8 v180, v1 offset:832
	ds_load_u8 v181, v1 offset:704
	ds_load_u8 v182, v1 offset:576
	v_mov_b32_e32 v134, s21
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
	v_mov_b32_e32 v137, s24
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v15, v109, v15, 0xc0c0004
	v_mov_b32_e32 v135, s22
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v109, v116, v115, 0xc0c0004
	v_mov_b32_e32 v133, s20
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v115, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v116, v121, v120, 0xc0c0004
	v_lshl_or_b32 v155, v109, 16, v15
	v_perm_b32 v109, v113, v112, 0xc0c0004
	ds_load_u8 v111, v1 offset:3712
	ds_load_u8 v112, v1 offset:3584
	ds_load_u8 v113, v1 offset:3968
	ds_load_u8 v114, v1 offset:3840
	ds_load_u8 v15, v1 offset:448
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
	v_perm_b32 v15, v118, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[149:152], v[133:140] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v177, v15, 16, v119
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v186, v185, 0xc0c0004
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
	v_lshl_or_b32 v152, v173, 16, v15
	v_lshl_or_b32 v151, v175, 16, v174
	v_lshl_or_b32 v150, v182, 16, v181
	v_lshl_or_b32 v149, v184, 16, v183
	v_perm_b32 v15, v202, v201, 0xc0c0004
	v_perm_b32 v173, v200, v199, 0xc0c0004
	v_perm_b32 v174, v206, v205, 0xc0c0004
	v_perm_b32 v175, v204, v203, 0xc0c0004
	v_perm_b32 v181, v210, v209, 0xc0c0004
	v_perm_b32 v182, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v173, 16, v15
	v_lshl_or_b32 v183, v175, 16, v174
	v_perm_b32 v15, v222, v221, 0xc0c0004
	v_lshl_or_b32 v182, v182, 16, v181
	v_lshl_or_b32 v181, v186, 16, v185
	v_perm_b32 v129, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v185, v228, v211, 0xc0c0004
	v_perm_b32 v186, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v235, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[125:128], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v188, v129, 16, v15
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_perm_b32 v15, v230, v229, 0xc0c0004
	v_perm_b32 v145, v232, v231, 0xc0c0004
	v_perm_b32 v146, v226, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[125:132], v[157:160], v[141:144], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v217, 16, v216
	v_lshl_or_b32 v174, v224, 16, v223
	v_lshl_or_b32 v173, v218, 16, v227
	v_lshl_or_b32 v187, v185, 16, v15
	v_lshl_or_b32 v186, v145, 16, v186
	v_lshl_or_b32 v185, v146, 16, v1
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[66:69], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[66:69], v[133:140] neg_lo:[1,1,0]
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
	s_ashr_i32 s6, s17, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, v108.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s6, s6, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v68.h, v107.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s7, s17, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s6, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s9, s7, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s7, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s9, s41
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v15, v64, s9, 1
	v_add_lshl_u32 v64, v65, s9, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s9, s9, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s10, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v55, s9, 1
	v_add_lshl_u32 v54, v54, s9, 1
	v_add_lshl_u32 v53, v53, s9, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s10
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v51, v51, s9, 1
	v_add_lshl_u32 v33, v33, s9, 1
	v_add_lshl_u32 v52, v52, s9, 1
	v_add_lshl_u32 v50, v50, s9, 1
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	v_add_lshl_u32 v32, v32, s9, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	s_clause 0x7
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v65, v33, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v66, v32, s[4:7], 0 offen
	v_add_lshl_u32 v63, v63, s9, 1
	v_add_lshl_u32 v62, v62, s9, 1
	v_add_lshl_u32 v61, v61, s9, 1
	v_add_lshl_u32 v60, v60, s9, 1
	v_add_lshl_u32 v59, v59, s9, 1
	v_add_lshl_u32 v58, v58, s9, 1
	v_add_lshl_u32 v57, v57, s9, 1
	v_add_lshl_u32 v56, v56, s9, 1
	v_dual_cndmask_b32 v63, 0x80000000, v63 :: v_dual_cndmask_b32 v62, 0x80000000, v62
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	s_clause 0x7
	buffer_load_u16 v63, v63, s[4:7], 0 offen
	buffer_load_u16 v62, v62, s[4:7], 0 offen
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v64, 0x80000000, v64
	s_clause 0x1
	buffer_load_u16 v15, v15, s[12:15], 0 offen
	buffer_load_u16 v64, v64, s[12:15], 0 offen
	v_mov_b16_e32 v33.l, 0
	v_mov_b16_e32 v33.h, v92.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v69.h, v106.l
	v_mov_b16_e32 v92.h, v105.l
	v_mov_b16_e32 v93.h, v104.l
	v_mov_b16_e32 v94.h, v103.l
	v_mov_b16_e32 v95.h, v102.l
	v_mov_b16_e32 v96.h, v101.l
	v_mov_b16_e32 v97.h, v100.l
	v_mov_b16_e32 v98.h, v99.l
	v_mov_b16_e32 v99.h, v98.l
	v_mov_b16_e32 v100.h, v97.l
	v_mov_b16_e32 v101.h, v96.l
	v_mov_b16_e32 v102.h, v95.l
	v_mov_b16_e32 v103.h, v94.l
	v_mov_b16_e32 v104.h, v93.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v108, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v67.l, v33.l
	v_mov_b16_e32 v68.l, v33.l
	v_mov_b16_e32 v69.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v106, 14, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v92.l, v33.l
	v_mov_b16_e32 v93.l, v33.l
	v_mov_b16_e32 v94.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v107, 2, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v95.l, v33.l
	v_mov_b16_e32 v96.l, v33.l
	v_mov_b16_e32 v97.l, v33.l
	v_mov_b16_e32 v98.l, v33.l
	v_mov_b16_e32 v99.l, v33.l
	v_mov_b16_e32 v100.l, v33.l
	v_mov_b16_e32 v101.l, v33.l
	v_mov_b16_e32 v102.l, v33.l
	v_mov_b16_e32 v103.l, v33.l
	v_mov_b16_e32 v104.l, v33.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v141, v33, v67 :: v_dual_and_b32 v32, 0x7f, v0
	v_dual_mul_f32 v145, v33, v93 :: v_dual_and_b32 v108, 0x840, v108
	v_mul_f32_e32 v142, v33, v68
	v_mul_f32_e32 v143, v33, v69
	v_dual_mul_f32 v144, v33, v92 :: v_dual_lshlrev_b32 v109, 11, v106
	v_dual_mul_f32 v146, v33, v94 :: v_dual_and_b32 v107, 0x78, v107
	v_mul_f32_e32 v147, v33, v95
	v_mul_f32_e32 v148, v33, v96
	v_mul_f32_e32 v149, v33, v97
	v_mul_f32_e32 v150, v33, v98
	v_mul_f32_e32 v151, v33, v99
	v_mul_f32_e32 v152, v33, v100
	v_mul_f32_e32 v153, v33, v101
	v_mul_f32_e32 v154, v33, v102
	v_mul_f32_e32 v155, v33, v103
	v_mul_f32_e32 v156, v33, v104
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v33.h, v91.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v105, 7, v14
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s4, s40, s35
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v91, v236, 3, v107
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s4, s4, s34
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v33, v97
	v_mul_f32_e32 v68, v33, v68
	v_mul_f32_e32 v96, v33, v96
	v_mul_f32_e32 v100, v33, v100
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v105, s35, v105
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v97, v8, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v33, v94
	v_mul_f32_e32 v104, v33, v104
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v100, v5, v20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v33, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v23, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v33, v69
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v32, s4, v32, v105
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v92, v33, v92
	v_mul_f32_e32 v98, v33, v98
	v_mul_f32_e32 v102, v33, v102
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v91, v91, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v146, v85, v45
	v_fma_f32 v86, v145, v86, v46
	v_fma_f32 v89, v142, v89, v49
	v_fma_f32 v87, v144, v87, v47
	v_fma_f32 v90, v141, v90, v42
	v_fma_f32 v88, v143, v88, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v85, s3
	v_cndmask_b32_e64 v46, v46, v86, s3
	v_cndmask_b32_e64 v49, v49, v89, s3
	v_cndmask_b32_e64 v47, v47, v87, s3
	v_cndmask_b32_e64 v42, v42, v90, s3
	v_cndmask_b32_e64 v48, v48, v88, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v23, 16, v55
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v101, v33, v101 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v155, v76, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v50, 16, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v35, v76, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v68, v73, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v35, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v35, 16, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v96, v9, v24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v53, 16, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v104, v12, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v103, v33, v103
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v9, s3
	v_cndmask_b32_e64 v9, v20, v5, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v99, v33, v99 :: v_dual_lshlrev_b32 v20, 16, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v80, v151, v80, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, v99, v6, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v80, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v6, v21, v6, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v94, v11, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v11, s3
	v_cndmask_b32_e64 v11, v16, v12, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v153, v78, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v93, v33, v93
	v_dual_mul_f32 v95, v33, v95 :: v_dual_lshlrev_b32 v16, 16, v61
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v78, v37, v78, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v69, v72, v29
	v_fma_f32 v68, v93, v70, v27
	v_fma_f32 v69, v102, v3, v18
	v_fma_f32 v70, v103, v2, v17
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[32:33]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v37, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v37, 16, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v98, v7, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v18, v69, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v18, 16, v59
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v33, vcc_lo, s0, v2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v15, 16, v62
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v152, v79, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v7, s3
	v_cndmask_b32_e64 v7, v17, v70, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v2, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v101, v4, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v56, v2, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v95, v10, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v154, v77, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v19, v4, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v19, 16, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v156, v75, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v25, v10, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v25, 16, v54
	v_lshlrev_b32_e32 v51, 16, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v147, v84, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v34, v75, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v34, v67, v74, v31
	v_fma_f32 v67, v92, v71, v28
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_or3_b32 v71, v91, v109, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v149, v82, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v79, s3
	v_cndmask_b32_e64 v31, v31, v34, s3
	v_cndmask_b32_e64 v28, v28, v67, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v67, 0, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v148, v83, v43
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_ci_u32_e64 v34, null, s1, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v150, v81, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v83, s3
	v_cndmask_b32_e64 v36, v36, v77, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v2, v12
	v_mul_f32_e32 v55, v2, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v81, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v57, v2, v17 :: v_dual_mul_f32 v12, v3, v12
	v_mul_f32_e32 v58, v2, v18
	v_dual_mul_f32 v59, v2, v19 :: v_dual_mul_f32 v16, v3, v16
	v_mul_f32_e32 v60, v2, v20
	v_dual_mul_f32 v61, v2, v21 :: v_dual_mul_f32 v18, v3, v18
	v_dual_mul_f32 v63, v2, v25 :: v_dual_mul_f32 v20, v3, v20
	v_dual_mul_f32 v64, v2, v35 :: v_dual_mul_f32 v17, v3, v17
	v_mul_f32_e32 v65, v2, v37
	v_dual_mul_f32 v66, v2, v51 :: v_dual_mul_f32 v21, v3, v21
	v_mul_f32_e32 v77, v2, v52
	v_mul_f32_e32 v79, v2, v50
	v_dual_mul_f32 v2, v2, v53 :: v_dual_mul_f32 v23, v3, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v84, s3
	v_cndmask_b32_e64 v27, v27, v68, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v3, v15
	v_mul_f32_e32 v25, v3, v25
	v_mul_f32_e32 v35, v3, v35
	v_mul_f32_e32 v37, v3, v37
	v_mul_f32_e32 v51, v3, v51
	v_mul_f32_e32 v50, v3, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v82, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v3, v19
	v_mul_f32_e32 v52, v3, v52
	v_mul_f32_e32 v3, v3, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v54, v1, v11
	v_fma_f32 v53, v55, v110, v7
	v_fma_f32 v54, v56, v111, v5
	v_fma_f32 v55, v57, v112, v4
	v_fma_f32 v56, v58, v113, v9
	v_fma_f32 v57, v59, v114, v6
	v_fma_f32 v58, v60, v115, v22
	v_fma_f32 v60, v62, v117, v24
	v_fma_f32 v2, v2, v124, v31
	v_fma_f32 v12, v12, v125, v75
	v_fma_f32 v16, v16, v127, v36
	v_fma_f32 v20, v20, v131, v40
	v_fma_f32 v82, v23, v133, v43
	v_fma_f32 v59, v61, v116, v8
	v_fma_f32 v61, v63, v118, v10
	v_fma_f32 v63, v65, v120, v27
	v_fma_f32 v65, v77, v122, v29
	v_fma_f32 v77, v15, v126, v76
	v_fma_f32 v83, v25, v134, v44
	v_fma_f32 v62, v64, v119, v26
	v_fma_f32 v84, v35, v135, v45
	v_fma_f32 v64, v66, v121, v28
	v_fma_f32 v66, v79, v123, v30
	v_fma_f32 v79, v17, v128, v78
	v_fma_f32 v85, v37, v136, v46
	v_fma_f32 v18, v18, v129, v38
	v_fma_f32 v51, v51, v137, v47
	v_fma_f32 v50, v50, v139, v49
	v_fma_f32 v80, v19, v130, v39
	v_fma_f32 v81, v21, v132, v41
	v_fma_f32 v52, v52, v138, v48
	v_fma_f32 v86, v3, v140, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v11, v1, s2
	v_cndmask_b32_e64 v11, v6, v57, s2
	v_cndmask_b32_e64 v19, v24, v60, s2
	v_cndmask_b32_e64 v37, v31, v2, s2
	v_cndmask_b32_e64 v2, v75, v12, s2
	v_cndmask_b32_e64 v6, v36, v16, s2
	v_cndmask_b32_e64 v16, v40, v20, s2
	v_cndmask_b32_e64 v20, v43, v82, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v68, v71, 8, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v7, v53, s2
	v_cndmask_b32_e64 v7, v4, v55, s2
	v_cndmask_b32_e64 v15, v22, v58, s2
	v_cndmask_b32_e64 v21, v10, v61, s2
	v_cndmask_b32_e64 v4, v76, v77, s2
	v_cndmask_b32_e64 v22, v44, v83, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v69, v71, 16, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v54, s2
	v_cndmask_b32_e64 v23, v26, v62, s2
	v_cndmask_b32_e64 v24, v45, v84, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v70, v71, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v8, v59, s2
	v_cndmask_b32_e64 v25, v27, v63, s2
	v_cndmask_b32_e64 v8, v78, v79, s2
	v_cndmask_b32_e64 v26, v46, v85, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v72, v71, 32, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v56, s2
	v_cndmask_b32_e64 v27, v28, v64, s2
	v_cndmask_b32_e64 v10, v38, v18, s2
	v_cndmask_b32_e64 v28, v47, v51, s2
	v_cndmask_b32_e64 v36, v49, v50, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v73, v71, 40, 0
	v_xad_u32 v74, v71, 48, 0
	v_xad_u32 v71, v71, 56, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v65, s2
	v_cndmask_b32_e64 v35, v30, v66, s2
	v_cndmask_b32_e64 v12, v39, v80, s2
	v_cndmask_b32_e64 v18, v41, v81, s2
	v_cndmask_b32_e64 v30, v48, v52, s2
	v_cndmask_b32_e64 v38, v42, v86, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v67, v[1:2], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v68, v[3:4], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v69, v[5:6], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v70, v[7:8], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v72, v[9:10], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v73, v[11:12], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v74, v[15:16], v[35:36] offset1:2
	ds_store_2addr_stride64_b64 v71, v[17:18], v[37:38] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
	v_and_b32_e32 v2, 0x700, v13
	v_lshlrev_b32_e32 v3, 2, v106
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v1, v0
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_13:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v35, v36, v28
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s8, vcc_lo, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s8
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 1, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_15:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v35, v36, v24
	global_atomic_cmpswap_b32 v28, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v36
	v_mov_b32_e32 v36, v28
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 2, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_17:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v35, v36, v20
	global_atomic_cmpswap_b32 v24, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v36
	v_mov_b32_e32 v36, v24
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 6, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_19:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v35, v36, v16
	global_atomic_cmpswap_b32 v20, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v36
	v_mov_b32_e32 v36, v20
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 3, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_21:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v35, v36, v12
	global_atomic_cmpswap_b32 v16, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v36
	v_mov_b32_e32 v36, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 10, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_23:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v35, v36, v8
	global_atomic_cmpswap_b32 v12, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v36
	v_mov_b32_e32 v36, v12
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 12, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_25:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v35, v36, v4
	global_atomic_cmpswap_b32 v8, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v36
	v_mov_b32_e32 v36, v8
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 14, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_27:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v35, v36, v0
	global_atomic_cmpswap_b32 v4, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v36
	v_mov_b32_e32 v36, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 4, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_29:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v30
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 18, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_31:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v26
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 20, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_33:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v22
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 22, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_35:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v18
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 24, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_37:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v14
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 26, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_39:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v10
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 28, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_41:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v6
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 30, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_43:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v2
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_43
; %bb.44:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s33, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_45:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_45
; %bb.46:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s35, 34, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s0, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s1, v29, vcc_lo
	global_load_b32 v34, v[28:29], off
.LBB0_47:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v34
	v_mov_b32_e32 v34, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_47
; %bb.48:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s35, 36, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s1, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_49:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_49
; %bb.50:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s35, 38, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s1, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_51:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_51
; %bb.52:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 40, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_53:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_53
; %bb.54:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 42, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_55:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_55
; %bb.56:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 44, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_57:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_57
; %bb.58:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s35, 46, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s1, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_59:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_59
; %bb.60:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 48, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_61:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_61
; %bb.62:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 50, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_63:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_63
; %bb.64:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 52, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_65:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_65
; %bb.66:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 54, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_67:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_67
; %bb.68:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 56, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_69:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_69
; %bb.70:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 58, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_71:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_71
; %bb.72:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 60, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_73:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_73
; %bb.74:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 62, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_75:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_75
; %bb.76:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16964
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
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
