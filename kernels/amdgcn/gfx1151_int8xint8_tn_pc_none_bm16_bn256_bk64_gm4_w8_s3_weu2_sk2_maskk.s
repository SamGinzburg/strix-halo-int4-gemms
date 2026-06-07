	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s33, s[0:1], 0x38
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v30, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v12, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v31, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v29, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v32, 16, v30
	v_or_b32_e32 v33, 32, v30
	v_or_b32_e32 v34, 48, v30
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 12, v29
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s28, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mul_lo_u32 v3, s28, v31
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[24:25], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s23, 0x31027000
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
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
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s29, v30
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v9, v12, 4, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[10:11], null, s29, 48, v[9:10]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s9, s10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v35, s29, 4, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s9, s9, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v36, s29, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s11, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s35, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s35, v31
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s35, v30
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s35, v32
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s5, s4, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s35, v33
	v_or_b32_e32 v7, s35, v34
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s9, s33, 0x7f
.Ltmp13:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s31, s2, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s30, s6, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s10, s29, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0x7f
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s33, v4
	v_cmp_gt_i32_e64 s3, s33, v5
	v_cmp_gt_i32_e64 s4, s33, v6
	v_cmp_gt_i32_e64 s5, s33, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s34, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s31, s10
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v11, v3, v2, s30
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s6, v9
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s34
	s_and_b32 s3, s3, s34
	s_and_b32 s4, s4, s34
	s_and_b32 s5, s5, s34
	s_and_b32 vcc_lo, vcc_lo, s34
	s_cmpk_gt_i32 s9, 0xff
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	s_mul_i32 s8, s28, s35
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_addk_i32 s35, 0x80
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s6, v35
	v_add_nc_u32_e32 v3, s6, v36
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add_nc_u32_e32 v5, s8, v11
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v26, s35, v31
	v_or_b32_e32 v27, s35, v30
	v_or_b32_e32 v28, s35, v32
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s6, v10
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s3
	v_cndmask_b32_e64 v7, 0x80000000, v3, s4
	.loc	1 346 30 is_stmt 1              ; generate_amdgcn.py:346:30
	s_lshl_b32 s3, s28, 7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s4, s29, 7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v25, 0x80000000, v5, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v37, s35, v33
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s4
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_add3_u32 v39, s8, s3, v11
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s33, v27
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v38, s35, v34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v40, s6, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s33, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v4, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v41, s6, v35
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s33, v37
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[2:5], v1, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v6, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v7, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v8, s[24:27], 0 offen
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v6, v25, s[20:23], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v39, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v42, s6, v36
	v_add_nc_u32_e32 v43, s6, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s33, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v7, 0x80000000, v40, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v8, 0x80000000, v41 :: v_dual_lshlrev_b32 v39, 4, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	s_mov_b32 s8, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v37, 0x80000000, v42, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_cmpk_gt_i32 s9, 0x17f
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v38, 0x80000000, v43, vcc_lo
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v52, v1, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[25:28], v7, s[24:27], 0 offen
	buffer_load_b128 v[40:43], v8, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v37, s[24:27], 0 offen
	buffer_load_b128 v[48:51], v38, s[24:27], 0 offen
	v_add_nc_u32_e32 v7, 0, v39
	v_or_b32_e32 v38, 0x3f0, v0
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v8, 0, v29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v7, v[13:16] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v7, v[17:20] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v7, v[21:24] offset:12288
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v8, v6 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v7, v[2:5]
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v8, v52 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v7, v[25:28] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v7, v[40:43] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v7, v[44:47] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v7, v[48:51] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_or_b32_e32 v6, 0x3f0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v37, 0x70, v1
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[6:7], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	s_add_i32 s5, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s0, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr37
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[6:7], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s36, s9, 7
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v37, 0x70, v1
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v13, 0
	s_addk_i32 s35, 0x80
	s_mov_b32 s37, 1
	s_add_i32 s5, 0, 0x8000
	s_add_i32 s1, 0, 0x8400
	s_add_i32 s0, 0, 0x4000
	s_add_i32 s36, s36, -3
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s3, s5
	s_mov_b32 s5, s1
	s_mov_b32 s1, s8
	s_mov_b32 s8, s0
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s9, 7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v44, s1, v37, v12
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s35, s0
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v42, s3, v12
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v45, s0, v31
	v_or_b32_e32 v46, s0, v30
	v_or_b32_e32 v47, s0, v32
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s1, s0, s29
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v48, s0, v33
	.loc	1 346 30                        ; generate_amdgcn.py:346:30
	v_mad_u64_u32 v[40:41], null, s0, s28, v[11:12]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v49, s0, v34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s1, s1, s31
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s33, v45
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v41, s1, v9
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s33, v46
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v50, s1, v35
	v_add_nc_u32_e32 v51, s1, v36
	v_add_nc_u32_e32 v52, s1, v10
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s33, v47
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v43, s3, v38
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s33, v48
	v_cmp_gt_i32_e64 s4, s33, v49
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	v_cndmask_b32_e64 v45, 0x80000000, v50, s1
	v_cndmask_b32_e64 v46, 0x80000000, v51, s3
	v_cndmask_b32_e64 v47, 0x80000000, v52, s4
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	buffer_load_b32 v118, v40, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[56:59], v41, s[24:27], 0 offen
	buffer_load_b128 v[60:63], v45, s[24:27], 0 offen
	buffer_load_b128 v[64:67], v46, s[24:27], 0 offen
	buffer_load_b128 v[68:71], v47, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v42 offset:208
	ds_load_u8 v48, v42 offset:240
	ds_load_u8 v49, v42 offset:224
	ds_load_u8 v50, v42 offset:192
	ds_load_u8 v51, v42 offset:144
	ds_load_u8 v52, v42 offset:176
	ds_load_u8 v53, v42 offset:160
	ds_load_u8 v54, v42 offset:128
	ds_load_u8 v55, v42 offset:80
	ds_load_u8 v72, v42 offset:112
	ds_load_u8 v73, v42 offset:96
	ds_load_u8 v74, v42 offset:64
	ds_load_u8 v75, v42
	ds_load_u8 v76, v42 offset:16
	ds_load_u8 v77, v42 offset:32
	ds_load_u8 v78, v42 offset:48
	ds_load_u8 v79, v44 offset:2304
	ds_load_u8 v80, v44 offset:2048
	ds_load_u8 v81, v44 offset:2816
	ds_load_u8 v82, v44 offset:2560
	ds_load_u8 v83, v42 offset:464
	ds_load_u8 v84, v42 offset:496
	ds_load_u8 v85, v42 offset:480
	ds_load_u8 v86, v42 offset:448
	ds_load_u8 v87, v42 offset:400
	ds_load_u8 v88, v42 offset:432
	ds_load_u8 v89, v42 offset:416
	ds_load_u8 v90, v42 offset:384
	ds_load_u8 v91, v42 offset:336
	ds_load_u8 v92, v42 offset:368
	ds_load_u8 v93, v42 offset:352
	ds_load_u8 v94, v42 offset:320
	ds_load_u8 v95, v42 offset:272
	ds_load_u8 v96, v42 offset:304
	ds_load_u8 v97, v42 offset:288
	ds_load_u8 v98, v42 offset:256
	ds_load_u8 v99, v42 offset:720
	ds_load_u8 v100, v42 offset:752
	ds_load_u8 v101, v42 offset:736
	ds_load_u8 v102, v42 offset:704
	ds_load_u8 v103, v42 offset:656
	ds_load_u8 v104, v42 offset:688
	ds_load_u8 v105, v42 offset:672
	ds_load_u8 v106, v42 offset:640
	ds_load_u8 v107, v42 offset:592
	ds_load_u8 v108, v42 offset:624
	ds_load_u8 v109, v42 offset:608
	ds_load_u8 v110, v42 offset:576
	ds_load_u8 v111, v42 offset:528
	ds_load_u8 v112, v42 offset:560
	ds_load_u8 v113, v42 offset:544
	ds_load_u8 v114, v42 offset:512
	ds_load_u8 v115, v42 offset:976
	ds_load_u8 v43, v43
	ds_load_u8 v119, v42 offset:992
	ds_load_u8 v120, v42 offset:960
	ds_load_u8 v121, v42 offset:912
	ds_load_u8 v122, v42 offset:944
	ds_load_u8 v123, v42 offset:928
	ds_load_u8 v124, v42 offset:896
	ds_load_u8 v125, v42 offset:848
	ds_load_u8 v126, v42 offset:880
	ds_load_u8 v127, v42 offset:864
	ds_load_u8 v128, v42 offset:832
	ds_load_u8 v129, v42 offset:784
	ds_load_u8 v130, v42 offset:816
	ds_load_u8 v131, v42 offset:800
	ds_load_u8 v42, v42 offset:768
	ds_load_u8 v132, v44 offset:3328
	ds_load_u8 v133, v44 offset:3072
	ds_load_u8 v134, v44 offset:3840
	ds_load_u8 v135, v44 offset:3584
	ds_load_u8 v136, v44 offset:3968
	ds_load_u8 v137, v44 offset:3712
	ds_load_u8 v138, v44 offset:3456
	ds_load_u8 v139, v44 offset:3200
	ds_load_u8 v41, v44 offset:2944
	ds_load_u8 v45, v44 offset:2688
	ds_load_u8 v46, v44 offset:2432
	ds_load_u8 v47, v44 offset:2176
	ds_load_u8 v140, v44 offset:1280
	ds_load_u8 v141, v44 offset:1024
	ds_load_u8 v142, v44 offset:1792
	ds_load_u8 v143, v44 offset:1536
	ds_load_u8 v144, v44 offset:1920
	ds_load_u8 v145, v44 offset:1664
	ds_load_u8 v146, v44 offset:1408
	ds_load_u8 v147, v44 offset:1152
	ds_load_u8 v148, v44 offset:256
	ds_load_u8 v149, v44
	ds_load_u8 v150, v44 offset:768
	ds_load_u8 v151, v44 offset:512
	ds_load_u8 v152, v44 offset:896
	ds_load_u8 v153, v44 offset:640
	ds_load_u8 v154, v44 offset:384
	ds_load_u8 v155, v44 offset:128
	ds_load_u8 v156, v44 offset:7424
	ds_load_u8 v157, v44 offset:7168
	ds_load_u8 v158, v44 offset:7936
	ds_load_u8 v159, v44 offset:7680
	ds_load_u8 v160, v44 offset:8064
	ds_load_u8 v161, v44 offset:7808
	ds_load_u8 v162, v44 offset:7552
	ds_load_u8 v163, v44 offset:7296
	ds_load_u8 v164, v44 offset:6400
	ds_load_u8 v165, v44 offset:6144
	ds_load_u8 v166, v44 offset:6912
	ds_load_u8 v167, v44 offset:6656
	ds_load_u8 v168, v44 offset:7040
	ds_load_u8 v169, v44 offset:6784
	ds_load_u8 v170, v44 offset:6528
	ds_load_u8 v171, v44 offset:6272
	ds_load_u8 v172, v44 offset:5376
	ds_load_u8 v173, v44 offset:5120
	ds_load_u8 v174, v44 offset:5888
	ds_load_u8 v175, v44 offset:5632
	ds_load_u8 v176, v44 offset:6016
	ds_load_u8 v177, v44 offset:5760
	ds_load_u8 v178, v44 offset:5504
	ds_load_u8 v179, v44 offset:5248
	ds_load_u8 v180, v44 offset:4352
	ds_load_u8 v181, v44 offset:4096
	ds_load_u8 v182, v44 offset:4864
	ds_load_u8 v183, v44 offset:4608
	ds_load_u8 v184, v44 offset:4992
	ds_load_u8 v185, v44 offset:4736
	ds_load_u8 v186, v44 offset:4480
	ds_load_u8 v187, v44 offset:4224
	ds_load_u8 v188, v44 offset:11520
	ds_load_u8 v189, v44 offset:11264
	ds_load_u8 v190, v44 offset:12032
	ds_load_u8 v191, v44 offset:11776
	ds_load_u8 v192, v44 offset:12160
	ds_load_u8 v193, v44 offset:11904
	ds_load_u8 v194, v44 offset:11648
	ds_load_u8 v195, v44 offset:11392
	ds_load_u8 v196, v44 offset:10496
	ds_load_u8 v197, v44 offset:10240
	ds_load_u8 v198, v44 offset:11008
	ds_load_u8 v199, v44 offset:10752
	ds_load_u8 v200, v44 offset:11136
	ds_load_u8 v201, v44 offset:10880
	ds_load_u8 v202, v44 offset:10624
	ds_load_u8 v203, v44 offset:10368
	ds_load_u8 v204, v44 offset:9472
	ds_load_u8 v205, v44 offset:9216
	ds_load_u8 v206, v44 offset:9984
	ds_load_u8 v207, v44 offset:9728
	ds_load_u8 v208, v44 offset:10112
	ds_load_u8 v209, v44 offset:9856
	ds_load_u8 v210, v44 offset:9600
	ds_load_u8 v211, v44 offset:9344
	ds_load_u8 v212, v44 offset:8448
	ds_load_u8 v213, v44 offset:8192
	ds_load_u8 v214, v44 offset:8960
	ds_load_u8 v215, v44 offset:8704
	ds_load_u8 v216, v44 offset:9088
	ds_load_u8 v217, v44 offset:8832
	ds_load_u8 v218, v44 offset:8576
	ds_load_u8 v219, v44 offset:8320
	ds_load_u8 v220, v44 offset:15616
	ds_load_u8 v221, v44 offset:15360
	ds_load_u8 v222, v44 offset:16128
	ds_load_u8 v223, v44 offset:15872
	ds_load_u8 v224, v44 offset:16256
	ds_load_u8 v225, v44 offset:16000
	ds_load_u8 v226, v44 offset:15744
	ds_load_u8 v227, v44 offset:15488
	ds_load_u8 v228, v44 offset:14592
	ds_load_u8 v229, v44 offset:14336
	ds_load_u8 v230, v44 offset:15104
	ds_load_u8 v231, v44 offset:14848
	ds_load_u8 v232, v44 offset:15232
	ds_load_u8 v233, v44 offset:14976
	ds_load_u8 v234, v44 offset:14720
	ds_load_u8 v235, v44 offset:14464
	ds_load_u8 v236, v44 offset:13568
	ds_load_u8 v237, v44 offset:13312
	ds_load_u8 v238, v44 offset:14080
	ds_load_u8 v239, v44 offset:13824
	ds_load_u8 v240, v44 offset:14208
	ds_load_u8 v241, v44 offset:13952
	ds_load_u8 v242, v44 offset:13696
	ds_load_u8 v243, v44 offset:13440
	ds_load_u8 v244, v44 offset:12544
	ds_load_u8 v245, v44 offset:12288
	ds_load_u8 v246, v44 offset:13056
	ds_load_u8 v247, v44 offset:12800
	ds_load_u8 v248, v44 offset:13184
	ds_load_u8 v249, v44 offset:12928
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v40, v50, v40, 0xc0c0004
	ds_load_u8 v50, v44 offset:12672
	ds_load_u8 v44, v44 offset:12416
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_perm_b32 v49, v54, v51, 0xc0c0004
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v52, v74, v55, 0xc0c0004
	v_perm_b32 v53, v73, v72, 0xc0c0004
	v_perm_b32 v54, v75, v76, 0xc0c0004
	v_perm_b32 v55, v77, v78, 0xc0c0004
	v_perm_b32 v78, v80, v79, 0xc0c0004
	v_perm_b32 v79, v82, v81, 0xc0c0004
	v_perm_b32 v80, v141, v140, 0xc0c0004
	v_perm_b32 v76, v133, v132, 0xc0c0004
	v_perm_b32 v81, v143, v142, 0xc0c0004
	v_perm_b32 v77, v135, v134, 0xc0c0004
	v_perm_b32 v82, v149, v148, 0xc0c0004
	v_perm_b32 v132, v151, v150, 0xc0c0004
	v_perm_b32 v83, v86, v83, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v85, v90, v87, 0xc0c0004
	v_perm_b32 v86, v89, v88, 0xc0c0004
	v_perm_b32 v87, v94, v91, 0xc0c0004
	v_perm_b32 v88, v93, v92, 0xc0c0004
	v_perm_b32 v99, v102, v99, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v101, v106, v103, 0xc0c0004
	v_perm_b32 v102, v105, v104, 0xc0c0004
	v_perm_b32 v103, v110, v107, 0xc0c0004
	v_perm_b32 v104, v109, v108, 0xc0c0004
	v_perm_b32 v133, v139, v138, 0xc0c0004
	v_perm_b32 v134, v137, v136, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	v_perm_b32 v41, v45, v41, 0xc0c0004
	v_perm_b32 v45, v147, v146, 0xc0c0004
	v_perm_b32 v47, v145, v144, 0xc0c0004
	v_perm_b32 v135, v155, v154, 0xc0c0004
	v_perm_b32 v136, v153, v152, 0xc0c0004
	v_perm_b32 v89, v98, v95, 0xc0c0004
	v_perm_b32 v90, v97, v96, 0xc0c0004
	v_perm_b32 v91, v157, v156, 0xc0c0004
	v_perm_b32 v92, v159, v158, 0xc0c0004
	v_perm_b32 v93, v165, v164, 0xc0c0004
	v_perm_b32 v94, v167, v166, 0xc0c0004
	v_perm_b32 v95, v173, v172, 0xc0c0004
	v_perm_b32 v96, v175, v174, 0xc0c0004
	v_perm_b32 v97, v181, v180, 0xc0c0004
	v_perm_b32 v98, v183, v182, 0xc0c0004
	v_perm_b32 v105, v114, v111, 0xc0c0004
	v_perm_b32 v106, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v107, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v108, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v111, v205, v204, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v112, v207, v206, 0xc0c0004
	v_perm_b32 v115, v120, v115, 0xc0c0004
	v_perm_b32 v43, v119, v43, 0xc0c0004
	v_perm_b32 v120, v123, v122, 0xc0c0004
	v_perm_b32 v42, v42, v129, 0xc0c0004
	v_perm_b32 v123, v131, v130, 0xc0c0004
	v_perm_b32 v137, v163, v162, 0xc0c0004
	v_perm_b32 v138, v161, v160, 0xc0c0004
	v_perm_b32 v139, v171, v170, 0xc0c0004
	v_perm_b32 v140, v169, v168, 0xc0c0004
	v_perm_b32 v141, v179, v178, 0xc0c0004
	v_perm_b32 v142, v177, v176, 0xc0c0004
	v_perm_b32 v143, v187, v186, 0xc0c0004
	v_perm_b32 v144, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v50, 0xc0c0004
	v_perm_b32 v159, v249, v248, 0xc0c0004
	v_lshl_or_b32 v75, v48, 16, v40
	v_lshl_or_b32 v74, v51, 16, v49
	v_lshl_or_b32 v73, v53, 16, v52
	v_lshl_or_b32 v72, v55, 16, v54
	v_lshl_or_b32 v51, v77, 16, v76
	v_lshl_or_b32 v50, v79, 16, v78
	v_lshl_or_b32 v49, v81, 16, v80
	v_lshl_or_b32 v48, v132, 16, v82
	v_lshl_or_b32 v78, v86, 16, v85
	v_lshl_or_b32 v77, v88, 16, v87
	v_lshl_or_b32 v87, v100, 16, v99
	v_lshl_or_b32 v86, v102, 16, v101
	v_lshl_or_b32 v85, v104, 16, v103
	v_lshl_or_b32 v103, v134, 16, v133
	v_lshl_or_b32 v102, v41, 16, v46
	v_lshl_or_b32 v101, v47, 16, v45
	v_lshl_or_b32 v100, v136, 16, v135
	v_perm_b32 v109, v197, v196, 0xc0c0004
	v_perm_b32 v110, v199, v198, 0xc0c0004
	v_perm_b32 v113, v213, v212, 0xc0c0004
	v_perm_b32 v114, v215, v214, 0xc0c0004
	v_perm_b32 v145, v195, v194, 0xc0c0004
	v_perm_b32 v146, v193, v192, 0xc0c0004
	v_perm_b32 v147, v203, v202, 0xc0c0004
	v_perm_b32 v148, v201, v200, 0xc0c0004
	v_perm_b32 v149, v211, v210, 0xc0c0004
	v_perm_b32 v150, v209, v208, 0xc0c0004
	v_perm_b32 v151, v219, v218, 0xc0c0004
	v_perm_b32 v152, v217, v216, 0xc0c0004
	v_lshl_or_b32 v79, v84, 16, v83
	v_lshl_or_b32 v76, v90, 16, v89
	v_lshl_or_b32 v83, v92, 16, v91
	v_lshl_or_b32 v82, v94, 16, v93
	v_lshl_or_b32 v81, v96, 16, v95
	v_lshl_or_b32 v80, v98, 16, v97
	v_lshl_or_b32 v84, v106, 16, v105
	v_lshl_or_b32 v91, v108, 16, v107
	v_lshl_or_b32 v89, v112, 16, v111
	v_lshl_or_b32 v95, v43, 16, v115
	v_lshl_or_b32 v92, v123, 16, v42
	v_lshl_or_b32 v107, v138, 16, v137
	v_lshl_or_b32 v106, v140, 16, v139
	v_lshl_or_b32 v105, v142, 16, v141
	v_lshl_or_b32 v104, v144, 16, v143
	v_lshl_or_b32 v112, v159, 16, v44
	v_wmma_i32_16x16x16_iu8 v[40:47], v[48:51], v[72:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[100:103], v[72:75], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v119, v124, v121, 0xc0c0004
	v_perm_b32 v121, v128, v125, 0xc0c0004
	v_perm_b32 v122, v127, v126, 0xc0c0004
	v_perm_b32 v124, v221, v220, 0xc0c0004
	v_perm_b32 v125, v223, v222, 0xc0c0004
	v_perm_b32 v126, v229, v228, 0xc0c0004
	v_perm_b32 v127, v231, v230, 0xc0c0004
	v_perm_b32 v128, v237, v236, 0xc0c0004
	v_perm_b32 v129, v239, v238, 0xc0c0004
	v_perm_b32 v130, v245, v244, 0xc0c0004
	v_perm_b32 v131, v247, v246, 0xc0c0004
	v_perm_b32 v153, v227, v226, 0xc0c0004
	v_perm_b32 v154, v225, v224, 0xc0c0004
	v_perm_b32 v155, v235, v234, 0xc0c0004
	v_perm_b32 v156, v233, v232, 0xc0c0004
	v_perm_b32 v157, v243, v242, 0xc0c0004
	v_perm_b32 v158, v241, v240, 0xc0c0004
	v_lshl_or_b32 v90, v110, 16, v109
	v_lshl_or_b32 v88, v114, 16, v113
	v_lshl_or_b32 v111, v146, 16, v145
	v_lshl_or_b32 v110, v148, 16, v147
	v_lshl_or_b32 v109, v150, 16, v149
	v_lshl_or_b32 v108, v152, 16, v151
	v_wmma_i32_16x16x16_iu8 v[40:47], v[80:83], v[76:79], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[104:107], v[76:79], v[48:55] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v120, 16, v119
	v_lshl_or_b32 v93, v122, 16, v121
	v_lshl_or_b32 v99, v125, 16, v124
	v_lshl_or_b32 v98, v127, 16, v126
	v_lshl_or_b32 v97, v129, 16, v128
	v_lshl_or_b32 v96, v131, 16, v130
	v_lshl_or_b32 v115, v154, 16, v153
	v_lshl_or_b32 v114, v156, 16, v155
	v_lshl_or_b32 v113, v158, 16, v157
	v_wmma_i32_16x16x16_iu8 v[40:47], v[88:91], v[84:87], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[108:111], v[84:87], v[48:55] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s37, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s10, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[40:47], v[96:99], v[92:95], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[112:115], v[92:95], v[48:55] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s37, s10, 0
	s_add_i32 s10, s9, 1
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_lshl_b32 s11, s37, 10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s12, s37, 14
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s3, s11, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s0, s12, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v17, v51 :: v_dual_add_nc_u32 v116, s3, v29
	v_dual_add_f32 v24, v24, v45 :: v_dual_add_nc_u32 v117, s0, v39
	v_add_f32_e32 v22, v22, v40
	v_dual_add_f32 v28, v28, v41 :: v_dual_add_f32 v27, v27, v42
	v_dual_add_f32 v26, v26, v43 :: v_dual_add_f32 v25, v25, v44
	v_add_f32_e32 v23, v23, v46
	v_dual_add_f32 v21, v21, v47 :: v_dual_add_f32 v20, v20, v48
	v_dual_add_f32 v19, v19, v49 :: v_dual_add_f32 v18, v18, v50
	v_dual_add_f32 v15, v15, v53 :: v_dual_add_f32 v16, v16, v52
	v_dual_add_f32 v13, v13, v55 :: v_dual_add_f32 v14, v14, v54
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_add_i32 s1, s3, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s9, s36
	s_mov_b32 s9, s10
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v116, v118 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v117, v[56:59]
	s_waitcnt vmcnt(2)
	ds_store_b128 v117, v[60:63] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v117, v[64:67] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v117, v[68:71] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v6, v38
.LBB0_7:                                ; %Flow112
	v_and_b32_e32 v5, 0xf0, v0
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v7, v37, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s34
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s8, v7
	s_mov_b32 s8, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v8, s5, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v8 offset:240
	ds_load_u8 v2, v8 offset:208
	ds_load_u8 v3, v8 offset:224
	ds_load_u8 v4, v8 offset:192
	ds_load_u8 v10, v8 offset:144
	ds_load_u8 v11, v8 offset:176
	ds_load_u8 v29, v8 offset:160
	ds_load_u8 v30, v8 offset:128
	ds_load_u8 v31, v8 offset:112
	ds_load_u8 v32, v8 offset:80
	ds_load_u8 v33, v8 offset:96
	ds_load_u8 v34, v8 offset:64
	ds_load_u8 v35, v8 offset:16
	ds_load_u8 v36, v8 offset:48
	ds_load_u8 v37, v8 offset:32
	ds_load_u8 v38, v8
	ds_load_u8 v39, v8 offset:336
	ds_load_u8 v40, v8 offset:352
	ds_load_u8 v41, v8 offset:320
	ds_load_u8 v42, v8 offset:272
	ds_load_u8 v43, v8 offset:304
	ds_load_u8 v44, v8 offset:288
	ds_load_u8 v49, v8 offset:256
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	v_perm_b32 v1, v3, v1, 0xc0c0004
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v45, s5, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v54, v8 offset:368
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v30, v10, 0xc0c0004
	v_perm_b32 v10, v29, v11, 0xc0c0004
	v_lshl_or_b32 v4, v1, 16, v2
	ds_load_u8 v1, v9 offset:3328
	ds_load_u8 v2, v9 offset:3072
	ds_load_u8 v11, v9 offset:3840
	ds_load_u8 v29, v9 offset:3584
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	ds_load_u8 v57, v45
	v_lshl_or_b32 v3, v10, 16, v3
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v10, v34, v32, 0xc0c0004
	ds_load_u8 v30, v9 offset:2304
	ds_load_u8 v32, v9 offset:2048
	ds_load_u8 v34, v9 offset:2816
	ds_load_u8 v46, v9 offset:2560
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v33, v38, v35, 0xc0c0004
	v_perm_b32 v35, v37, v36, 0xc0c0004
	ds_load_u8 v36, v9 offset:1280
	ds_load_u8 v37, v9 offset:1024
	ds_load_u8 v38, v9 offset:1792
	ds_load_u8 v45, v9 offset:1536
	ds_load_u8 v58, v9 offset:3968
	ds_load_u8 v59, v9 offset:3712
	ds_load_u8 v60, v9 offset:3456
	ds_load_u8 v61, v9 offset:3200
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v81, v41, v39, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v82, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v49, v49, v42, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v54, v40, v54, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v47, v2, v1, 0xc0c0004
	v_lshl_or_b32 v2, v31, 16, v10
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v11, v29, v11, 0xc0c0004
	v_lshl_or_b32 v1, v35, 16, v33
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	v_perm_b32 v29, v32, v30, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v45, v38, 0xc0c0004
	v_perm_b32 v30, v46, v34, 0xc0c0004
	ds_load_u8 v32, v9 offset:256
	ds_load_u8 v34, v9
	ds_load_u8 v50, v9 offset:768
	ds_load_u8 v51, v9 offset:512
	ds_load_u8 v66, v9 offset:1920
	ds_load_u8 v67, v9 offset:1664
	ds_load_u8 v68, v9 offset:1408
	ds_load_u8 v69, v9 offset:1152
	v_lshl_or_b32 v48, v11, 16, v47
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v46, v37, 16, v36
	v_lshl_or_b32 v47, v30, 16, v29
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v34, v32, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v30, 16, v29
	v_dual_mov_b32 v36, s15 :: v_dual_mov_b32 v35, s14
	ds_load_u8 v38, v8 offset:496
	ds_load_u8 v50, v8 offset:400
	ds_load_u8 v51, v8 offset:432
	ds_load_u8 v52, v8 offset:416
	ds_load_u8 v53, v8 offset:384
	ds_load_u8 v10, v8 offset:464
	ds_load_u8 v11, v8 offset:480
	ds_load_u8 v37, v8 offset:448
	ds_load_u8 v70, v9 offset:896
	ds_load_u8 v71, v9 offset:640
	ds_load_u8 v72, v9 offset:384
	ds_load_u8 v73, v9 offset:128
	v_dual_mov_b32 v34, s13 :: v_dual_mov_b32 v33, s12
	v_dual_mov_b32 v32, s11 :: v_dual_mov_b32 v31, s10
	v_dual_mov_b32 v30, s9 :: v_dual_mov_b32 v29, s8
	ds_load_u8 v92, v8 offset:720
	ds_load_u8 v93, v8 offset:736
	ds_load_u8 v94, v8 offset:704
	ds_load_u8 v95, v9 offset:6016
	ds_load_u8 v96, v9 offset:5760
	ds_load_u8 v97, v9 offset:5504
	ds_load_u8 v98, v9 offset:5248
	ds_load_u8 v55, v8 offset:592
	ds_load_u8 v56, v8 offset:608
	ds_load_u8 v74, v8 offset:576
	ds_load_u8 v75, v8 offset:528
	ds_load_u8 v76, v8 offset:560
	ds_load_u8 v77, v8 offset:544
	ds_load_u8 v78, v8 offset:512
	ds_load_u8 v62, v9 offset:2944
	ds_load_u8 v63, v9 offset:2688
	ds_load_u8 v64, v9 offset:2432
	ds_load_u8 v65, v9 offset:2176
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v11, v11, v38, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v10, v37, v10, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[37:44], v[45:48], v[1:4], v[29:36] neg_lo:[1,1,0]
	v_perm_b32 v50, v53, v50, 0xc0c0004
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v9 offset:7424
	ds_load_u8 v53, v9 offset:7168
	ds_load_u8 v79, v9 offset:7936
	ds_load_u8 v80, v9 offset:7680
	v_lshl_or_b32 v48, v11, 16, v10
	v_lshl_or_b32 v46, v54, 16, v81
	v_lshl_or_b32 v45, v82, 16, v49
	v_lshl_or_b32 v47, v51, 16, v50
	ds_load_u8 v10, v9 offset:6400
	ds_load_u8 v11, v9 offset:6144
	ds_load_u8 v49, v9 offset:6912
	ds_load_u8 v50, v9 offset:6656
	ds_load_u8 v81, v9 offset:8064
	ds_load_u8 v82, v9 offset:7808
	ds_load_u8 v83, v9 offset:7552
	ds_load_u8 v84, v9 offset:7296
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v65, v64, 0xc0c0004
	v_perm_b32 v64, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v52, v80, v79, 0xc0c0004
	ds_load_u8 v53, v9 offset:5376
	ds_load_u8 v54, v9 offset:5120
	ds_load_u8 v79, v9 offset:5888
	ds_load_u8 v80, v9 offset:5632
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v50, v49, 0xc0c0004
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v9 offset:4352
	ds_load_u8 v85, v9 offset:4096
	ds_load_u8 v86, v9 offset:4864
	ds_load_u8 v87, v9 offset:4608
	ds_load_u8 v88, v9 offset:7040
	ds_load_u8 v89, v9 offset:6784
	ds_load_u8 v90, v9 offset:6528
	ds_load_u8 v91, v9 offset:6272
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v49, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v85, v51, 0xc0c0004
	v_perm_b32 v50, v80, v79, 0xc0c0004
	ds_load_u8 v53, v8 offset:752
	ds_load_u8 v79, v9 offset:4992
	ds_load_u8 v80, v9 offset:4736
	ds_load_u8 v99, v9 offset:4480
	ds_load_u8 v100, v9 offset:4224
	v_lshl_or_b32 v51, v11, 16, v10
	ds_load_u8 v10, v8 offset:624
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v85, v87, v86, 0xc0c0004
	ds_load_u8 v86, v8 offset:656
	ds_load_u8 v87, v8 offset:688
	ds_load_u8 v101, v8 offset:672
	ds_load_u8 v102, v8 offset:640
	v_lshl_or_b32 v50, v50, 16, v49
	v_perm_b32 v11, v94, v92, 0xc0c0004
	v_lshl_or_b32 v49, v85, 16, v54
	ds_load_u8 v85, v8 offset:848
	ds_load_u8 v92, v8 offset:864
	ds_load_u8 v94, v8 offset:832
	ds_load_u8 v103, v8 offset:784
	ds_load_u8 v104, v8 offset:816
	ds_load_u8 v105, v8 offset:800
	ds_load_u8 v106, v8 offset:768
	v_wmma_i32_16x16x16_iu8 v[37:44], v[49:52], v[45:48], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v50, v74, v55, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v53, v93, v53, 0xc0c0004
	ds_load_u8 v54, v9 offset:11520
	ds_load_u8 v93, v9 offset:11264
	ds_load_u8 v107, v9 offset:12032
	ds_load_u8 v108, v9 offset:11776
	v_lshl_or_b32 v52, v53, 16, v11
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v10, v56, v10, 0xc0c0004
	ds_load_u8 v53, v9 offset:10496
	ds_load_u8 v55, v9 offset:10240
	ds_load_u8 v56, v9 offset:11008
	ds_load_u8 v74, v9 offset:10752
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v11, v102, v86, 0xc0c0004
	v_perm_b32 v49, v101, v87, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v85, v94, v85, 0xc0c0004
	v_lshl_or_b32 v50, v10, 16, v50
	v_perm_b32 v10, v78, v75, 0xc0c0004
	v_lshl_or_b32 v51, v49, 16, v11
	v_perm_b32 v11, v77, v76, 0xc0c0004
	ds_load_u8 v75, v9 offset:12160
	ds_load_u8 v76, v9 offset:11904
	ds_load_u8 v77, v9 offset:11648
	ds_load_u8 v78, v9 offset:11392
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v54, v93, v54, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v86, v108, v107, 0xc0c0004
	ds_load_u8 v49, v9 offset:9472
	ds_load_u8 v87, v9 offset:9216
	ds_load_u8 v93, v9 offset:9984
	ds_load_u8 v101, v9 offset:9728
	ds_load_u8 v102, v9 offset:11136
	ds_load_u8 v107, v9 offset:10880
	ds_load_u8 v108, v9 offset:10624
	ds_load_u8 v109, v9 offset:10368
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v53, v55, v53, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v74, v56, 0xc0c0004
	ds_load_u8 v56, v9 offset:8448
	ds_load_u8 v74, v9 offset:8192
	ds_load_u8 v110, v9 offset:8960
	ds_load_u8 v111, v9 offset:8704
	ds_load_u8 v112, v8 offset:976
	ds_load_u8 v113, v8 offset:992
	ds_load_u8 v114, v8 offset:960
	ds_load_u8 v115, v8 offset:912
	ds_load_u8 v116, v8 offset:944
	ds_load_u8 v117, v8 offset:928
	ds_load_u8 v118, v8 offset:896
	ds_load_u8 v8, v8 offset:880
	ds_load_u8 v119, v9 offset:10112
	ds_load_u8 v120, v9 offset:9856
	ds_load_u8 v121, v9 offset:9600
	ds_load_u8 v122, v9 offset:9344
	v_lshl_or_b32 v55, v55, 16, v53
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v74, v74, v56, 0xc0c0004
	v_lshl_or_b32 v56, v86, 16, v54
	v_perm_b32 v87, v87, v49, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v93, v101, v93, 0xc0c0004
	v_lshl_or_b32 v49, v11, 16, v10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v10, v114, v112, 0xc0c0004
	v_perm_b32 v11, v113, v57, 0xc0c0004
	v_lshl_or_b32 v53, v110, 16, v74
	v_lshl_or_b32 v54, v93, 16, v87
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v92, v8, 0xc0c0004
	v_perm_b32 v57, v118, v115, 0xc0c0004
	v_perm_b32 v74, v117, v116, 0xc0c0004
	ds_load_u8 v101, v9 offset:9088
	ds_load_u8 v123, v9 offset:8832
	ds_load_u8 v124, v9 offset:8576
	ds_load_u8 v125, v9 offset:8320
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[49:52], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v56, v11, 16, v10
	v_lshl_or_b32 v54, v8, 16, v85
	ds_load_u8 v8, v9 offset:15616
	ds_load_u8 v10, v9 offset:15360
	ds_load_u8 v11, v9 offset:16128
	ds_load_u8 v53, v9 offset:15872
	v_lshl_or_b32 v55, v74, 16, v57
	v_perm_b32 v57, v106, v103, 0xc0c0004
	v_perm_b32 v74, v105, v104, 0xc0c0004
	ds_load_u8 v85, v9 offset:14592
	ds_load_u8 v86, v9 offset:14336
	ds_load_u8 v87, v9 offset:15104
	ds_load_u8 v92, v9 offset:14848
	ds_load_u8 v93, v9 offset:13568
	ds_load_u8 v94, v9 offset:13312
	ds_load_u8 v103, v9 offset:14080
	ds_load_u8 v104, v9 offset:13824
	ds_load_u8 v105, v9 offset:12544
	ds_load_u8 v106, v9 offset:12288
	ds_load_u8 v110, v9 offset:13056
	ds_load_u8 v111, v9 offset:12800
	ds_load_u8 v112, v9 offset:16256
	ds_load_u8 v113, v9 offset:16000
	ds_load_u8 v114, v9 offset:15744
	ds_load_u8 v115, v9 offset:15488
	ds_load_u8 v116, v9 offset:15232
	ds_load_u8 v117, v9 offset:14976
	ds_load_u8 v118, v9 offset:14720
	ds_load_u8 v126, v9 offset:14464
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v86, v92, v87, 0xc0c0004
	ds_load_u8 v87, v9 offset:14208
	ds_load_u8 v92, v9 offset:13952
	ds_load_u8 v127, v9 offset:13696
	ds_load_u8 v128, v9 offset:13440
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v94, v104, v103, 0xc0c0004
	ds_load_u8 v103, v9 offset:13184
	ds_load_u8 v104, v9 offset:12928
	ds_load_u8 v129, v9 offset:12672
	ds_load_u8 v130, v9 offset:12416
	v_perm_b32 v8, v10, v8, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v10, v53, v11, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v106, v111, v110, 0xc0c0004
	v_lshl_or_b32 v53, v74, 16, v57
	v_lshl_or_b32 v9, v94, 16, v93
	v_perm_b32 v57, v61, v60, 0xc0c0004
	v_lshl_or_b32 v11, v10, 16, v8
	v_lshl_or_b32 v10, v86, 16, v85
	v_lshl_or_b32 v8, v106, 16, v105
	v_perm_b32 v60, v63, v62, 0xc0c0004
	v_perm_b32 v61, v69, v68, 0xc0c0004
	v_perm_b32 v62, v67, v66, 0xc0c0004
	v_perm_b32 v63, v73, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[37:44], v[8:11], v[53:56], v[37:44] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v58, 16, v57
	v_lshl_or_b32 v10, v60, 16, v59
	v_lshl_or_b32 v9, v62, 16, v61
	v_lshl_or_b32 v8, v64, 16, v63
	v_perm_b32 v57, v84, v83, 0xc0c0004
	v_perm_b32 v58, v82, v81, 0xc0c0004
	v_perm_b32 v59, v91, v90, 0xc0c0004
	v_perm_b32 v60, v89, v88, 0xc0c0004
	v_perm_b32 v61, v98, v97, 0xc0c0004
	v_perm_b32 v62, v96, v95, 0xc0c0004
	v_perm_b32 v63, v100, v99, 0xc0c0004
	v_perm_b32 v64, v80, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[8:11], v[1:4], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v58, 16, v57
	v_lshl_or_b32 v3, v60, 16, v59
	v_lshl_or_b32 v2, v62, 16, v61
	v_lshl_or_b32 v1, v64, 16, v63
	v_perm_b32 v8, v78, v77, 0xc0c0004
	v_perm_b32 v9, v76, v75, 0xc0c0004
	v_perm_b32 v10, v109, v108, 0xc0c0004
	v_perm_b32 v11, v107, v102, 0xc0c0004
	v_perm_b32 v57, v122, v121, 0xc0c0004
	v_perm_b32 v58, v120, v119, 0xc0c0004
	v_perm_b32 v59, v125, v124, 0xc0c0004
	v_perm_b32 v60, v123, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[1:4], v[45:48], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v9, 16, v8
	v_lshl_or_b32 v3, v11, 16, v10
	v_lshl_or_b32 v2, v58, 16, v57
	v_lshl_or_b32 v1, v60, 16, v59
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v115, v114, 0xc0c0004
	v_perm_b32 v9, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v126, v118, 0xc0c0004
	v_perm_b32 v11, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v128, v127, 0xc0c0004
	v_perm_b32 v46, v92, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v130, v129, 0xc0c0004
	v_perm_b32 v48, v104, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[1:4], v[49:52], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v9, 16, v8
	v_lshl_or_b32 v3, v11, 16, v10
	v_lshl_or_b32 v2, v46, 16, v45
	v_lshl_or_b32 v1, v48, 16, v47
	v_cvt_f32_i32_e32 v8, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[29:36], v[1:4], v[53:56], v[29:36] neg_lo:[1,1,0]
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v39
	v_cvt_f32_i32_e32 v2, v40
	v_cvt_f32_i32_e32 v3, v41
	v_cvt_f32_i32_e32 v4, v42
	v_cvt_f32_i32_e32 v8, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v27, v27, v1 :: v_dual_add_f32 v26, v26, v2
	v_dual_add_f32 v25, v25, v3 :: v_dual_add_f32 v24, v24, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v44
	v_cvt_f32_i32_e32 v2, v29
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v23, v23, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v4, v31
	v_cvt_f32_i32_e32 v8, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v21, v21, v1 :: v_dual_add_f32 v20, v20, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v1, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v19, v19, v3 :: v_dual_add_f32 v18, v18, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v34
	v_cvt_f32_i32_e32 v3, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v17, v17, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v36
	v_cvt_f32_i32_e32 v8, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v16, v16, v1 :: v_dual_add_f32 v15, v15, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v14, v14, v3 :: v_dual_add_f32 v13, v13, v4
	v_add_f32_e32 v22, v22, v8
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s8, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 346 22 is_stmt 1              ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v8, s1, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v8 offset:240
	ds_load_u8 v2, v8 offset:208
	ds_load_u8 v3, v8 offset:224
	ds_load_u8 v4, v8 offset:192
	ds_load_u8 v9, v8 offset:144
	ds_load_u8 v10, v8 offset:160
	ds_load_u8 v11, v8 offset:128
	ds_load_u8 v29, v8 offset:176
	ds_load_u8 v30, v8 offset:112
	ds_load_u8 v31, v8 offset:80
	ds_load_u8 v32, v8 offset:96
	ds_load_u8 v33, v8 offset:64
	ds_load_u8 v34, v8 offset:16
	ds_load_u8 v35, v8 offset:32
	ds_load_u8 v36, v8
	ds_load_u8 v37, v8 offset:48
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s0, v7
	.loc	1 346 22                        ; generate_amdgcn.py:346:22
	v_add_nc_u32_e32 v6, s1, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v3, v11, v9, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v10, v29, 0xc0c0004
	ds_load_u8 v10, v7 offset:3328
	ds_load_u8 v11, v7 offset:3072
	ds_load_u8 v29, v7 offset:3840
	ds_load_u8 v38, v7 offset:3584
	v_lshl_or_b32 v4, v1, 16, v2
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v32, v30, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v33, v31, 0xc0c0004
	v_lshl_or_b32 v3, v9, 16, v3
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v9, v36, v34, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v35, v37, 0xc0c0004
	ds_load_u8 v31, v7 offset:2304
	ds_load_u8 v32, v7 offset:2048
	ds_load_u8 v33, v7 offset:2816
	ds_load_u8 v34, v7 offset:2560
	ds_load_u8 v35, v7 offset:1280
	ds_load_u8 v36, v7 offset:1024
	ds_load_u8 v37, v7 offset:1792
	ds_load_u8 v39, v7 offset:1536
	ds_load_u8 v53, v7 offset:3968
	ds_load_u8 v57, v7 offset:3712
	ds_load_u8 v58, v7 offset:3456
	ds_load_u8 v59, v7 offset:3200
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v30, 16, v9
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_perm_b32 v11, v38, v29, 0xc0c0004
	ds_load_u8 v29, v7 offset:256
	ds_load_u8 v38, v7
	ds_load_u8 v40, v7 offset:768
	ds_load_u8 v41, v7 offset:512
	ds_load_u8 v60, v7 offset:2944
	ds_load_u8 v61, v7 offset:2688
	ds_load_u8 v62, v7 offset:2432
	ds_load_u8 v63, v7 offset:2176
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v32, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v34, v39, v37, 0xc0c0004
	v_lshl_or_b32 v48, v11, 16, v10
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v57, v57, v53, 0xc0c0004
	v_lshl_or_b32 v47, v32, 16, v31
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_lshl_or_b32 v46, v34, 16, v33
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v38, v29, 0xc0c0004
	v_mov_b32_e32 v36, s15
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v41, v40, 0xc0c0004
	v_mov_b32_e32 v35, s14
	ds_load_u8 v11, v8 offset:464
	ds_load_u8 v51, v8 offset:480
	ds_load_u8 v52, v8 offset:448
	ds_load_u8 v49, v8 offset:288
	ds_load_u8 v50, v8 offset:256
	v_dual_mov_b32 v34, s13 :: v_dual_mov_b32 v31, s10
	v_lshl_or_b32 v45, v10, 16, v9
	ds_load_u8 v9, v8 offset:496
	ds_load_u8 v10, v8 offset:400
	ds_load_u8 v54, v8 offset:432
	ds_load_u8 v55, v8 offset:416
	ds_load_u8 v56, v8 offset:384
	ds_load_u8 v72, v8 offset:368
	ds_load_u8 v73, v8 offset:336
	ds_load_u8 v74, v8 offset:352
	ds_load_u8 v75, v8 offset:320
	ds_load_u8 v76, v8 offset:272
	ds_load_u8 v77, v8 offset:304
	v_dual_mov_b32 v33, s12 :: v_dual_mov_b32 v32, s11
	v_dual_mov_b32 v29, s8 :: v_dual_mov_b32 v30, s9
	ds_load_u8 v96, v8 offset:752
	ds_load_u8 v6, v6
	ds_load_u8 v78, v8 offset:592
	ds_load_u8 v79, v8 offset:608
	ds_load_u8 v80, v8 offset:576
	ds_load_u8 v81, v8 offset:528
	ds_load_u8 v82, v8 offset:560
	ds_load_u8 v83, v8 offset:544
	ds_load_u8 v84, v8 offset:512
	ds_load_u8 v97, v8 offset:656
	ds_load_u8 v98, v8 offset:688
	ds_load_u8 v99, v8 offset:672
	ds_load_u8 v100, v8 offset:640
	ds_load_u8 v101, v7 offset:4992
	ds_load_u8 v102, v7 offset:4736
	ds_load_u8 v103, v7 offset:4480
	ds_load_u8 v104, v7 offset:4224
	v_wmma_i32_16x16x16_iu8 v[37:44], v[45:48], v[1:4], v[29:36] neg_lo:[1,1,0]
	ds_load_u8 v64, v7 offset:1920
	ds_load_u8 v65, v7 offset:1664
	ds_load_u8 v66, v7 offset:1408
	ds_load_u8 v67, v7 offset:1152
	ds_load_u8 v68, v7 offset:896
	ds_load_u8 v69, v7 offset:640
	ds_load_u8 v70, v7 offset:384
	ds_load_u8 v71, v7 offset:128
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v45, v55, v54, 0xc0c0004
	v_perm_b32 v9, v51, v9, 0xc0c0004
	v_perm_b32 v11, v52, v11, 0xc0c0004
	ds_load_u8 v51, v7 offset:7424
	ds_load_u8 v52, v7 offset:7168
	ds_load_u8 v85, v7 offset:7936
	ds_load_u8 v86, v7 offset:7680
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v10, v56, v10, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v46, v75, v73, 0xc0c0004
	v_perm_b32 v54, v74, v72, 0xc0c0004
	ds_load_u8 v55, v7 offset:6400
	ds_load_u8 v56, v7 offset:6144
	ds_load_u8 v72, v7 offset:6912
	ds_load_u8 v73, v7 offset:6656
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v50, v50, v76, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v49, v49, v77, 0xc0c0004
	v_lshl_or_b32 v48, v9, 16, v11
	v_lshl_or_b32 v47, v45, 16, v10
	v_lshl_or_b32 v46, v54, 16, v46
	ds_load_u8 v74, v7 offset:8064
	ds_load_u8 v75, v7 offset:7808
	ds_load_u8 v76, v7 offset:7552
	ds_load_u8 v77, v7 offset:7296
	v_lshl_or_b32 v45, v49, 16, v50
	ds_load_u8 v110, v7 offset:10112
	ds_load_u8 v111, v7 offset:9856
	ds_load_u8 v112, v7 offset:9600
	ds_load_u8 v113, v7 offset:9344
	v_perm_b32 v59, v63, v62, 0xc0c0004
	v_perm_b32 v61, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v62, v67, v66, 0xc0c0004
	v_perm_b32 v63, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v64, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v52, v51, 0xc0c0004
	v_perm_b32 v65, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v10, v86, v85, 0xc0c0004
	ds_load_u8 v11, v7 offset:5376
	ds_load_u8 v49, v7 offset:5120
	ds_load_u8 v50, v7 offset:5888
	ds_load_u8 v51, v7 offset:5632
	ds_load_u8 v85, v7 offset:7040
	ds_load_u8 v86, v7 offset:6784
	ds_load_u8 v87, v7 offset:6528
	ds_load_u8 v88, v7 offset:6272
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v54, v56, v55, 0xc0c0004
	v_lshl_or_b32 v60, v57, 16, v58
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v55, v73, v72, 0xc0c0004
	ds_load_u8 v52, v7 offset:4352
	ds_load_u8 v56, v7 offset:4096
	ds_load_u8 v72, v7 offset:4864
	ds_load_u8 v73, v7 offset:4608
	ds_load_u8 v89, v8 offset:720
	ds_load_u8 v90, v8 offset:736
	ds_load_u8 v91, v8 offset:704
	ds_load_u8 v92, v7 offset:6016
	ds_load_u8 v93, v7 offset:5760
	ds_load_u8 v94, v7 offset:5504
	ds_load_u8 v95, v7 offset:5248
	v_lshl_or_b32 v59, v61, 16, v59
	v_lshl_or_b32 v58, v63, 16, v62
	v_lshl_or_b32 v57, v65, 16, v64
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v62, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v61, v77, v76, 0xc0c0004
	v_perm_b32 v67, v104, v103, 0xc0c0004
	v_perm_b32 v68, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[57:60], v[1:4], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v11, v49, v11, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v56, v56, v52, 0xc0c0004
	v_perm_b32 v49, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_lshl_or_b32 v52, v10, 16, v9
	ds_load_u8 v9, v8 offset:624
	v_lshl_or_b32 v51, v55, 16, v54
	v_lshl_or_b32 v50, v49, 16, v11
	v_lshl_or_b32 v49, v72, 16, v56
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v91, v89, 0xc0c0004
	v_perm_b32 v11, v90, v96, 0xc0c0004
	ds_load_u8 v54, v8 offset:800
	ds_load_u8 v55, v8 offset:768
	ds_load_u8 v56, v8 offset:784
	ds_load_u8 v72, v8 offset:848
	ds_load_u8 v73, v8 offset:864
	ds_load_u8 v89, v8 offset:832
	ds_load_u8 v90, v8 offset:816
	v_wmma_i32_16x16x16_iu8 v[37:44], v[49:52], v[45:48], v[37:44] neg_lo:[1,1,0]
	v_perm_b32 v50, v80, v78, 0xc0c0004
	v_perm_b32 v78, v84, v81, 0xc0c0004
	ds_load_u8 v80, v7 offset:10496
	ds_load_u8 v81, v7 offset:10240
	v_lshl_or_b32 v52, v11, 16, v10
	v_perm_b32 v10, v100, v97, 0xc0c0004
	ds_load_u8 v11, v7 offset:11520
	ds_load_u8 v91, v7 offset:11264
	ds_load_u8 v96, v7 offset:12032
	ds_load_u8 v97, v7 offset:11776
	v_perm_b32 v49, v99, v98, 0xc0c0004
	v_perm_b32 v63, v88, v87, 0xc0c0004
	v_perm_b32 v64, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v95, v94, 0xc0c0004
	v_perm_b32 v66, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v79, v9, 0xc0c0004
	v_perm_b32 v79, v83, v82, 0xc0c0004
	v_lshl_or_b32 v51, v49, 16, v10
	v_lshl_or_b32 v4, v62, 16, v61
	v_lshl_or_b32 v3, v64, 16, v63
	v_lshl_or_b32 v50, v9, 16, v50
	v_lshl_or_b32 v49, v79, 16, v78
	ds_load_u8 v9, v7 offset:11008
	ds_load_u8 v10, v7 offset:10752
	ds_load_u8 v78, v7 offset:9472
	ds_load_u8 v79, v7 offset:9216
	ds_load_u8 v82, v7 offset:12160
	ds_load_u8 v83, v7 offset:11904
	ds_load_u8 v84, v7 offset:11648
	ds_load_u8 v98, v7 offset:11392
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v55, v55, v56, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v54, v54, v90, 0xc0c0004
	v_lshl_or_b32 v2, v66, 16, v65
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v7 offset:8448
	ds_load_u8 v107, v7 offset:8192
	ds_load_u8 v108, v7 offset:8960
	ds_load_u8 v109, v7 offset:8704
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v11, v91, v11, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v97, v96, 0xc0c0004
	ds_load_u8 v96, v7 offset:9984
	ds_load_u8 v97, v7 offset:9728
	ds_load_u8 v99, v7 offset:11136
	ds_load_u8 v100, v7 offset:10880
	ds_load_u8 v105, v7 offset:10624
	ds_load_u8 v106, v7 offset:10368
	v_lshl_or_b32 v1, v68, 16, v67
	v_perm_b32 v61, v113, v112, 0xc0c0004
	v_perm_b32 v62, v111, v110, 0xc0c0004
	v_lshl_or_b32 v11, v91, 16, v11
	ds_load_u8 v91, v8 offset:880
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[1:4], v[45:48], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v8 offset:976
	ds_load_u8 v114, v8 offset:992
	ds_load_u8 v115, v8 offset:960
	ds_load_u8 v116, v8 offset:912
	ds_load_u8 v117, v8 offset:944
	ds_load_u8 v118, v8 offset:928
	ds_load_u8 v119, v8 offset:896
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v58, v83, v82, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v80
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v57, v98, v84, 0xc0c0004
	v_lshl_or_b32 v2, v62, 16, v61
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v81, v107, v81, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v107, v109, v108, 0xc0c0004
	ds_load_u8 v97, v7 offset:9088
	ds_load_u8 v120, v7 offset:8832
	ds_load_u8 v121, v7 offset:8576
	ds_load_u8 v122, v7 offset:8320
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v60, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v59, v106, v105, 0xc0c0004
	v_lshl_or_b32 v9, v96, 16, v78
	v_lshl_or_b32 v8, v107, 16, v81
	v_lshl_or_b32 v4, v58, 16, v57
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v114, v6, 0xc0c0004
	v_lshl_or_b32 v3, v60, 16, v59
	v_wmma_i32_16x16x16_iu8 v[37:44], v[8:11], v[49:52], v[37:44] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v115, v79, 0xc0c0004
	ds_load_u8 v78, v7 offset:15616
	ds_load_u8 v79, v7 offset:15360
	ds_load_u8 v80, v7 offset:16128
	ds_load_u8 v81, v7 offset:15872
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v119, v116, 0xc0c0004
	v_perm_b32 v10, v118, v117, 0xc0c0004
	v_lshl_or_b32 v11, v6, 16, v8
	v_perm_b32 v6, v89, v72, 0xc0c0004
	v_perm_b32 v8, v73, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v7 offset:14592
	ds_load_u8 v56, v7 offset:14336
	ds_load_u8 v72, v7 offset:15104
	ds_load_u8 v73, v7 offset:14848
	ds_load_u8 v89, v7 offset:13568
	ds_load_u8 v90, v7 offset:13312
	ds_load_u8 v91, v7 offset:14080
	ds_load_u8 v96, v7 offset:13824
	ds_load_u8 v107, v7 offset:16256
	ds_load_u8 v108, v7 offset:16000
	ds_load_u8 v109, v7 offset:15744
	ds_load_u8 v114, v7 offset:15488
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v122, v121, 0xc0c0004
	v_perm_b32 v64, v120, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v64, 16, v63
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v124, v56, v9, 0xc0c0004
	v_perm_b32 v79, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v80, v7 offset:12544
	ds_load_u8 v81, v7 offset:12288
	ds_load_u8 v115, v7 offset:13056
	ds_load_u8 v116, v7 offset:12800
	ds_load_u8 v117, v7 offset:15232
	ds_load_u8 v118, v7 offset:14976
	ds_load_u8 v119, v7 offset:14720
	ds_load_u8 v123, v7 offset:14464
	ds_load_u8 v73, v7 offset:14208
	ds_load_u8 v125, v7 offset:13952
	ds_load_u8 v126, v7 offset:13696
	ds_load_u8 v127, v7 offset:13440
	v_lshl_or_b32 v9, v8, 16, v6
	v_lshl_or_b32 v8, v54, 16, v55
	v_lshl_or_b32 v56, v79, 16, v78
	v_lshl_or_b32 v55, v72, 16, v124
	ds_load_u8 v6, v7 offset:13184
	ds_load_u8 v72, v7 offset:12928
	ds_load_u8 v78, v7 offset:12672
	ds_load_u8 v7, v7 offset:12416
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v90, v96, v91, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v45, v114, v109, 0xc0c0004
	v_perm_b32 v46, v108, v107, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[29:36], v[1:4], v[49:52], v[29:36] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v90, 16, v89
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v79, v81, v80, 0xc0c0004
	v_lshl_or_b32 v4, v46, 16, v45
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v80, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v125, v73, 0xc0c0004
	v_perm_b32 v47, v123, v119, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v57, v127, v126, 0xc0c0004
	v_lshl_or_b32 v53, v80, 16, v79
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v72, v6, 0xc0c0004
	v_lshl_or_b32 v3, v48, 16, v47
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v7, v78, 0xc0c0004
	v_lshl_or_b32 v2, v58, 16, v57
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[8:11], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v6, 16, v7
	v_wmma_i32_16x16x16_iu8 v[29:36], v[1:4], v[8:11], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v37
	v_cvt_f32_i32_e32 v2, v38
	v_cvt_f32_i32_e32 v3, v39
	v_cvt_f32_i32_e32 v4, v40
	v_cvt_f32_i32_e32 v8, v41
	v_cvt_f32_i32_e32 v9, v42
	v_cvt_f32_i32_e32 v10, v43
	v_cvt_f32_i32_e32 v11, v44
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v7, s30, v12
	.loc	1 378 14 is_stmt 0              ; generate_amdgcn.py:378:14
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v28, v2 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	v_or_b32_e32 v6, s31, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v1, v22, v1 :: v_dual_add_f32 v8, v25, v8
	v_add_f32_e32 v9, v24, v9
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v37, v7, s[8:11], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v12, 1, v6
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v9, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v27, v3 :: v_dual_add_f32 v4, v26, v4
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v7, v12, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v12, v20, v29 :: v_dual_add_f32 v29, v19, v30
	v_dual_add_f32 v30, v18, v31 :: v_dual_add_f32 v31, v17, v32
	v_dual_add_f32 v32, v16, v33 :: v_dual_add_f32 v33, v15, v34
	v_dual_add_f32 v34, v14, v35 :: v_dual_add_f32 v35, v13, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v1, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v36, 2, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v2, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v3, s2
	v_cndmask_b32_e64 v26, v26, v4, s2
	v_cndmask_b32_e64 v19, v19, v29, s2
	v_cndmask_b32_e64 v29, v18, v30, s2
	v_cndmask_b32_e64 v30, v17, v31, s2
	v_cndmask_b32_e64 v31, v16, v32, s2
	v_cndmask_b32_e64 v32, v15, v33, s2
	v_cndmask_b32_e64 v33, v14, v34, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v10, v23, v10 :: v_dual_add_f32 v11, v21, v11
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add_nc_u32_e32 v15, 0, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v8, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v10, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v11, s2
	v_cndmask_b32_e64 v20, v20, v12, s2
	v_cndmask_b32_e64 v35, v13, v35, s2
	s_mov_b32 s0, 0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshlrev_b32_e32 v38, 1, v0
	v_lshlrev_b32_e32 v39, 5, v0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v40, 7, v0
	v_bfe_i32 v0, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v1, 28, v38
	v_and_b32_e32 v2, 32, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v4, v40, 2, v5
	v_and_b32_e32 v3, 0x2040, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_or3_b32 v34, v36, v2, v1
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[0:1], null, s30, s29, v[6:7]
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v2, v4, v3
	.loc	1 379 14 is_stmt 1              ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v3, 16, v7
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add_nc_u32_e32 v36, 0, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v36, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v15
	ds_load_b128 v[7:10], v15 offset:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v8, v8, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v8, v24, v8
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v6, v6, v37
	v_mul_f32_e32 v5, v5, v37
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v16, v40, 10, v2
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v7, v7, v37 :: v_dual_mul_f32 v6, v26, v6
	ds_load_b128 v[11:14], v15 offset:512
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v38, 0, v16
	v_xad_u32 v39, v16, 4, 0
	v_xad_u32 v40, v16, 8, 0
	v_xad_u32 v41, v16, 12, 0
	v_xad_u32 v42, v16, 16, 0
	v_xad_u32 v43, v16, 20, 0
	v_xad_u32 v44, v16, 24, 0
	v_xad_u32 v45, v16, 28, 0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_load_b128 v[15:18], v15 offset:528
	v_mul_f32_e32 v3, v3, v37
	v_mul_f32_e32 v10, v10, v37
	v_dual_mul_f32 v4, v4, v37 :: v_dual_mul_f32 v7, v25, v7
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v9, v9, v37
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v3, v22, v3
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v11, v11, v37
	v_mul_f32_e32 v12, v12, v37
	v_mul_f32_e32 v13, v13, v37
	v_mul_f32_e32 v14, v14, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v10, v21, v10 :: v_dual_mul_f32 v11, v20, v11
	v_mul_f32_e32 v4, v28, v4
	v_mul_f32_e32 v12, v19, v12
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v14, v30, v14 :: v_dual_mul_f32 v17, v17, v37
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v15, v15, v37
	v_mul_f32_e32 v16, v16, v37
	v_mul_f32_e32 v18, v18, v37
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v13, v29, v13
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v15, v31, v15
	v_dual_mul_f32 v5, v27, v5 :: v_dual_mul_f32 v16, v32, v16
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_barrier
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v9, v23, v9
	v_dual_mul_f32 v17, v33, v17 :: v_dual_mul_f32 v18, v35, v18
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b32 v38, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v39, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v40, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v41, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v42, v7, v15 offset1:2
	ds_store_2addr_stride64_b32 v43, v8, v16 offset1:2
	ds_store_2addr_stride64_b32 v44, v9, v17 offset1:2
	ds_store_2addr_stride64_b32 v45, v10, v18 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v4, v[1:2], off
	v_xad_u32 v3, 0x404, v34, 0
	v_xad_u32 v5, 0x808, v34, 0
	v_xad_u32 v6, 0xc0c, v34, 0
	v_xad_u32 v7, 0x1010, v34, 0
	v_xad_u32 v8, 0x1414, v34, 0
	v_xad_u32 v9, 0x1818, v34, 0
	v_xad_u32 v10, 0x1c1c, v34, 0
	ds_load_b32 v20, v36
	ds_load_b32 v19, v3
	ds_load_b32 v18, v5
	ds_load_b32 v17, v6
	ds_load_b32 v16, v7
	ds_load_b32 v15, v8
	ds_load_b32 v14, v9
	ds_load_b32 v13, v10
	v_xad_u32 v3, 0x2040, v34, 0
	v_xad_u32 v5, 0x2444, v34, 0
	v_xad_u32 v6, 0x2848, v34, 0
	v_xad_u32 v7, 0x2c4c, v34, 0
	v_xad_u32 v8, 0x3050, v34, 0
	v_xad_u32 v21, 0x3454, v34, 0
	v_xad_u32 v22, 0x3858, v34, 0
	v_xad_u32 v23, 0x3c5c, v34, 0
	ds_load_b32 v12, v3
	ds_load_b32 v11, v5
	ds_load_b32 v10, v6
	ds_load_b32 v9, v7
	ds_load_b32 v8, v8
	ds_load_b32 v7, v21
	ds_load_b32 v6, v22
	ds_load_b32 v5, v23
.LBB0_12:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v3, v4, v20
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_ashr_i32 s1, s29, 31
	s_mov_b32 s0, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[0:1], s[0:1], 2
	v_add_co_u32 v1, vcc_lo, v1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v4, v[1:2], off
.LBB0_14:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v3, v4, v19
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s29, 1, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s6, v1
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_16:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v3, v4, v18
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 3, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_18:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v3, v4, v17
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s29, 2, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s6, v1
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_20:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v3, v4, v16
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 5, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_22:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v3, v4, v15
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 6, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_24:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v3, v4, v14
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 7, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_26:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v3, v4, v13
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v1, s29, 3, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s6, v1
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_28:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v3, v4, v12
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 9, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_30:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v3, v4, v11
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 10, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_32:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v3, v4, v10
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 11, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_34:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v3, v4, v9
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 12, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_36:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v8
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 13, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_38:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v3, v4, v7
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[1:2], null, s29, 14, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s6, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s7, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_40:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v3, v4, v6
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s29, 15, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s6, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s7, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_42:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 250
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_vgpr, 250
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14988
; TotalNumSgprs: 40
; NumVgprs: 250
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 250
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_pc_none_bm16_bn256_bk64_gm4_w8_s3_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     250
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
