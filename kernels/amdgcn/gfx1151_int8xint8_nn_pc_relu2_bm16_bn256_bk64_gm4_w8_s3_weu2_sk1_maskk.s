	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_load_b32 s31, s[0:1], 0x38
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v48, 4, v0
	v_and_b32_e32 v28, 15, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v57, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v50, 16, v48
	v_lshlrev_b32_e32 v49, 2, v28
	v_or_b32_e32 v51, 32, v48
	v_or_b32_e32 v52, 48, v48
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 15
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s31, v48
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
	s_min_i32 s8, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s10, 0, s7
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s15, v48
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v25, v28, 4, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v53, s15, 4, v25
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s9, s10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v54, s15, 5, v25
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s9, s9, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[26:27], null, s15, 48, v[25:26]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s8
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s2, s10, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s35, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s35, v48
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s7, s31, 63
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s2, s8
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s35, v49
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s5, s4, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s35, v50
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s6, s5, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s2, 8
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s6, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s9, s15, s35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s7, 63
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s35, v51
	v_or_b32_e32 v6, s35, v52
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s33, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s8, s14, s9
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s6, s28, s31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s8, v25
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v5
	v_cmp_gt_i32_e64 s5, s31, v6
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v55, v2, v49, s6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s8, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s2, s33
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s8, v54
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 s2, s3, s33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s5, s5, s33
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s2, s4, s33
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s35, v55
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v3, s2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s35, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s8, v26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v20, s35, v49
	v_or_b32_e32 v21, s35, v48
	v_or_b32_e32 v22, s35, v50
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s3, s15, 6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v19, 0x80000000, v5, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v20
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v23, s35, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v15, 0x80000000, v4, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v27, s35, v55
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s8, s8, s3
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v21
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v24, s35, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[3:6], v1, s[24:27], 0 offen
	buffer_load_b128 v[7:10], v2, s[24:27], 0 offen
	buffer_load_b128 v[11:14], v11, s[24:27], 0 offen
	buffer_load_b128 v[15:18], v15, s[24:27], 0 offen
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s8, v25
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s8, v53
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s31, v23
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v30, s8, v26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v41, v19, s[20:23], 0 offen
	v_cndmask_b32_e32 v19, 0x80000000, v27, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v29, s8, v54
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s6, s31, v24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v23, 0x80000000, v29, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s6, s2
	s_cmpk_gt_i32 s7, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v24, 0x80000000, v30, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v27, v19, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[19:22], v1, s[24:27], 0 offen
	buffer_load_b128 v[29:32], v2, s[24:27], 0 offen
	buffer_load_b128 v[33:36], v23, s[24:27], 0 offen
	buffer_load_b128 v[37:40], v24, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshrrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v1, 2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v23, 48, v2
	v_and_b32_e32 v56, 0x70, v2
	v_xor_b32_e32 v58, v1, v23
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, 0, v57
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v24, 0, v58
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v23, v[7:10] offset:4096
	s_waitcnt vmcnt(7)
	ds_store_b128 v23, v[11:14] offset:8192
	s_waitcnt vmcnt(6)
	ds_store_b128 v23, v[15:18] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b32 v24, v41 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v23, v[3:6]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v24, v27 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v23, v[19:22] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v23, v[29:32] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v23, v[33:36] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v23, v[37:40] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_b32_e32 v2, 0x70, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v45, v28, 6, v3
	v_xor_b32_e32 v46, 16, v45
	v_xor_b32_e32 v47, 32, v45
	v_xor_b32_e32 v44, 48, v45
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_cbranch_execz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v43, 0
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s29, 0, 0x8400
	s_add_i32 s30, 0, 0x4000
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr2
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
.LBB0_4:                                ; %.lr.ph
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v1, 48, v1
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s36, s7, 6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v28, 6, v1
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v46, 16, v45
	v_xor_b32_e32 v47, 32, v45
	v_xor_b32_e32 v44, 48, v45
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v27, 0
	s_add_i32 s35, s35, 64
	s_add_i32 s34, 0, 0x8000
	s_add_i32 s29, 0, 0x8400
	s_add_i32 s30, 0, 0x4000
	s_add_i32 s36, s36, -3
	s_mov_b32 s37, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.Ltmp15:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s0, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s0, s35, s0
	v_or_b32_e32 v12, s0, v51
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s1, s0, s15
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s0, v49
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s1, s1, s14
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s0, v52
	v_or_b32_e32 v10, s0, v48
	v_or_b32_e32 v11, s0, v50
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v14, s0, v55
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v17, s1, v54
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v12
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s3, s31, v9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v15, s1, v25
	v_add_nc_u32_e32 v16, s1, v53
	v_add_nc_u32_e32 v18, s1, v26
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s31, v13
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	s_mov_b32 s0, s34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v9, 0x80000000, v14, s3
	v_add_nc_u32_e32 v60, s0, v45
	v_add_nc_u32_e32 v61, s0, v46
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v21, 0x80000000, v18, s1
	s_mov_b32 s1, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v62, s0, v47
	v_add_nc_u32_e32 v63, s0, v44
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v64, s1, v56, v28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v59, v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v60
	ds_load_b128 v[80:83], v61
	ds_load_b128 v[84:87], v62
	ds_load_b128 v[88:91], v63
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v60, v64 offset:3328
	ds_load_u8 v61, v64 offset:3072
	ds_load_u8 v62, v64 offset:3840
	ds_load_u8 v63, v64 offset:3584
	ds_load_u8 v65, v64 offset:3968
	ds_load_u8 v66, v64 offset:3712
	ds_load_u8 v67, v64 offset:3456
	ds_load_u8 v68, v64 offset:3200
	ds_load_u8 v69, v64 offset:2304
	ds_load_u8 v70, v64 offset:2048
	ds_load_u8 v71, v64 offset:2816
	ds_load_u8 v72, v64 offset:2560
	ds_load_u8 v73, v64 offset:2944
	ds_load_u8 v74, v64 offset:2688
	ds_load_u8 v75, v64 offset:2432
	ds_load_u8 v92, v64 offset:2176
	ds_load_u8 v93, v64 offset:1280
	ds_load_u8 v94, v64 offset:1024
	ds_load_u8 v95, v64 offset:1792
	ds_load_u8 v96, v64 offset:1536
	ds_load_u8 v97, v64 offset:1920
	ds_load_u8 v98, v64 offset:1664
	ds_load_u8 v99, v64 offset:1408
	ds_load_u8 v100, v64 offset:1152
	ds_load_u8 v101, v64 offset:256
	ds_load_u8 v102, v64
	ds_load_u8 v103, v64 offset:768
	ds_load_u8 v104, v64 offset:512
	ds_load_u8 v105, v64 offset:896
	ds_load_u8 v106, v64 offset:640
	ds_load_u8 v107, v64 offset:384
	ds_load_u8 v108, v64 offset:128
	ds_load_u8 v109, v64 offset:7424
	ds_load_u8 v110, v64 offset:7168
	ds_load_u8 v111, v64 offset:7936
	ds_load_u8 v112, v64 offset:7680
	ds_load_u8 v113, v64 offset:8064
	ds_load_u8 v114, v64 offset:7808
	ds_load_u8 v115, v64 offset:7552
	ds_load_u8 v116, v64 offset:7296
	ds_load_u8 v117, v64 offset:6400
	ds_load_u8 v118, v64 offset:6144
	ds_load_u8 v119, v64 offset:6912
	ds_load_u8 v120, v64 offset:6656
	ds_load_u8 v121, v64 offset:7040
	ds_load_u8 v122, v64 offset:6784
	ds_load_u8 v123, v64 offset:6528
	ds_load_u8 v124, v64 offset:6272
	ds_load_u8 v125, v64 offset:5376
	ds_load_u8 v126, v64 offset:5120
	ds_load_u8 v127, v64 offset:5888
	ds_load_u8 v128, v64 offset:5632
	ds_load_u8 v129, v64 offset:6016
	ds_load_u8 v130, v64 offset:5760
	ds_load_u8 v131, v64 offset:5504
	ds_load_u8 v132, v64 offset:5248
	ds_load_u8 v133, v64 offset:4352
	ds_load_u8 v134, v64 offset:4096
	ds_load_u8 v135, v64 offset:4864
	ds_load_u8 v136, v64 offset:4608
	ds_load_u8 v137, v64 offset:4992
	ds_load_u8 v138, v64 offset:4736
	ds_load_u8 v139, v64 offset:4480
	ds_load_u8 v140, v64 offset:4224
	ds_load_u8 v141, v64 offset:11520
	ds_load_u8 v142, v64 offset:11264
	ds_load_u8 v143, v64 offset:12032
	ds_load_u8 v144, v64 offset:11776
	ds_load_u8 v145, v64 offset:12160
	ds_load_u8 v146, v64 offset:11904
	ds_load_u8 v147, v64 offset:11648
	ds_load_u8 v148, v64 offset:11392
	ds_load_u8 v149, v64 offset:10496
	ds_load_u8 v150, v64 offset:10240
	ds_load_u8 v151, v64 offset:11008
	ds_load_u8 v152, v64 offset:10752
	ds_load_u8 v153, v64 offset:11136
	ds_load_u8 v154, v64 offset:10880
	ds_load_u8 v155, v64 offset:10624
	ds_load_u8 v156, v64 offset:10368
	ds_load_u8 v157, v64 offset:9472
	ds_load_u8 v158, v64 offset:9216
	ds_load_u8 v159, v64 offset:9984
	ds_load_u8 v160, v64 offset:9728
	ds_load_u8 v161, v64 offset:10112
	ds_load_u8 v162, v64 offset:9856
	ds_load_u8 v163, v64 offset:9600
	ds_load_u8 v164, v64 offset:9344
	ds_load_u8 v165, v64 offset:8448
	ds_load_u8 v166, v64 offset:8192
	ds_load_u8 v167, v64 offset:8960
	ds_load_u8 v168, v64 offset:8704
	ds_load_u8 v169, v64 offset:9088
	ds_load_u8 v170, v64 offset:8832
	ds_load_u8 v171, v64 offset:8576
	ds_load_u8 v172, v64 offset:8320
	ds_load_u8 v173, v64 offset:15616
	ds_load_u8 v174, v64 offset:15360
	ds_load_u8 v175, v64 offset:16128
	ds_load_u8 v176, v64 offset:15872
	ds_load_u8 v177, v64 offset:16256
	ds_load_u8 v178, v64 offset:16000
	ds_load_u8 v179, v64 offset:15744
	ds_load_u8 v180, v64 offset:15488
	ds_load_u8 v181, v64 offset:14592
	ds_load_u8 v182, v64 offset:14336
	ds_load_u8 v183, v64 offset:15104
	ds_load_u8 v184, v64 offset:14848
	ds_load_u8 v185, v64 offset:15232
	ds_load_u8 v186, v64 offset:14976
	ds_load_u8 v187, v64 offset:14720
	ds_load_u8 v188, v64 offset:14464
	ds_load_u8 v189, v64 offset:13568
	ds_load_u8 v190, v64 offset:13312
	ds_load_u8 v191, v64 offset:14080
	ds_load_u8 v192, v64 offset:13824
	ds_load_u8 v193, v64 offset:14208
	ds_load_u8 v194, v64 offset:13952
	ds_load_u8 v195, v64 offset:13696
	ds_load_u8 v196, v64 offset:13440
	ds_load_u8 v197, v64 offset:12544
	ds_load_u8 v198, v64 offset:12288
	ds_load_u8 v199, v64 offset:13056
	ds_load_u8 v200, v64 offset:12800
	ds_load_u8 v201, v64 offset:13184
	ds_load_u8 v202, v64 offset:12928
	ds_load_u8 v203, v64 offset:12672
	ds_load_u8 v64, v64 offset:12416
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v61, v63, v62, 0xc0c0004
	v_perm_b32 v62, v70, v69, 0xc0c0004
	v_perm_b32 v63, v72, v71, 0xc0c0004
	v_perm_b32 v69, v94, v93, 0xc0c0004
	v_perm_b32 v72, v96, v95, 0xc0c0004
	v_perm_b32 v93, v102, v101, 0xc0c0004
	v_perm_b32 v94, v104, v103, 0xc0c0004
	v_perm_b32 v95, v110, v109, 0xc0c0004
	v_perm_b32 v96, v112, v111, 0xc0c0004
	v_perm_b32 v101, v118, v117, 0xc0c0004
	v_perm_b32 v102, v120, v119, 0xc0c0004
	v_perm_b32 v103, v126, v125, 0xc0c0004
	v_perm_b32 v104, v128, v127, 0xc0c0004
	v_perm_b32 v109, v134, v133, 0xc0c0004
	v_perm_b32 v110, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v117, v150, v149, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v66, v92, v75, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v114, v124, v123, 0xc0c0004
	v_perm_b32 v116, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v64, v203, 0xc0c0004
	v_perm_b32 v150, v202, v201, 0xc0c0004
	v_lshl_or_b32 v71, v61, 16, v60
	v_lshl_or_b32 v70, v63, 16, v62
	v_lshl_or_b32 v69, v72, 16, v69
	v_lshl_or_b32 v68, v94, 16, v93
	v_perm_b32 v111, v142, v141, 0xc0c0004
	v_perm_b32 v112, v144, v143, 0xc0c0004
	v_perm_b32 v118, v152, v151, 0xc0c0004
	v_perm_b32 v119, v158, v157, 0xc0c0004
	v_perm_b32 v120, v160, v159, 0xc0c0004
	v_perm_b32 v125, v166, v165, 0xc0c0004
	v_perm_b32 v126, v168, v167, 0xc0c0004
	v_perm_b32 v108, v108, v107, 0xc0c0004
	v_perm_b32 v143, v106, v105, 0xc0c0004
	v_lshl_or_b32 v95, v96, 16, v95
	v_lshl_or_b32 v94, v102, 16, v101
	v_lshl_or_b32 v93, v104, 16, v103
	v_lshl_or_b32 v92, v110, 16, v109
	v_lshl_or_b32 v107, v65, 16, v67
	v_lshl_or_b32 v106, v73, 16, v66
	v_lshl_or_b32 v110, v116, 16, v114
	v_lshl_or_b32 v116, v150, 16, v64
	v_wmma_i32_16x16x16_iu8 v[60:67], v[68:71], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v127, v174, v173, 0xc0c0004
	v_perm_b32 v128, v176, v175, 0xc0c0004
	v_perm_b32 v133, v182, v181, 0xc0c0004
	v_perm_b32 v134, v184, v183, 0xc0c0004
	v_perm_b32 v135, v190, v189, 0xc0c0004
	v_perm_b32 v136, v192, v191, 0xc0c0004
	v_perm_b32 v141, v198, v197, 0xc0c0004
	v_perm_b32 v142, v200, v199, 0xc0c0004
	v_perm_b32 v74, v100, v99, 0xc0c0004
	v_perm_b32 v75, v98, v97, 0xc0c0004
	v_lshl_or_b32 v99, v112, 16, v111
	v_lshl_or_b32 v98, v118, 16, v117
	v_lshl_or_b32 v97, v120, 16, v119
	v_lshl_or_b32 v96, v126, 16, v125
	v_wmma_i32_16x16x16_iu8 v[60:67], v[92:95], v[80:83], v[60:67] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v128, 16, v127
	v_lshl_or_b32 v102, v134, 16, v133
	v_lshl_or_b32 v101, v136, 16, v135
	v_lshl_or_b32 v100, v142, 16, v141
	v_wmma_i32_16x16x16_iu8 v[60:67], v[96:99], v[84:87], v[60:67] neg_lo:[1,1,0]
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v10
	v_cmp_gt_i32_e32 vcc_lo, s31, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v121, v132, v131, 0xc0c0004
	v_perm_b32 v122, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[60:67], v[100:103], v[88:91], v[60:67] neg_lo:[1,1,0]
	v_perm_b32 v123, v140, v139, 0xc0c0004
	v_perm_b32 v124, v138, v137, 0xc0c0004
	v_lshl_or_b32 v105, v75, 16, v74
	v_lshl_or_b32 v104, v143, 16, v108
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v62, v62
	v_perm_b32 v129, v148, v147, 0xc0c0004
	v_perm_b32 v130, v146, v145, 0xc0c0004
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v60
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v10, 0x80000000, v15, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v41, v41, v63
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_dual_cndmask_b32 v13, 0x80000000, v16 :: v_dual_add_f32 v42, v42, v62
	s_clause 0x3
	buffer_load_b128 v[9:12], v10, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v17, s[24:27], 0 offen
	buffer_load_b128 v[21:24], v21, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v131, v156, v155, 0xc0c0004
	v_perm_b32 v132, v154, v153, 0xc0c0004
	v_perm_b32 v137, v164, v163, 0xc0c0004
	v_perm_b32 v138, v162, v161, 0xc0c0004
	v_perm_b32 v139, v172, v171, 0xc0c0004
	v_perm_b32 v140, v170, v169, 0xc0c0004
	v_lshl_or_b32 v111, v113, 16, v115
	v_lshl_or_b32 v109, v122, 16, v121
	v_lshl_or_b32 v108, v124, 16, v123
	v_wmma_i32_16x16x16_iu8 v[68:75], v[104:107], v[76:79], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v144, v180, v179, 0xc0c0004
	v_perm_b32 v145, v178, v177, 0xc0c0004
	v_perm_b32 v146, v188, v187, 0xc0c0004
	v_perm_b32 v147, v186, v185, 0xc0c0004
	v_perm_b32 v148, v196, v195, 0xc0c0004
	v_perm_b32 v149, v194, v193, 0xc0c0004
	v_lshl_or_b32 v115, v130, 16, v129
	v_lshl_or_b32 v114, v132, 16, v131
	v_lshl_or_b32 v113, v138, 16, v137
	v_lshl_or_b32 v112, v140, 16, v139
	v_wmma_i32_16x16x16_iu8 v[68:75], v[108:111], v[80:83], v[68:75] neg_lo:[1,1,0]
	v_lshl_or_b32 v119, v145, 16, v144
	v_lshl_or_b32 v118, v147, 16, v146
	v_lshl_or_b32 v117, v149, 16, v148
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s37, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[68:75], v[112:115], v[84:87], v[68:75] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s3, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s37, s3, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v64, v64
	v_wmma_i32_16x16x16_iu8 v[68:75], v[116:119], v[88:91], v[68:75] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s37, 10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s3, s37, 14
	s_mov_b32 s4, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s1, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s30, s3, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v33, v33, v71 :: v_dual_add_nc_u32 v204, s1, v58
	v_dual_add_f32 v34, v34, v70 :: v_dual_add_nc_u32 v205, s30, v57
	v_dual_add_f32 v43, v43, v61 :: v_dual_add_f32 v40, v40, v64
	v_dual_add_f32 v39, v39, v65 :: v_dual_add_f32 v38, v38, v66
	v_dual_add_f32 v37, v37, v67 :: v_dual_add_f32 v36, v36, v68
	v_dual_add_f32 v35, v35, v69 :: v_dual_add_f32 v32, v32, v72
	v_add_f32_e32 v31, v31, v73
	v_add_f32_e32 v29, v29, v74
	v_add_f32_e32 v27, v27, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s5, 1
	s_mov_b32 s34, s29
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s29, s1, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s36
	s_mov_b32 s5, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v204, v59 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v205, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v205, v[13:16] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v205, v[17:20] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v205, v[21:24] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v56
.LBB0_7:                                ; %Flow24
	v_and_b32_e32 v1, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v2, v2, v28
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s33
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v60, s4, v2
	s_mov_b32 s4, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v60 offset:3328
	ds_load_u8 v4, v60 offset:3072
	ds_load_u8 v5, v60 offset:3840
	ds_load_u8 v6, v60 offset:3584
	ds_load_u8 v9, v60 offset:2304
	ds_load_u8 v10, v60 offset:2048
	ds_load_u8 v11, v60 offset:2816
	ds_load_u8 v12, v60 offset:2560
	ds_load_u8 v13, v60 offset:1280
	ds_load_u8 v14, v60 offset:1024
	ds_load_u8 v15, v60 offset:1792
	ds_load_u8 v16, v60 offset:1536
	ds_load_u8 v61, v60 offset:3968
	ds_load_u8 v62, v60 offset:3712
	ds_load_u8 v63, v60 offset:3456
	ds_load_u8 v64, v60 offset:3200
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v7, s34, v46
	v_add_nc_u32_e32 v8, s34, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[19:22], v7
	ds_load_b128 v[23:26], v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v16, v15, 0xc0c0004
	v_perm_b32 v3, v4, v3, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v52, s34, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v4, v6, v5, 0xc0c0004
	ds_load_u8 v5, v60 offset:256
	ds_load_u8 v6, v60
	ds_load_u8 v17, v60 offset:768
	ds_load_u8 v18, v60 offset:512
	ds_load_u8 v65, v60 offset:2944
	ds_load_u8 v66, v60 offset:2688
	ds_load_u8 v67, v60 offset:2432
	ds_load_u8 v68, v60 offset:2176
	v_lshl_or_b32 v50, v10, 16, v9
	v_lshl_or_b32 v49, v12, 16, v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v56, s34, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v51, v4, 16, v3
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v64, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v68, v67, 0xc0c0004
	v_lshl_or_b32 v48, v4, 16, v3
	v_mov_b32_e32 v3, s4
	ds_load_u8 v11, v60 offset:7424
	ds_load_u8 v12, v60 offset:7168
	ds_load_u8 v13, v60 offset:7936
	ds_load_u8 v14, v60 offset:7680
	ds_load_u8 v15, v60 offset:6400
	ds_load_u8 v16, v60 offset:6144
	ds_load_u8 v17, v60 offset:6912
	ds_load_u8 v18, v60 offset:6656
	ds_load_u8 v53, v60 offset:5376
	ds_load_u8 v54, v60 offset:5120
	ds_load_u8 v55, v60 offset:5888
	ds_load_u8 v57, v60 offset:5632
	ds_load_u8 v77, v60 offset:8064
	ds_load_u8 v78, v60 offset:7808
	ds_load_u8 v79, v60 offset:7552
	ds_load_u8 v80, v60 offset:7296
	v_dual_mov_b32 v4, s5 :: v_dual_mov_b32 v5, s6
	v_dual_mov_b32 v6, s7 :: v_dual_mov_b32 v7, s8
	v_dual_mov_b32 v8, s9 :: v_dual_mov_b32 v9, s10
	v_mov_b32_e32 v10, s11
	ds_load_u8 v69, v60 offset:1920
	ds_load_u8 v70, v60 offset:1664
	ds_load_u8 v71, v60 offset:1408
	ds_load_u8 v72, v60 offset:1152
	ds_load_u8 v73, v60 offset:896
	ds_load_u8 v74, v60 offset:640
	ds_load_u8 v75, v60 offset:384
	ds_load_u8 v76, v60 offset:128
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v85, v16, v15, 0xc0c0004
	ds_load_u8 v87, v60 offset:6016
	ds_load_u8 v88, v60 offset:5760
	ds_load_u8 v89, v60 offset:5504
	ds_load_u8 v90, v60 offset:5248
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v86, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v57, v55, 0xc0c0004
	ds_load_u8 v55, v60 offset:11520
	ds_load_u8 v57, v60 offset:11264
	ds_load_u8 v91, v60 offset:12032
	ds_load_u8 v92, v60 offset:11776
	ds_load_u8 v93, v60 offset:4992
	ds_load_u8 v94, v60 offset:4736
	ds_load_u8 v95, v60 offset:4480
	ds_load_u8 v96, v60 offset:4224
	v_perm_b32 v58, v12, v11, 0xc0c0004
	v_perm_b32 v59, v14, v13, 0xc0c0004
	ds_load_u8 v11, v60 offset:4352
	ds_load_u8 v12, v60 offset:4096
	ds_load_u8 v13, v60 offset:4864
	ds_load_u8 v14, v60 offset:4608
	ds_load_u8 v81, v60 offset:7040
	ds_load_u8 v82, v60 offset:6784
	ds_load_u8 v83, v60 offset:6528
	ds_load_u8 v84, v60 offset:6272
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v66, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v74, v73, 0xc0c0004
	v_perm_b32 v65, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v67, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v99, v57, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v60 offset:9472
	ds_load_u8 v100, v60 offset:9216
	ds_load_u8 v101, v60 offset:9984
	ds_load_u8 v102, v60 offset:9728
	ds_load_u8 v103, v60 offset:8448
	ds_load_u8 v104, v60 offset:8192
	ds_load_u8 v105, v60 offset:8960
	ds_load_u8 v106, v60 offset:8704
	ds_load_u8 v107, v60 offset:11136
	ds_load_u8 v108, v60 offset:10880
	ds_load_u8 v109, v60 offset:10624
	ds_load_u8 v110, v60 offset:10368
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v97, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v98, v14, v13, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[11:18], v[48:51], v[23:26], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v59, 16, v58
	v_lshl_or_b32 v50, v86, 16, v85
	v_lshl_or_b32 v49, v54, 16, v53
	v_lshl_or_b32 v48, v98, 16, v97
	ds_load_u8 v53, v60 offset:10496
	ds_load_u8 v54, v60 offset:10240
	ds_load_u8 v58, v60 offset:11008
	ds_load_u8 v59, v60 offset:10752
	ds_load_u8 v85, v60 offset:12160
	ds_load_u8 v86, v60 offset:11904
	ds_load_u8 v97, v60 offset:11648
	ds_load_u8 v98, v60 offset:11392
	v_wmma_i32_16x16x16_iu8 v[11:18], v[48:51], v[19:22], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v48, v100, v92, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v49, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v104, v106, v105, 0xc0c0004
	ds_load_u8 v105, v60 offset:15616
	ds_load_u8 v106, v60 offset:15360
	ds_load_u8 v113, v60 offset:16128
	ds_load_u8 v114, v60 offset:15872
	v_lshl_or_b32 v51, v91, 16, v99
	v_lshl_or_b32 v49, v49, 16, v48
	ds_load_u8 v92, v60 offset:9088
	ds_load_u8 v100, v60 offset:8832
	ds_load_u8 v101, v60 offset:8576
	ds_load_u8 v102, v60 offset:8320
	v_lshl_or_b32 v48, v104, 16, v103
	ds_load_u8 v103, v60 offset:14592
	ds_load_u8 v104, v60 offset:14336
	ds_load_u8 v115, v60 offset:15104
	ds_load_u8 v116, v60 offset:14848
	ds_load_u8 v117, v60 offset:13568
	ds_load_u8 v118, v60 offset:13312
	ds_load_u8 v119, v60 offset:14080
	ds_load_u8 v120, v60 offset:13824
	ds_load_u8 v121, v60 offset:12544
	ds_load_u8 v122, v60 offset:12288
	ds_load_u8 v123, v60 offset:13056
	ds_load_u8 v124, v60 offset:12800
	ds_load_u8 v125, v60 offset:16256
	ds_load_u8 v126, v60 offset:16000
	ds_load_u8 v127, v60 offset:15744
	ds_load_u8 v128, v60 offset:15488
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v111, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v112, v59, v58, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[52:55], v52
	ds_load_b128 v[56:59], v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_lshl_or_b32 v50, v112, 16, v111
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v116, v115, 0xc0c0004
	ds_load_u8 v91, v60 offset:10112
	ds_load_u8 v99, v60 offset:9856
	ds_load_u8 v111, v60 offset:9600
	ds_load_u8 v112, v60 offset:9344
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v115, v60 offset:14208
	ds_load_u8 v116, v60 offset:13952
	ds_load_u8 v131, v60 offset:13696
	ds_load_u8 v132, v60 offset:13440
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v118, v120, v119, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v106, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v122, v124, v123, 0xc0c0004
	ds_load_u8 v113, v60 offset:15232
	ds_load_u8 v114, v60 offset:14976
	ds_load_u8 v129, v60 offset:14720
	ds_load_u8 v130, v60 offset:14464
	ds_load_u8 v119, v60 offset:13184
	ds_load_u8 v120, v60 offset:12928
	ds_load_u8 v133, v60 offset:12672
	ds_load_u8 v60, v60 offset:12416
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu8 v[11:18], v[48:51], v[56:59], v[11:18] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v106, 16, v105
	v_lshl_or_b32 v50, v104, 16, v103
	v_lshl_or_b32 v49, v118, 16, v117
	v_lshl_or_b32 v48, v122, 16, v121
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[11:18], v[48:51], v[52:55], v[11:18] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v61, 16, v63
	v_lshl_or_b32 v50, v64, 16, v62
	v_lshl_or_b32 v49, v66, 16, v65
	v_lshl_or_b32 v48, v68, 16, v67
	v_cvt_f32_i32_e32 v12, v12
	v_perm_b32 v61, v80, v79, 0xc0c0004
	v_perm_b32 v62, v78, v77, 0xc0c0004
	v_perm_b32 v63, v84, v83, 0xc0c0004
	v_perm_b32 v64, v82, v81, 0xc0c0004
	v_perm_b32 v65, v90, v89, 0xc0c0004
	v_perm_b32 v66, v88, v87, 0xc0c0004
	v_perm_b32 v67, v96, v95, 0xc0c0004
	v_perm_b32 v68, v94, v93, 0xc0c0004
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v41, v41, v13
	v_add_f32_e32 v39, v39, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[3:10], v[48:51], v[23:26], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v26, v62, 16, v61
	v_lshl_or_b32 v25, v64, 16, v63
	v_lshl_or_b32 v24, v66, 16, v65
	v_lshl_or_b32 v23, v68, 16, v67
	v_perm_b32 v48, v98, v97, 0xc0c0004
	v_perm_b32 v49, v86, v85, 0xc0c0004
	v_perm_b32 v50, v110, v109, 0xc0c0004
	v_perm_b32 v51, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v61, v112, v111, 0xc0c0004
	v_perm_b32 v62, v99, v91, 0xc0c0004
	v_perm_b32 v63, v102, v101, 0xc0c0004
	v_perm_b32 v64, v100, v92, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[3:10], v[23:26], v[19:22], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v49, 16, v48
	v_lshl_or_b32 v21, v51, 16, v50
	v_lshl_or_b32 v20, v62, 16, v61
	v_lshl_or_b32 v19, v64, 16, v63
	v_perm_b32 v23, v128, v127, 0xc0c0004
	v_perm_b32 v24, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v130, v129, 0xc0c0004
	v_perm_b32 v26, v114, v113, 0xc0c0004
	v_perm_b32 v48, v132, v131, 0xc0c0004
	v_perm_b32 v49, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v60, v133, 0xc0c0004
	v_perm_b32 v51, v120, v119, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[3:10], v[19:22], v[56:59], v[3:10] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v24, 16, v23
	v_lshl_or_b32 v21, v26, 16, v25
	v_lshl_or_b32 v20, v49, 16, v48
	v_lshl_or_b32 v19, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[3:10], v[19:22], v[52:55], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v42, v42, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v36, v36, v3 :: v_dual_add_f32 v35, v35, v4
	v_add_f32_e32 v33, v33, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v5, v9
	v_cvt_f32_i32_e32 v6, v10
	v_cvt_f32_i32_e32 v7, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v40, v40, v14 :: v_dual_add_f32 v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v38, v38, v16 :: v_dual_add_f32 v29, v29, v5
	v_dual_add_f32 v32, v32, v3 :: v_dual_add_f32 v27, v27, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v31, v31, v4 :: v_dual_add_f32 v30, v30, v7
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v73, s29, v44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s30, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v4, s29, v46
	v_add_nc_u32_e32 v5, s29, v45
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v2 offset:3328
	ds_load_u8 v7, v2 offset:3072
	ds_load_u8 v8, v2 offset:3840
	ds_load_u8 v9, v2 offset:3584
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[19:22], v4
	ds_load_b128 v[23:26], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v4, v2 offset:2304
	ds_load_u8 v5, v2 offset:2048
	ds_load_u8 v10, v2 offset:2816
	ds_load_u8 v11, v2 offset:2560
	ds_load_u8 v12, v2 offset:1280
	ds_load_u8 v13, v2 offset:1024
	ds_load_u8 v14, v2 offset:1792
	ds_load_u8 v15, v2 offset:1536
	ds_load_u8 v16, v2 offset:256
	ds_load_u8 v17, v2
	ds_load_u8 v18, v2 offset:768
	ds_load_u8 v45, v2 offset:512
	ds_load_u8 v57, v2 offset:3968
	ds_load_u8 v58, v2 offset:3712
	ds_load_u8 v59, v2 offset:3456
	ds_load_u8 v60, v2 offset:3200
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s29, v47
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v11, v10, 0xc0c0004
	v_lshl_or_b32 v48, v7, 16, v6
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v8, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v15, v14, 0xc0c0004
	v_lshl_or_b32 v47, v5, 16, v4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v45, v18, 0xc0c0004
	v_lshl_or_b32 v46, v9, 16, v8
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_lshl_or_b32 v45, v11, 16, v10
	v_dual_mov_b32 v18, s11 :: v_dual_mov_b32 v17, s10
	ds_load_u8 v53, v2 offset:7424
	ds_load_u8 v54, v2 offset:7168
	ds_load_u8 v55, v2 offset:7936
	ds_load_u8 v56, v2 offset:7680
	v_dual_mov_b32 v16, s9 :: v_dual_mov_b32 v15, s8
	v_dual_mov_b32 v14, s7 :: v_dual_mov_b32 v13, s6
	v_dual_mov_b32 v12, s5 :: v_dual_mov_b32 v11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[49:52], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v61, v2 offset:2944
	ds_load_u8 v62, v2 offset:2688
	ds_load_u8 v63, v2 offset:2432
	ds_load_u8 v64, v2 offset:2176
	ds_load_u8 v65, v2 offset:1920
	ds_load_u8 v66, v2 offset:1664
	ds_load_u8 v67, v2 offset:1408
	ds_load_u8 v68, v2 offset:1152
	ds_load_u8 v69, v2 offset:896
	ds_load_u8 v70, v2 offset:640
	ds_load_u8 v71, v2 offset:384
	ds_load_u8 v72, v2 offset:128
	v_wmma_i32_16x16x16_iu8 v[3:10], v[45:48], v[23:26], v[11:18] neg_lo:[1,1,0]
	ds_load_u8 v44, v2 offset:6400
	ds_load_u8 v45, v2 offset:6144
	ds_load_u8 v46, v2 offset:6912
	ds_load_u8 v47, v2 offset:6656
	ds_load_u8 v48, v2 offset:5376
	ds_load_u8 v74, v2 offset:5120
	ds_load_u8 v75, v2 offset:5888
	ds_load_u8 v76, v2 offset:5632
	ds_load_u8 v77, v2 offset:8064
	ds_load_u8 v78, v2 offset:7808
	ds_load_u8 v79, v2 offset:7552
	ds_load_u8 v80, v2 offset:7296
	ds_load_u8 v87, v2 offset:6016
	ds_load_u8 v88, v2 offset:5760
	ds_load_u8 v89, v2 offset:5504
	ds_load_u8 v90, v2 offset:5248
	ds_load_u8 v107, v2 offset:10112
	ds_load_u8 v108, v2 offset:9856
	ds_load_u8 v109, v2 offset:9600
	ds_load_u8 v110, v2 offset:9344
	ds_load_u8 v124, v2 offset:14208
	ds_load_u8 v125, v2 offset:13952
	ds_load_u8 v126, v2 offset:13696
	ds_load_u8 v127, v2 offset:13440
	v_lshl_or_b32 v60, v57, 16, v59
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v2 offset:4352
	ds_load_u8 v81, v2 offset:4096
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v2 offset:4864
	ds_load_u8 v82, v2 offset:4608
	ds_load_u8 v83, v2 offset:7040
	ds_load_u8 v84, v2 offset:6784
	ds_load_u8 v85, v2 offset:6528
	ds_load_u8 v86, v2 offset:6272
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v45, v47, v46, 0xc0c0004
	v_lshl_or_b32 v47, v55, 16, v53
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v48, v74, v48, 0xc0c0004
	v_perm_b32 v58, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	v_lshl_or_b32 v46, v45, 16, v44
	ds_load_u8 v75, v2 offset:4992
	ds_load_u8 v76, v2 offset:4736
	ds_load_u8 v91, v2 offset:4480
	ds_load_u8 v92, v2 offset:4224
	v_perm_b32 v61, v62, v61, 0xc0c0004
	v_perm_b32 v62, v68, v67, 0xc0c0004
	v_lshl_or_b32 v45, v74, 16, v48
	v_perm_b32 v63, v66, v65, 0xc0c0004
	v_perm_b32 v64, v72, v71, 0xc0c0004
	v_perm_b32 v65, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v82, v56, 0xc0c0004
	ds_load_u8 v82, v2 offset:12032
	ds_load_u8 v94, v2 offset:11776
	v_perm_b32 v54, v81, v54, 0xc0c0004
	ds_load_u8 v81, v2 offset:11520
	ds_load_u8 v93, v2 offset:11264
	v_lshl_or_b32 v59, v61, 16, v58
	v_lshl_or_b32 v58, v63, 16, v62
	v_lshl_or_b32 v57, v65, 16, v64
	v_lshl_or_b32 v44, v56, 16, v54
	ds_load_u8 v48, v2 offset:10496
	ds_load_u8 v53, v2 offset:10240
	ds_load_u8 v54, v2 offset:11008
	ds_load_u8 v55, v2 offset:10752
	ds_load_u8 v56, v2 offset:9472
	ds_load_u8 v74, v2 offset:9216
	ds_load_u8 v95, v2 offset:9984
	ds_load_u8 v96, v2 offset:9728
	ds_load_u8 v97, v2 offset:12160
	ds_load_u8 v98, v2 offset:11904
	ds_load_u8 v99, v2 offset:11648
	ds_load_u8 v100, v2 offset:11392
	v_perm_b32 v61, v80, v79, 0xc0c0004
	v_perm_b32 v62, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v63, v86, v85, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[3:10], v[44:47], v[19:22], v[3:10] neg_lo:[1,1,0]
	v_perm_b32 v64, v84, v83, 0xc0c0004
	v_perm_b32 v65, v90, v89, 0xc0c0004
	v_perm_b32 v66, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v92, v91, 0xc0c0004
	v_perm_b32 v68, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v53, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[11:18], v[57:60], v[23:26], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v55, v54, 0xc0c0004
	v_perm_b32 v82, v94, v82, 0xc0c0004
	ds_load_u8 v94, v2 offset:8960
	ds_load_u8 v102, v2 offset:8704
	ds_load_u8 v103, v2 offset:11136
	ds_load_u8 v104, v2 offset:10880
	ds_load_u8 v105, v2 offset:10624
	ds_load_u8 v106, v2 offset:10368
	v_perm_b32 v81, v93, v81, 0xc0c0004
	ds_load_u8 v93, v2 offset:8448
	ds_load_u8 v101, v2 offset:8192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v54, v74, v56, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v55, v96, v95, 0xc0c0004
	v_lshl_or_b32 v46, v53, 16, v48
	v_lshl_or_b32 v47, v82, 16, v81
	ds_load_u8 v74, v2 offset:9088
	ds_load_u8 v95, v2 offset:8832
	ds_load_u8 v96, v2 offset:8576
	ds_load_u8 v111, v2 offset:8320
	v_lshl_or_b32 v26, v62, 16, v61
	v_lshl_or_b32 v45, v55, 16, v54
	v_lshl_or_b32 v25, v64, 16, v63
	v_lshl_or_b32 v24, v66, 16, v65
	v_lshl_or_b32 v23, v68, 16, v67
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v57, v100, v99, 0xc0c0004
	v_perm_b32 v58, v98, v97, 0xc0c0004
	v_perm_b32 v61, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v94, v102, v94, 0xc0c0004
	v_perm_b32 v62, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v104, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[11:18], v[23:26], v[19:22], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v59, v106, v105, 0xc0c0004
	v_lshl_or_b32 v22, v58, 16, v57
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v56, v101, v93, 0xc0c0004
	ds_load_u8 v93, v2 offset:15616
	ds_load_u8 v101, v2 offset:15360
	ds_load_u8 v112, v2 offset:16128
	ds_load_u8 v113, v2 offset:15872
	v_lshl_or_b32 v20, v62, 16, v61
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v64, v95, v74, 0xc0c0004
	v_lshl_or_b32 v21, v60, 16, v59
	v_lshl_or_b32 v44, v94, 16, v56
	ds_load_u8 v48, v2 offset:14592
	ds_load_u8 v53, v2 offset:14336
	ds_load_u8 v54, v2 offset:15104
	ds_load_u8 v55, v2 offset:14848
	ds_load_u8 v56, v2 offset:13568
	ds_load_u8 v81, v2 offset:13312
	ds_load_u8 v82, v2 offset:14080
	ds_load_u8 v94, v2 offset:13824
	ds_load_u8 v102, v2 offset:16256
	ds_load_u8 v114, v2 offset:16000
	ds_load_u8 v115, v2 offset:15744
	ds_load_u8 v116, v2 offset:15488
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v111, v96, 0xc0c0004
	v_perm_b32 v57, v127, v126, 0xc0c0004
	v_perm_b32 v58, v125, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[3:10], v[44:47], v[49:52], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v19, v64, 16, v63
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v53, v48, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[11:18], v[19:22], v[49:52], v[11:18] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v123, v55, v54, 0xc0c0004
	v_perm_b32 v93, v101, v93, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v81, v56, 0xc0c0004
	v_perm_b32 v101, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v82, v94, v82, 0xc0c0004
	ds_load_u8 v112, v2 offset:12544
	ds_load_u8 v113, v2 offset:12288
	ds_load_u8 v117, v2 offset:13056
	ds_load_u8 v118, v2 offset:12800
	ds_load_u8 v119, v2 offset:15232
	ds_load_u8 v120, v2 offset:14976
	ds_load_u8 v121, v2 offset:14720
	ds_load_u8 v122, v2 offset:14464
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[53:56], v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v123, 16, v48
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v23, v116, v115, 0xc0c0004
	v_lshl_or_b32 v45, v82, 16, v81
	ds_load_u8 v48, v2 offset:13184
	ds_load_u8 v73, v2 offset:12928
	ds_load_u8 v81, v2 offset:12672
	ds_load_u8 v2, v2 offset:12416
	v_perm_b32 v24, v114, v102, 0xc0c0004
	v_lshl_or_b32 v47, v101, 16, v93
	v_lshl_or_b32 v20, v58, 16, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v22, v24, 16, v23
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v44, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v82, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v26, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v25, v122, v121, 0xc0c0004
	v_lshl_or_b32 v44, v82, 16, v44
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v73, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v81, 0xc0c0004
	v_lshl_or_b32 v21, v26, 16, v25
	v_wmma_i32_16x16x16_iu8 v[3:10], v[44:47], v[53:56], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v19, v48, 16, v2
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[11:18], v[19:22], v[53:56], v[11:18] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
.LBB0_11:
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v2, s28, v28
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or_b32_e32 v19, s14, v0
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v30, v3 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v43, v4 :: v_dual_lshlrev_b32 v19, 1, v19
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	buffer_load_u16 v20, v2, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v42, v5 :: v_dual_add_f32 v6, v41, v6
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	buffer_load_u16 v2, v19, s[4:7], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v44, 0x5410 :: v_dual_lshlrev_b32 v21, 1, v0
	v_dual_mov_b32 v45, 0x7632 :: v_dual_lshlrev_b32 v22, 5, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v19, 1, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_lshl_add_u32 v23, v1, 2, 0
	v_lshl_add_u32 v24, v1, 1, 0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v25, s15, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v4, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v28, 16, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v6, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v7, v40, v7 :: v_dual_add_f32 v8, v39, v8
	v_dual_add_f32 v9, v38, v9 :: v_dual_add_f32 v10, v37, v10
	v_dual_add_f32 v11, v36, v11 :: v_dual_add_f32 v12, v35, v12
	v_dual_add_f32 v13, v34, v13 :: v_dual_add_f32 v14, v33, v14
	v_dual_add_f32 v15, v32, v15 :: v_dual_add_f32 v16, v31, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v3, s2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v10, s2
	v_cndmask_b32_e64 v36, v36, v11, s2
	v_cndmask_b32_e64 v34, v34, v13, s2
	v_cndmask_b32_e64 v33, v33, v14, s2
	v_cndmask_b32_e64 v32, v32, v15, s2
	v_cndmask_b32_e64 v42, v42, v5, s2
	v_cndmask_b32_e64 v40, v40, v7, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v17, v29, v17 :: v_dual_add_f32 v18, v27, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v31, v16, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.h, 0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s28, s28, s15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v29, v17, s2
	v_cndmask_b32_e64 v18, v27, v18, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v25, s28, s14, v25
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.h, v26.h
	v_mov_b16_e32 v31.h, v26.h
	v_mov_b16_e32 v29.h, v26.h
	v_mov_b16_e32 v46.h, v26.h
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v19, v25, v19, 1
	s_mov_b32 s0, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 378 14 is_stmt 1              ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_and_b32_e32 v0, 28, v21
	v_and_b32_e32 v1, 32, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v39, v8, s2
	v_cndmask_b32_e64 v22, v38, v9, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v26.h
	v_mov_b16_e32 v38.h, v26.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_add3_u32 v0, v23, v1, v0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v35, v12, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v26.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v24
	ds_load_b128 v[4:7], v24 offset:16
	ds_load_b128 v[8:11], v24 offset:512
	ds_load_b128 v[12:15], v24 offset:528
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.h, v26.h
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v3, v3, v20
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v3, v41, v3 :: v_dual_mul_f32 v14, v14, v20
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v11, v11, v20
	v_mul_f32_e32 v1, v1, v20
	v_mul_f32_e32 v0, v0, v20
	v_mul_f32_e32 v2, v2, v20
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v14, v17, v14
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v10, v10, v20 :: v_dual_mul_f32 v11, v33, v11
	v_mul_f32_e32 v7, v7, v20
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v1, v43, v1 :: v_dual_mul_f32 v0, v30, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v10, v34, v10
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v6, v6, v20 :: v_dual_mul_f32 v7, v37, v7
	v_dual_mul_f32 v5, v5, v20 :: v_dual_mul_f32 v2, v42, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v9, v9, v20 :: v_dual_mul_f32 v6, v22, v6
	v_dual_mul_f32 v4, v4, v20 :: v_dual_mul_f32 v5, v21, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v8, v8, v20 :: v_dual_mul_f32 v9, v23, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v4, v40, v4 :: v_dual_max_f32 v3, 0, v3
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v0, 0, v0
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v15, v15, v20 :: v_dual_max_f32 v10, 0, v10
	v_mul_f32_e32 v12, v12, v20
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v11, 0, v11
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v13, v13, v20 :: v_dual_max_f32 v6, 0, v6
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v8, v36, v8 :: v_dual_max_f32 v5, 0, v5
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v0, v0, v0
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v3, v3, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v26.l, v1.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v15, v18, v15 :: v_dual_mul_f32 v12, v32, v12
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v4, v4, v4
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v13, v16, v13 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v5, v5, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v0.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v28
	v_and_b32_e32 v16, 1, v26
	v_mov_b16_e32 v26.l, v3.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v4.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v17, 1, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v1, v16, 0x7fff
	v_and_b32_e32 v16, 1, v26
	v_mov_b16_e32 v26.l, v5.h
	v_and_b32_e32 v20, 1, v31
	v_add3_u32 v0, v0, v17, 0x7fff
	v_mov_b16_e32 v29.l, v2.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v13, 0, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v17, 1, v26
	v_add3_u32 v4, v4, v20, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_add3_u32 v0, v3, v16, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v5, v17, 0x7fff
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v18, 1, v29
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v11, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.l, v6.h
	v_mov_b16_e32 v26.l, v7.h
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_add3_u32 v2, v2, v18, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v15, 0, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v8.h
	v_and_b32_e32 v21, 1, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v0.l, v2.h
	v_and_b32_e32 v2, 1, v26
	v_mov_b16_e32 v26.l, v9.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v12, v12 :: v_dual_mul_f32 v15, v15, v15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v22, 1, v24
	v_add3_u32 v6, v6, v21, 0x7fff
	v_and_b32_e32 v4, 1, v26
	v_mov_b16_e32 v26.l, v11.h
	v_mov_b16_e32 v39.l, v12.h
	v_add3_u32 v2, v7, v2, 0x7fff
	v_mov_b16_e32 v38.l, v10.h
	v_add3_u32 v8, v8, v22, 0x7fff
	v_mov_b16_e32 v2.l, v6.h
	v_cndmask_b32_e32 v3, 0x1054, v44, vcc_lo
	v_dual_cndmask_b32 v6, 0x3276, v45 :: v_dual_and_b32 v7, 1, v26
	v_mov_b16_e32 v26.l, v13.h
	v_and_b32_e32 v24, 1, v39
	v_add3_u32 v4, v9, v4, 0x7fff
	v_and_b32_e32 v23, 1, v38
	v_mov_b16_e32 v4.l, v8.h
	v_cndmask_b32_e32 v8, v2, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v2, vcc_lo
	v_lshl_or_b32 v2, v3, 8, v3
	v_lshl_or_b32 v3, v6, 8, v6
	v_add3_u32 v6, v11, v7, 0x7fff
	v_and_b32_e32 v7, 1, v26
	v_mov_b16_e32 v46.l, v14.h
	v_add3_u32 v12, v12, v24, 0x7fff
	v_mov_b16_e32 v26.l, v15.h
	v_add3_u32 v10, v10, v23, 0x7fff
	v_add3_u32 v7, v13, v7, 0x7fff
	v_permlanex16_b32 v9, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v7.l, v12.h
	v_and_b32_e32 v25, 1, v46
	v_and_b32_e32 v0, 0x540054, v2
	v_and_b32_e32 v2, 0x760076, v3
	v_and_b32_e32 v3, 1, v26
	v_mov_b16_e32 v6.l, v10.h
	v_cndmask_b32_e32 v10, v7, v4, vcc_lo
	v_add3_u32 v14, v14, v25, 0x7fff
	v_lshl_or_b32 v2, v2, 4, v2
	v_add3_u32 v3, v15, v3, 0x7fff
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b32_e32 v4, v4, v7, vcc_lo
	v_mov_b16_e32 v3.l, v14.h
	v_and_b32_e32 v11, 0x7060706, v2
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v12, v3, v6 :: v_dual_and_b32 v7, 0x5040504, v0
	v_cndmask_b32_e32 v2, v6, v3, vcc_lo
	v_permlanex16_b32 v6, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v5, v7
	v_perm_b32 v1, v1, v5, v11
	v_perm_b32 v3, v9, v8, v11
	v_permlanex16_b32 v13, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v9, v8, v7
	v_perm_b32 v4, v6, v10, v7
	v_perm_b32 v5, v6, v10, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v6, v13, v12, v7
	v_perm_b32 v7, v13, v12, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v19, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v19, s[12:15], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 206
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10648
; TotalNumSgprs: 40
; NumVgprs: 206
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 40
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm16_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     206
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
